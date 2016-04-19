

your data comes from **Network anatomy and in vivo physiology of visual cortical neurons** by Bock et. al. (2011)
http://www.nature.com/nature/journal/v471/n7337/full/nature09802.html

that means you can look at it here:
http://viz.neurodata.io/bock11/

unmasked: i believe "masked" regions are regions that were  "masked" by some computer vision mask that hides things that we know should **not** be neurons.

you can check if you know the units and look via the viz



#### What is unmasked?!

When this data was acquired, a way to differentiate between boundary regions and those missing data from good-quality regions of data was by applying a mask to the data which should be ignored. This mask was very coarse, and everything covered by the mask can be assumed to be garbage (i.e. we didn't incorrectly mask meaningful data). The `unmasked` value in the spreadsheet indicates the number of voxels in that row which are not considered background. In other words, the higher the unmasked value, the more of that region was considered in the foreground.


#### How big are the blocks (i.e. rows) of data?

The truth is, we don't know. There are two likely options: `64x64x12` voxels, or `64^3` voxels. The reason for the former option is that the image would then be isotropic in real space (since the image itself is anisotropic). If you would like to use this value, I would suggest operating under the assumption that the region size is `64x64x12` voxels, and update your hypothesis to `64^3` voxels if values exceed the maximum.
