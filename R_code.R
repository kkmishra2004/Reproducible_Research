MyData <- read.csv(file="_e143dff6e844c7af8da2a4e71d7c054d_payments.csv",sep=",")
head(MyData)
library(ggplot2)
g <- ggplot(MyData,aes(x=Average.Total.Payments,y=Average.Covered.Charges))+geom_point()+stat_smooth()
g
g2 <- ggplot(MyData, aes(x=Average.Total.Payments,y=Average.Covered.Charges, group=Provider.State))+geom_point()+stat_smooth(aes(colour=Provider.State,fill=Provider.State))
g2
g3 <- ggplot(MyData, aes(x=Average.Total.Payments,y=Average.Covered.Charges, group=DRG.Definition))+geom_point()+stat_smooth(aes(colour=DRG.Definition,fill=DRG.Definition))
g3+theme(legend.position="bottom")
g4 <- ggplot(MyData, aes(x=Average.Total.Payments,y=Average.Covered.Charges, group=DRG.Definition))+geom_point()+stat_smooth(aes(colour=DRG.Definition,fill=DRG.Definition))+facet_grid(. ~ Provider.State)
g4+theme(legend.position="bottom") + theme(axis.text.x = element_text(angle = 90, hjust = 1))
 
