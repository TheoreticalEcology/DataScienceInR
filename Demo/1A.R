1+1
2*5
# This is a comment

# Functions:
sqrt(9)
sin(5)

# help / documentation
?sqrt

sqrt(9)
?sin
?mean

# Assigning data:
x = 5
y <- 6
x+y
x*y

head(iris)
# Statistical analysis/data:
# Numerical variables: Age, Body weight, Temperature
# Categorical variables: Unorderded (Species, Names), Ordered variables (small, medium, large)

# In R, we have atomic data types:
# Numerical variables
numeric = 5
# Categorical variables:
name = "Max"
name_factor = as.factor(name)
name_factor
# Logcial:
true = TRUE
false = FALSE
true
# Not a number:
NA # NaN

# Data Structures
# Vector
vector = c(5, 4, 6, 7)
vector = c(5, 4, "A")

vector_with_missing_data = c(5, 4, 3, NA)
vector_with_missing_data

# Matrix
data = c(25, 46, 24, 36)
## 2x2
matrix(data, nrow = 2, ncol = 2)
## 4x1
matrix(data, nrow = 4, ncol = 1)

## 2x2
matrix(c(25, 46, 24, "Max"), nrow = 2, ncol = 2)

## Data.frame
df = data.frame(first_column = c(2, 3, 4, 5), 
                second_column = c("A", "B", "C", "D"))
str(df)


####### Data manipulation ########
vector = 1:5 
print(vector)
vector[2]
vector[1]
vector[5]

## Data.frame

df = data.frame(first_column = c(2, 3, 4, 5), 
                second_column = c("A", "B", "C", "D"))
df[1,1] # [first row, first coumn]
df[2,1]
df[ ,1]
df[ ,2]
df[2, ]

df[c(1, 2),c(1,2)] # df[c(1, 2), ]
df[1:2, 1:2]

df$first_column # name_of_df$name_column

df = data.frame(
  x = c(2,2,2,3,2,2,1), #add column named x with 2 elements
  y = c(4,5,5,4,5,3,5) #add a second column named y
)
head(df)
df[ df$x > 2, ]

df[ df$y == 5, ] 

# show data where (y equals 5) or (x equals 3)
df[ df$y == 5 | df$x  == 3, ] 
# show data where (y equals 5) AND (x equals 3)
df[ df$y == 5 & df$x  == 3, ] 


##### Analysis workflow ####
# 1. Load data
group1 = c(2,2,2,3,2,2,1.1) # Treatment
group2 = c(4,5,5,4,5,3,5.1) # Control 
group1
group2

# 2. Descriptive statisticts
mean(group1)
mean(group2)
boxplot(group1, group2)

# 3. Testing for difference
t.test(group1, group2)








