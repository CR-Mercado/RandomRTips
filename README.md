# RandomRTips
Miscellaneous REPREX and Helper files for R Users 


## Contains: 

My R profile - you can use the usethis:: package to access edit_r_profile() and alter your own R Profile. R Profiles run everytime you open R and they are 
really useful if you have specific *developer* packages or custom functions you want always available. You should **never** put analysis packages here, 
such as dplyr or ggplot2, because it reduces reproducibility (not everyone is going to have your R profile, so you should ensure every script you write 
calls its own dependencies). 

Very rarely, I'll have a weird bug and comment out my entire R Profile just to test it. So far, no bugs have been solved by temporarily removing my 
R profile, so it should be relatively safe in general. I'll post a REPREX of some of the packages later. 
