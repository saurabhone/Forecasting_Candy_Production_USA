#### Naive Forecast
naive_fore<-naive(candy_ts,5)
#### Plot Naive Forecast
plot(naive_fore)

#### Residual Analysis
res_analysis<-residuals(naive_fore)
#### Plot Residual Analysis
plot(res_analysis)
#### Plot Histogram of Residual Analysis
hist_res_analysis<-hist(res_analysis,breaks = 10,main = "Histogram Plot of Residuals")

#### Plot of Fitted values vs Residuals
fitted_nf<-naive_fore$fitted
residual_nf<-naive_fore$residuals
plot(residual_nf~fitted_nf)
plot(residual_nf~fitted_nf,col=c("red","blue"))

#### Plot of Actual values vs Residuals
actual_nf<-naive_fore$x
plot(residual_nf~actual_nf)
plot(residual_nf~actual_nf,col=c("red","green"))

#### Acf of Residuals
Acf(res_analysis)

#### Accuracy of Naive Forecast
accuracy(naive_fore)

naive_fore<-naive(candy_ts,12)
#### Forecast for the Next Year
fore<-forecast(naive_fore)
#### Plot Forecast for the next year
plot(fore)
fore
remove(naive_fore)