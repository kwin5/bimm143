Class05
================
Xiaomei
Thu Nov 1 11:49:28 2018

``` r
#read.file("bimm143_05_rstats/")
weight <-read.table("bimm143_05_rstats/weight_chart.txt",header = TRUE)

plot(weight,type = "b")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-1.png)

``` r
# Make a custom plot
plot( weight,type="b",pch=15,col="blue",main="Baby weight over time",xlab="Age(months")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-2.png)

``` r
   # 1B Barplot 
counts <-read.table("bimm143_05_rstats/feature_counts.txt",header=TRUE,sep="\t")
#plot()



barplot(counts$Count, names.arg =counts$Feature,horiz=TRUE,las=1)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-3.png)

``` r
barplot(counts$Count,  names.arg =counts$Feature,horiz=TRUE,main="Number of features in the mouse GRCm38 genome")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-4.png)

``` r
# 1C His
hist(x <- c(rnorm(10000),rnorm(10000)+4))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-5.png)

``` r
hist(x, breaks=80)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-6.png)

``` r
hist(x <- c(rnorm(10000),rnorm(10000)+4))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-7.png)

``` r
#plotcharacter
plot( 1:5, pch=1:5, cex=1:5 )
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-8.png)

``` r
plot( 1:10, pch=1:5, cex=1:5,col=c("red","blue"))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-9.png)

``` r
#section 3

#read.file("bimm143_05_rstats/")
#male  <-read.table("bimm143_05_rstats/male_female_counts.txt",header = TRUE)

#plot(male,type = "b")
#counts <-read.table("bimm143_05_rstats/feature_counts.txt",header=TRUE,sep="\t")
#plot()

mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(mf$Count, names.arg = mf$Sample,las=2,col = rainbow(nrow(mf)))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-10.png)

``` r
barplot(mf$Count, names.arg=mf$Sample, col= c("red","blue"))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-11.png)

``` r
# 3B color by value
        
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")

#how many genes are in this data ?
nrow(genes)
```

    ## [1] 5196

``` r
#How may are up and down and all round?
table(genes$State )
```

    ## 
    ##       down unchanging         up 
    ##         72       4997        127

``` r
#plot this data 
plot(genes$Condition1, genes$Condition2, col=genes$State )
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-12.png)

``` r
#what are the default colors
palette()
```

    ## [1] "black"   "red"     "green3"  "blue"    "cyan"    "magenta" "yellow" 
    ## [8] "gray"

``` r
#changing the color to be useful color 
palette(c("red","green","blue")) 
plot(genes$Condition1, genes$Condition2, col=genes$State)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-13.png)

``` r
#3C dynamic use of color 
#color by point density 

meth  <-read.delim("bimm143_05_rstats/expression_methylation.txt",header= TRUE)


nrow(meth)
```

    ## [1] 9241

``` r
#first plot 
plot(meth$gene.meth, meth$expression)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-14.png)

``` r
##better but still not very useful
mycols  <-densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col=mycols)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-15.png)

``` r
##let's focus the data we interest
inds   <- meth$expression > 0
mycols2  <-densCols(meth$gene.meth[inds], meth$expression[inds])

plot(meth$gene.meth[inds], meth$expression[inds],col=mycols2)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-16.png)

``` r
## section 4
#4A understand someone elses codes 

#read.deli("bimm143_05_rstats/ex")
#meth  <-read.table(bimm143_05_rstats/weight_chart.txt",header = TRUE,sep "\
```
