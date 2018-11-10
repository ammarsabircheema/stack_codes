# The data used is given below:
```
"Col1" "Col2" "Col3" "Col4" "colend"
"H1" 5.1 3.5 1.4 0.2 "HSC"
"H2" 4.9 3 1.4 0.2 "HSC"
"H3" 4.7 3.2 1.3 0.2 "HSC"
"H4" 4.6 3.1 1.5 0.2 "HSC"
"H5" 5 3.6 1.4 0.2 "HSC"
"H6" 5.4 3.9 1.7 0.4 "HSC"
"H7" 4.6 3.4 1.4 0.3 "HSC"
"H8" 5 3.4 1.5 0.2 "HSC"
"H9" 4.4 2.9 1.4 0.2 "HSC"
"H10" 4.9 3.1 1.5 0.1 "HSC"
"H11" 5.4 3.7 1.5 0.2 "HSC"
"H12" 4.8 3.4 1.6 0.2 "HSC"
"H13" 4.8 3 1.4 0.1 "HSC"
"H14" 4.3 3 1.1 0.1 "HSC"
"H15" 5.8 4 1.2 0.2 "HSC"
"B1" 5.7 4.4 1.5 0.4 "blast"
"B2" 5.4 3.9 1.3 0.4 "blast"
"B3" 5.1 3.5 1.4 0.3 "blast"
"B4" 5.7 3.8 1.7 0.3 "blast"
"B5" 5.1 3.8 1.5 0.3 "blast"
"B6" 5.4 3.4 1.7 0.2 "blast"
"B7" 5.1 3.7 1.5 0.4 "blast"
"B8" 4.6 3.6 1 0.2 "blast"
"B9" 5.1 3.3 1.7 0.5 "blast"
"B10" 4.8 3.4 1.9 0.2 "blast"
"B11" 5 3 1.6 0.2 "blast"
"B12" 5 3.4 1.6 0.4 "blast"
"B13" 5.2 3.5 1.5 0.2 "blast"
"B14" 5.2 3.4 1.4 0.2 "blast"
"B15" 4.7 3.2 1.6 0.2 "blast"
"B16" 4.8 3.1 1.6 0.2 "blast"
"B17" 5.4 3.4 1.5 0.4 "blast"
"B18" 5.2 4.1 1.5 0.1 "blast"
"B19" 5.5 4.2 1.4 0.2 "blast"
"B20" 4.9 3.1 1.5 0.2 "blast"
"L1" 5 3.2 1.2 0.2 "LSC"
"L2" 5.5 3.5 1.3 0.2 "LSC"
"L3" 4.9 3.6 1.4 0.1 "LSC"
"L4" 4.4 3 1.3 0.2 "LSC"
"L5" 5.1 3.4 1.5 0.2 "LSC"
"L6" 5 3.5 1.3 0.3 "LSC"
"L7" 4.5 2.3 1.3 0.3 "LSC"
"L8" 4.4 3.2 1.3 0.2 "LSC"
"L9" 5 3.5 1.6 0.6 "LSC"
"L10" 5.1 3.8 1.9 0.4 "LSC"
"L11" 4.8 3 1.4 0.3 "LSC"
"L12" 5.1 3.8 1.6 0.2 "LSC"
"L13" 4.6 3.2 1.4 0.2 "LSC"
"L14" 5.3 3.7 1.5 0.2 "LSC"
"L15" 5 3.3 1.4 0.2 "LSC"
```

# The code is as follows:
library("scatterplot3d")
colors <- c("#999999", "#E69F00", "#56B4E9") # Number of color according to the number of groups
colors <- colors[as.numeric(data.c1$colend)] # you can put here the column containing the name of population or sample etc.
pca1 <- prcomp(data.c1[, -5]) # PCA on columns except the last column
s3d<-scatterplot3d(pca1$x[, 1], pca1$x[, 2],pca1$x[, 3],grid=TRUE,xlab="PC1",ylab="PC2", zlab="PC3", pch = 16,color=colors)
legend("right",legend = levels(data.c1$colend),col =  c("#999999", "#E69F00", "#56B4E9"), pch = 16,inset=-0.04,bty="n")
text(s3d$xyz.convert(pca1$x[, 1:3]), labels = rownames(data.c1),cex= 0.7, col = "black",pos=2.5)
