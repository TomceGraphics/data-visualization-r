

reviews<-read.csv("data/reviews.csv")
solutions<-read.csv("data/solutions.csv")

# # merge data
# merged_data<-merge(reviews,solutions,all=TRUE)
# head(merged_data)


# #editing text variables

# tolower(cameras$name) #to lower case
# toupper(cameras$name) #to upper case

# # fixing character vectors
# names(cameras)
# print(tolower(names(cameras))) #to lower case
# print(toupper(names(cameras))) #to upper case

cameras<-read.csv("data/cameras.csv")

# splitNames<-strsplit(names(cameras),"\\.")
# names(splitNames)
# sapply(splitNames,function(x) x[2])

# sub() and gsub()

# sub("\\.","-",names(cameras))
# cat("\n")
# gsub("\\.","-",names(cameras))

# grep() and grepl()
# sub("_","", testName)
# gsub("_","", testName)

table(grepl("Alameda",cameras$intersection))

cameraData2 <- 
