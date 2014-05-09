plot4<-function(){
        setwd("E:/R-3.0.3/R workplace dic")
        data<-read.table("household_power_consumption.txt",colClasses="character",sep=";",header=FALSE,na.strings="?",nrows=2881,skip=66637)
        ##class(data$Global_active_power)
        subDataX<-strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')
        subDataY1<-as.numeric(data[,3])
        subDataY2<-as.numeric(data[,5])
        subDataY3_1<-as.numeric(data[,7])
        subDataY3_2<-as.numeric(data[,8])
        subDataY3_3<-as.numeric(data[,9])
        subDataY4<-as.numeric(data[,4])
        
        png("plot4.png")
        par(mfrow=c(2,2),mar=c(5,6,3,2))
        plot(subDataX,subDataY1,type="l",xlab="",ylab="Global Active Power")
        
        plot(subDataX,subDataY2,type="l",xlab="datetime",ylab="Valtage")
        
        plot(subDataX,subDataY3_1,type="l",xlab="",ylab="Energy sub metering")
        lines(subDataX,subDataY3_2,col="red")
        lines(subDataX,subDataY3_3,col="blue")
        legend("topright",lty=1,lwd=1,cex=0.8,bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        
        plot(subDataX,subDataY4,cex.axis=0.9,type="l",xlab="datetime",ylab="Global_reactive_power")
        
        ##dev.copy(png,file="plot4.png")
        dev.off()
}