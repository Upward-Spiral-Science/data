"
https://www.dropbox.com/sh/u3vahw6i2blv9e3/AADROO2wHZWun1pUCeH_6e7ba?dl=0

here's a dropbox link to the folder with the relevant file.  I hadn't sent it before because its poorly documented and I wanted to rework out what the columns of the large file were.  This folder also has some analysis i did with a circular kohonen network on the same feature set.  The features are basically the summed fluorescence of lots of different markers around a synapsin 1 local maximum, but there was also some other metric as well but i'm forgetting what it was.. and I need to parse out the order of the columns from my matlab code.

lets find a time and we can chat about it.

best,
Forrest"

"Here is the raw data this came from
https://www.dropbox.com/sh/zijowsqbaojr37x/AACYiMFXrqTKdxifd37c9Aiya?dl=0

i believe the columns are in the order of these channels in this order, and then repeated again for the second metric.. which was something like the sum of the intensity times the distance from the center of synapsin I think."

channel <- c('Synap','Synap','VGlut1','VGlut1','VGlut2','Vglut3',
              'psd','glur2','nmdar1','nr2b','gad','VGAT',
              'PV','Gephyr','GABAR1','GABABR','CR1','5HT1A',
              'NOS','TH','VACht','Synapo','tubuli','DAPI')
channel.type <- c('ex.pre','ex.pre','ex.pre','ex.pre','ex.pre','in.pre.small',
                  'ex.post','ex.post','ex.post','ex.post','in.pre','in.pre',
                  'in.pre','in.post','in.post','in.post','in.pre.small','other',
                  'ex.post','other','other','ex.post','none','none')
nchannel <- length(channel)
nfeat <- ncol(feat) / nchannel
fchannel <- as.numeric(as.factor(channel.type))
ccol <- rainbow(max(fchannel))[fchannel]

# The corresponds to 24 channels x 6 features per synapse, ordered like
# c0f0,c0f1,c0f2,c0f3,c0f4,c0f5,c1f0,c1f1... etc
#
#f0 = integrated brightness
#f1 = local brightness
#f2 = distance to Center of Mass
#f3 = moment of inertia around synapsin maxima
#f4,f5 are features that I forget what they are.. would need to ask brad. 
#i would throw them out, I did so in my kohonen code (which you have, its in matlab).
