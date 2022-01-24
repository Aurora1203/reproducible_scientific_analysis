# treat your data as read only
# practices: doc, data (raw, meta-data), results (generated)

# Good Enough Practices for Scientific Computing gives the following recommendations for project organization:
# Put each project in its own directory, which is named after the project.
# Put text documents associated with the project in the doc directory.
# Put raw data and metadata in the data directory, and files generated during cleanup and analysis in a results directory.
# Put source for the project’s scripts and programs in the src directory, and programs brought in from elsewhere or compiled locally in the bin directory.
# Name all files to reflect their content or function.

cats <- data.frame(coat = c('calico', 'black', 'tabby'),
                   weight = c(2.1, 5, 3.2),
                   likes_string = c(1, 0, 1))
cats
write.csv(x = cats, file = "data/feline-data.csv",row.names = F)
View(cats)

cats1 <- read.csv(file = "data/feline-data.csv", stringsAsFactors = F) # change strings as factors
cats1
cats2 <- read.csv(file = "data/feline-data.csv", stringsAsFactors = T)
cats2
# cats 2 is what we wnat to use for adding as factors for using paste function
cats$weight

paste("my cat name is", cats1$coat)
paste("my cat name is", cats2$coat)
paste("my cat name is", cats1$coat, sep = ",")
paste("my cat name is", cats1$coat, sep = '|')
paste("my cat name is", cats1$coat, collapse = ",") ## collapse is the same string
paste("my cat name is", cats1$coat, collapse = "||")

typeof(cats1$coat)# not as factor, so character is character
typeof(cats2$coat) # as factor, so character is integer

file.show("data/feline-data.csv") #直接EXCEL 打开,CSV的指令

file.show("data/gapminder_data.csv")
