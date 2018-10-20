#### Read the fle
candy<-IPG3113N_Spring18$IPG3113N

#### Convert into time Series
candy_ts<-ts(candy,frequency = 12,start = c(2003,1))
candy_ts

#### Plot Time Series
plot.ts(candy_ts,xlab="Time",ylab="Sales")

#### Holt Winters
hw<-hw(candy_ts, h = 12)
hw
summary(hw)

#### Plot HoltWinters
plot(hw)

#### Residuals
res_hw<-residuals(hw)
#### Plot HoltWinters
plot(res_hw)

#### Plot Histogram HoltWinters
hist(res_hw)


#### Fitted HoltWinters
fitted_hw<-hw$fitted
#### Plot Fitted Holt vs Residual
plot(fitted_hw,res_hw,col=c("red","blue"))

#### Actual HoltWinters
actual_hw<-hw$x
#### Plot Fitted Holt vs Residual
plot(actual_hw,res_hw,col=c("green","blue"))

#### Plot ACF of Residuals
Acf(res_hw)

#### Five Measures of Accuracy
accuracy(hw)

#### Forecast Candy Sales
fore_hw<-forecast(candy_ts,h=12)
fore_hw

#### Plot Forecast
plot(fore_hw)

#### Forecast Candy Sales for Next 2 Years(h=24)
fore2_hw<-forecast(candy_ts,h=24)
fore2_hw