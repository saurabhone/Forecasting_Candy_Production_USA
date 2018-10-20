#### Simple Smoothing Forecast for Next 12 months
sim_smooth<-ses(candy_ts,h=12)
sim_smooth

#### Residual Analysis for Simple Smoothing
ses_res_analysis<-residuals(sim_smooth,h=12)
#### Plot for Residual Analysis for Simple Smoothing
plot(ses_res_analysis)
#### Histogram Plot of Residuals
hist_ses_res_analysis<-hist(ses_res_analysis)

#### Fitted Values vs Residuals
fit_sim_smooth<-sim_smooth$fitted
#### Plot Fitted Values vs Residuals
plot(fit_sim_smooth,ses_res_analysis,col=c("red","green"))

actual_sim_smooth
#### Actual Values vs Residuals
actual_sim_smooth<-sim_smooth$x
#### Plot Fitted Values vs Residuals
plot(actual_sim_smooth,ses_res_analysis,col=c("blue","green"))


#### ACF of the Residuals
Acf(ses_res_analysis)

#### Accuracy of Forecasting
accuracy(sim_smooth)

#### Forecast for the next year
forecast(sim_smooth,h=12)
#### Plot Forecast for the next year
plot(forecast(sim_smooth,h=12))