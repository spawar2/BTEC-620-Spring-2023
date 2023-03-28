install.packages("ape")
install.packages("phangorn")  
install.packages("phytools")
install.packages("geiger")

# Author: Pawar, Date: Oct 26, 2022, Purpose: To generate a phylogenetic tree

# Load the tree packages

library(ape);
library(phangorn);
library(phytools);
library(geiger)

# Read and write csv file
setwd("/Users/pawar/Desktop")

# To read only the csv files
data <- read.csv("Book1.csv", header=FALSE)

# To read only text files formats rtf or txt

data <- read.delim("Book1.rtf", header=FALSE)

# Write the data in a csv file

list <- c(1,2,3,4,5,6)

write.csv(list, "new_file.csv")

write.table(list, "new_file.txt")

# Generate some dummy tree data

text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

# read tree using read.tree function

vert.tree<-read.tree(text=text.string)

plot(vert.tree,no.margin=TRUE,edge.width=2,
main="This is phylogenetic plot")

roundPhylogram(vert.tree)

# Generate a unrooted tree plot 

plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial", edge.width=2)

# Print edges and nodes in your tree

str(vert.tree)

# Write the tree in a text file

write.tree(vert.tree,file="example.txt")

# Reading the exported data

Data <- read.table("example.txt", header = FALSE, sep = "", dec = ".")
