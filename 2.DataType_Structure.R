######################################  BASICS R - Statistical computing ################################
library(datasets)

########  SUMMARY
head(iris)

summary(iris$Species)       #Suma la cantidad de cada una de las especies

summary(iris$Sepal.Length)
                            #   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
                            #  4.300   5.100   5.800   5.843   6.400   7.900 

summary(iris)              #Data frame entero


#######  DESCRIBE - solo para variables cuantitativas
library(psych)

#Devuelve: vars   n mean   sd median trimmed  mad min max range skew kurtosis   se

describe(iris$Sepal.Length)  

describe(iris)

######  DATA TYPE - STRUCTURE

#Numeric
n1<- 5
n2<- c(1.5,2.5,3.45,8.985)

typeof(n1)   #"double"
typeof(n2)
is.vector(n2) #TRUE

#Character
n3<- c("c","d","h","m")
n4<- "Hello world"

typeof(n3) #"character"
typeof(n4)

#Logical
n5<- c(TRUE,FALSE,FALSE,TRUE)
n6<- F

typeof(n5) #"logical"
typeof(n6)
is.vector(n5) #TRUE

#Combine vectors of the same length
df<- as.data.frame(cbind(n2,n3,n5))
df
#      n2 n3    n5
# 1   1.5  c  TRUE
# 2   2.5  d FALSE
# 3  3.45  h FALSE
# 4 8.985  m  TRUE

df2<- cbind(n2,n3,n5)
df2
#         n2      n3  n5     
#    [1,] "1.5"   "c" "TRUE" 
#    [2,] "2.5"   "d" "FALSE"
#    [3,] "3.45"  "h" "FALSE"
#    [4,] "8.985" "m" "TRUE" 



######  MATRIX
m1<- matrix(n5, nrow=2)   
m1
# Devuelve                               [,1]  [,2]
#                                  [1,]  TRUE FALSE
#                                  [2,] FALSE  TRUE

#######  ARRAYS   
a1<- array(c(1:24), c(4,6,1))  #(rows, columns, tables)
a1
#Devuelve
#, , 1
#
#     [,1] [,2] [,3] [,4] [,5] [,6]
#[1,]    1    5    9   13   17   21
#[2,]    2    6   10   14   18   22
#[3,]    3    7   11   15   19   23
#[4,]    4    8   12   16   20   24


######  LISTS
list1<- list(n)
list1
# [[1]]
# [1] 15 14 13

list2<- list(n5)
list2
#[[1]]
# [1]  TRUE FALSE FALSE  TRUE

list3<- list(list1, list2, n3)
list3
# [[1]]
# [[1]][[1]]
# [1] 15 14 13
#
#
# [[2]]
# [[2]][[1]]
# [1]  TRUE FALSE FALSE  TRUE
#
#
# [[3]]
# [1] "c" "d" "h" "m"

