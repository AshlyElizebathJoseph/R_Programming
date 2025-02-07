authors = data.frame(name=c("Kapil","Sachin","Rahul","Nikhil","Rohan"),
                     nationality = c("US","US","US","UK","India"),
                     retired = c("Yes","No","Yes","No","No"))
books = data.frame(name = c("C","C++","Java","php",".net","R"),
                   title = c("Intro to C","Intro to C++","Intro to Java","Intro to php","Intro to .net","Intro to R"),
                   authors = c("Kapil","Kapil","Sachin","Rahul","Nikhil","Nikhil"))
merge(authors,books,by.x="name",by.y="authors")
