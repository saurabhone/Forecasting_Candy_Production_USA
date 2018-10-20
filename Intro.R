#### Import Data
library(readr)
IPG3113N_Spring18<-read_csv("/Users/saurabhkarambalkar/Desktop/Candy/IPG3113N_Spring18.csv")
#### Convert into Time Series
candy_ts<-ts(IPG3113N_Spring18$IPG3113N,frequency = 12,start = c(2003,1))
#### Plot Time Series
plot(candy_ts)

#### Central Tendency
## min, max, mean, median, 1 st and 3 rd Quartile values
summary(candy_ts)

##boxplot
boxplot(candy_ts)

#### Decompose Candy Time Series
decomp<-decompose(candy_ts)

#### Plot Decomposition
plot(decomp)

## is the time series seasonal?
Acf(candy_ts)

#### Seasonal Adjusted & Overlay with Actual Time Series
seas_adj<-seasadj(decomp)
plot(candy_ts)
lines(seas_adj,col='red')
