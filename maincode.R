library(dplyr)
library(readxl)
library(lubridate)

path <- "C:/Users/Hassaan/Dropbox/_Classes/RLearning/HackPVTA/UMass Hackathon/"
filexl <- read_excel(paste0(path,"January","2015.xlsx"))
mon <- c("January","February","March","April","May","June","July","August","September","October","November","December")
compfile <- NULL

for (i in 1:length(mon)){
  file <- read.csv(paste0(path,mon[i],"2015.csv"),header = F)
  colnames(file) <- colnames(filexl)
  compfile <- rbind(compfile,file)
}

save(compfile, file=paste0(path,"AllBusData.RData"))


