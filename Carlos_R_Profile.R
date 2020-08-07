# This is my R Profile, I use usethis to access the R profile 
# devtools lets me install specific versions of packages (it has many other great uses too) 
# cowsay is just for fun, so that I get a nice message everytime I restart R. 
# profvis lets me profile code (memory de/allocation and millisecond speed tests). 


library(usethis)
library(devtools)
library(cowsay)
library(profvis)

detachAllPackages <- function() {
  # Taken from github to detach add on packages, e.g. ggplot2, dplyr
  # so that you can mimic a "refresh" of the session.

  basic.packages <- c("package:stats","package:graphics",
                      "package:grDevices","package:utils",
                      "package:datasets","package:methods","package:base")

  package.list <- search()[ifelse(unlist(gregexpr("package:",
                                                  search()))==1,TRUE,FALSE)]

  package.list <- setdiff(package.list,basic.packages)

  if (length(package.list)>0)  for (package in package.list) {
    detach(package, character.only=TRUE)
  }

}

refreshR <- function(){
  #' clear environment except for
  #' profile functions (works in the global environment)
  #' detach all packages
  #' reload the helper packages that R profile starts with

  profile_functions <- c("detachAllPackages","refreshR")

  items <- ls(envir = parent.env(environment()))
  items <- items[ -which(items %in% profile_functions) ]

  suppressWarnings(expr = {
    rm(list = items,
       envir = parent.env(environment()))
    detachAllPackages()
    library(usethis)
    library(devtools)
    library(cowsay)
    library(profvis)
  }
  )
}

# My nice little message when I restart my R session. 

if (interactive()) {
  .First <- function() {
    cowsay::say("You are smart. You are blessed. You can do anything!",
                by = "smallcat",
                by_color = "blue")
  }
}

# This might actually not be best practice, but I find that copy/pasting 
# certain text from other sources (web browser, word doc, etc.) sometimes 
# gets the wrong fancyQuotes encoding, so I just change my options. 
# It shouldn't impact code reproducibility but feel free to change this. 

options(useFancyQuotes = FALSE)
