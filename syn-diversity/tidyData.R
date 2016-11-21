###
### This script takes the data set and creates tidy dataset 
### in RData and csv formats.
###
### Jesse Leigh Patsolic <jpatsol1@jhu.edu>
### 2016
### S.D.G 


require(data.table)

feat <- fread("synapsinR_7thA.tif.Pivots.txt.2011Features.txt",
                  showProgress=FALSE)
loc <- fread("synapsinR_7thA.tif.Pivots.txt",showProgress=FALSE)

## Setting the channel names
channel <- c('Synap1','Synap2','VGlut1t1','VGlut1t2','VGlut2','Vglut3',
              'psd','glur2','nmdar1','nr2b','gad','VGAT',
              'PV','Gephyr','GABAR1','GABABR','CR1','5HT1A',
              'NOS','TH','VACht','Synapo','tubuli','DAPI')

## Setting the channel types
channel.type <- c('ex.pre','ex.pre','ex.pre','ex.pre','ex.pre','in.pre.small',
                  'ex.post','ex.post','ex.post','ex.post','in.pre','in.pre',
                  'in.pre','in.post','in.post','in.post','in.pre.small','other',
                  'ex.post','other','other','ex.post','none','none')

nchannel <- length(channel)
nfeat <- ncol(feat) / nchannel

## Createing factor variables for channel and channel type sorted properly
ffchannel <- (factor(channel.type,
    levels= c("ex.pre","ex.post","in.pre","in.post","in.pre.small","other","none"), ordered = TRUE
    ))
fchannel <- as.numeric(factor(channel.type,
    levels= c("ex.pre","ex.post","in.pre","in.post","in.pre.small","other","none")
    ))
ford <- order(fchannel)



exType <- factor(c(rep("ex",11),rep("in",6),rep("other",7)),ordered=TRUE)
exCol<-exType;levels(exCol) <- c("#197300","#990000","mediumblue");
exCol <- as.character(exCol)

fname <- as.vector(sapply(channel,function(x) paste0(x,paste0("_F",0:5))))
names(feat) <- fname
fcol <- rep(ccol, each=6)

f <- lapply(1:6,function(x){seq(x,ncol(feat),by=nfeat)[ford]})
featF <- lapply(f,function(x){subset(feat,select=x)})

data01 <- data.table(Reduce(cbind, featF))

at <- data.table(names = names(data01), 
                      feature = factor(paste0('F',rep(0:5,each=nchannel)), ordered = TRUE),
                      marker = factor(channel[ford], levels = channel[ford],ordered = TRUE) , 
                      type0 = exType, 
                      type1 = ffchannel[ford], 
                      keep.rownames = TRUE) 
setkey(attribs, names, feature, marker)

attributes(data01)$attr <- at

system.time(
  write.csv(data01, file = "cleanData.csv")
  write.csv(t(at), file = "dataAttributes.csv")
  )

system.time(
  save(data01, file = "cleanDataWithAttributes.RData")
  )

#   Time: 
##  Working status:
### Comments:
####Soli Deo Gloria
