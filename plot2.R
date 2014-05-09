plot2<-function(){
        setwd("E:/R-3.0.3/R workplace dic")
        data<-read.table("household_power_consumption.txt",colClasses="character",sep=";",header=FALSE,na.strings="?",nrows=2881,skip=66637)
        ##class(data$Global_active_power)
        subDataX<-strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')
        subDataY<-data[,3]
        png("plot2.png")
        plot(subDataX,subDataY,type="l",xlab="",ylab="Global Active Power(kilowatts)")
        dev.off()
}