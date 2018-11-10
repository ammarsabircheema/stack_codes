# The code is as follows:
library("scatterplot3d")
colors <- c("#999999", "#E69F00", "#56B4E9") # Number of color according to the number of groups
colors <- colors[as.numeric(data.c1$colend)] # you can put here the column containing the name of population or sample etc.
pca1 <- prcomp(data.c1[, -5]) # PCA on columns except the last column
s3d<-scatterplot3d(pca1$x[, 1], pca1$x[, 2],pca1$x[, 3],grid=TRUE,xlab="PC1",ylab="PC2", zlab="PC3", pch = 16,color=colors)
legend("right",legend = levels(data.c1$colend),col =  c("#999999", "#E69F00", "#56B4E9"), pch = 16,inset=-0.04,bty="n")
text(s3d$xyz.convert(pca1$x[, 1:3]), labels = rownames(data.c1),cex= 0.7, col = "black",pos=2.5)
