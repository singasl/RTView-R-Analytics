# Set the working directory
setwd("C:/Users/m/Desktop/SL/GitHub/Repositories/RTView-R-Analytics/")

# Read RTView cache data
hosts <- read.delim("http://192.168.200.105:8068/bwmon_rtvquery/cache/HostStats/current?fmt=text")
dim(hosts)

#List column names from HostStats
names(hosts)