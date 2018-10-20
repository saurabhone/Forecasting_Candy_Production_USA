#### Moving Averages

#### Ploting the graph for Time Series
ma<-ma(candy_ts,order = 12)
lines(ma, col='Red', lwd=4)


#### Ploting the graph for Simple Moving Average of Order 3
ma3<-ma(candy_ts,order = 3)
lines(ma3, col='Red', lwd=4)

#### Ploting the graph for Simple Moving Average of Order 9
ma9<-ma(candy_ts,order = 9)
lines(ma9, col='Red', lwd=4)

#### Ploting the graph for Simple Moving Average of Order 12
ma12<-ma(candy_ts,order = 12)
lines(ma12, col='Red', lwd=4)


#### Forecasting for next one year which gives optimum order
simple_forecast <- forecast(ma3, h = 12)
plot(simple_forecast)