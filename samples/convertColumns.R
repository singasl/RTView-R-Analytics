# Set your working directory
setwd("C:/Users/m/Desktop/SL/GitHub/Repositories/RTView-R-Analytics/")

# Read data from BWMon dataserver
hosts <- read.delim("http://192.168.200.105/bwmon_rtvquery/cache/HostStats/current?fmt=text")
dim(hosts)
names(hosts)
hosts[,23] = as.numeric(as.character(hosts[,23]))
hostlist <- split(hosts[,c(3,4,23)],hosts$OS_Name)
hostlist$Linux

sapply(hostlist,function(x) mean(x[,3]))

tapply(hosts$OS_Name,hosts$OS_Name,length)
attach(hosts)
tapply(OS_Name,OS_Name,length)