plot1<-function(){
        setwd("E:/R-3.0.3/R workplace dic")
        data<-read.table("household_power_consumption.txt",sep=";",header=FALSE,na.strings="?",nrows=2881,skip=66637)
        ##class(data$Global_active_power)
        subDataX<-data[,3]
        png("plot1.png")
        hist(subDataX,col="red",ylab="minutes",xlab="Global Active Power(kilowatts)",bg="transparent",main="Global Active Power")
        dev.off()
}