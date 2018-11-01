#' ---
#' title: "Class05"
#' output: github_document
#' ---

#read.file("bimm143_05_rstats/")
weight <-read.table("bimm143_05_rstats/weight_chart.txt",header = TRUE)

plot(weight,type = "b")
# Make a custom plot
plot( weight,type="b",pch=15,col="blue",main="Baby weight over time",xlab="Age(months")
     
     
  
        
   # 1B Barplot 
counts <-read.table("bimm143_05_rstats/feature_counts.txt",header=TRUE,sep="\t")
#plot()



barplot(counts$Count, names.arg =counts$Feature,horiz=TRUE,las=1)
barplot(counts$Count,  names.arg =counts$Feature,horiz=TRUE,main="Number of features in the mouse GRCm38 genome")


# 1C His
hist(x <- c(rnorm(10000),rnorm(10000)+4))
hist(x, breaks=80)
hist(x <- c(rnorm(10000),rnorm(10000)+4))

#plotcharacter
plot( 1:5, pch=1:5, cex=1:5 )

plot( 1:10, pch=1:5, cex=1:5,col=c("red","blue"))

#section 3

#read.file("bimm143_05_rstats/")
#male  <-read.table("bimm143_05_rstats/male_female_counts.txt",header = TRUE)

#plot(male,type = "b")
#counts <-read.table("bimm143_05_rstats/feature_counts.txt",header=TRUE,sep="\t")
#plot()

mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(mf$Count, names.arg = mf$Sample,las=2,col = rainbow(nrow(mf)))

barplot(mf$Count, names.arg=mf$Sample, col= c("red","blue"))

# 3B color by value
        
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")

#how many genes are in this data ?
nrow(genes)

#How may are up and down and all round?
table(genes$State )

#plot this data 
plot(genes$Condition1, genes$Condition2, col=genes$State )


#what are the default colors
palette()

#changing the color to be useful color 
palette(c("red","green","blue")) 
plot(genes$Condition1, genes$Condition2, col=genes$State)

#3C dynamic use of color 
#color by point density 

meth  <-read.delim("bimm143_05_rstats/expression_methylation.txt",header= TRUE)


nrow(meth)

#first plot 
plot(meth$gene.meth, meth$expression)

##better but still not very useful
mycols  <-densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col=mycols)


##let's focus the data we interest
inds   <- meth$expression > 0
mycols2  <-densCols(meth$gene.meth[inds], meth$expression[inds])

plot(meth$gene.meth[inds], meth$expression[inds],col=mycols2)


## section 4
#4A understand someone elses codes 

#read.deli("bimm143_05_rstats/ex")
#meth  <-read.table(bimm143_05_rstats/weight_chart.txt",header = TRUE,sep "\



