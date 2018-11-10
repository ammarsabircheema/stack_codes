library(GSA)
data <-  GSA.read.gmt("c5.all.v6.2.symbols.gmt")
len_vec=c()           # Now create a vector for containing the length of genes at each position
len_vec[1] = 3
for(i in 1:length(data$genesets)){len_vec[i] <- c(length(data$genesets[[i]]))}
pathway_vec <- unlist(Vectorize(rep.int)(data$geneset.names, len_vec),use.names = FALSE) # Now create a vector for all the pathways in the data 
desired_df <- as.data.frame(cbind(pathway_vec,unlist(data$genesets,use.names = FALSE))) # This gives your desired dataframe
head(desired_df)
#                                    Pathway      Gene
#1 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION POLR2C
#2 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION POLR2J
#3 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION  CTDP1
#4 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION   RDBP
#5 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION COBRA1
#6 GO_POSITIVE_REGULATION_OF_VIRAL_TRANSCRIPTION   RSF1
