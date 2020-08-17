# RandomRTips
Miscellaneous REPREX and Helper files for R Users 


## Contains: 

[ARIMA Model Simulation & REPREX](https://github.com/CR-Mercado/RandomRTips/blob/master/Returning_Customer_Rate_ARIMA_REPREX.md) 

Someone on LinkedIn messaged me about a problem they were having with estimating the return customer rate for a retail client of theirs, especially given the data was non-stationary (i.e. mean and variance changes). They were really worried about accuracy and were saying that they couldn't get their root mean squared error (RMSE) down to their desired 0.01 level. I told them that the underlying true phenomenon might have randomness that exceeds that amount and that they should look at estimating their model's accuracy in the context of performance on data it hasn't seen. Of course, with COVID-19 there may also be a structural shift that their model would not correctly expect (i.e. the data before COVID-19 may have low relevance today.)

This code is an sampling of what RMSE is and how time series modeling should work. It does not get into structural shifts nor high-accuracy time series estimates, e.g. Recurrent Neural Networks. It's just focused on ARIMA, and RMSE. Note: It does not deal with non-stationarity directly, but the lessons should still be usable there too. On the small 100 week sample, it may look non-stationary, but the fundamental data generation process is stationary (you can check this by changing n to a larger number, e.g. 100,000+)

[My R profile](https://github.com/CR-Mercado/RandomRTips/blob/master/Carlos_R_Profile.R)
you can use the usethis:: package to access edit_r_profile() and alter your own R Profile. R Profiles run everytime you open R and they are 
really useful if you have specific *developer* packages or custom functions you want always available. You should **never** put analysis packages here, 
such as dplyr or ggplot2, because it reduces reproducibility (not everyone is going to have your R profile, so you should ensure every script you write 
calls its own dependencies). 

Very rarely, I'll have a weird bug and comment out my entire R Profile just to test it. So far, no bugs have been solved by temporarily removing my 
R profile, so it should be relatively safe in general. I'll post a REPREX of some of the packages later. 
