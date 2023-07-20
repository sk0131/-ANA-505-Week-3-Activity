#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
getwd()
setwd("C:/Users/Siva/Downloads")

#This brings the 'Titanic' data into my environment from Base R (Run this)
Siva_Krishna_Kandula_Titanic <- read.csv("C:/Users/Siva/Downloads/Titanic.csv")
head(Siva_Krishna_Kandula_Titanic)


#This code saves the Titanic data as a dataframe with a new name
#TASK: Save the Titanic data as a dataframe with a new name that includes your first name
#for example I would name my data AnnaTitanic
Siva_Titanic <- Titanic
Siva_Titanic

#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the code that returns the top rows
top_2_rows <- head(Siva_Titanic, n = 2)
print(top_2_rows)

#This code chunk shows me the internal structure 
#Task: Write the code that shows the number of rows, columns, column names, class of columns   
str(Siva_Titanic)

nrow(Siva_Titanic)
ncol(Siva_Titanic)
sapply(Siva_Titanic, class)

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the code that gives summary stats
summary(Siva_Titanic)

'''
min(Siva_Krishna_Kandula_Titanic)
max(Siva_Krishna_Kandula_Titanic)
mean(Siva_Krishna_Kandula_Titanic, na.rm = TRUE)
quantile(Siva_Krishna_Kandula_Titanic, 0.25, na.rm = TRUE)
quantile(Siva_Krishna_Kandula_Titanic, 0.75, na.rm = TRUE)
'''

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the code to create an object for just the Sex column 
#and write the code to create an object for just the Age column 
#(these should show as values in the environment window, not as 'datasets'Data')
sex_column <- Siva_Titanic$Sex
age_column <- Siva_Titanic$Age

str(sex_column)
str(age_column)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#Once I do this, I can see the Data in the Environment 
#Task: Write the code to create one new data.frame from the Sex and Age values you just created
# Create a new data frame from 'sex_column' and 'age_column'
new_data <- data.frame(Sex = sex_column, Age = age_column)
head(new_data, 10)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the code to create a subset of the data where the Freq is > 25
#If I wanted to save the subset, I would need to name it as done in the code above
subset_data <- subset(Siva_Titanic, Age > 25)
head(subset_data, 10)

#This shows me how many rows are in my dataset and
#TASK: Write the code that returns the number of rows
num_rows <- nrow(Siva_Titanic)
num_rows

#This shows me how many columns are in my dataset
#TASK: Write the code that returns the number of columns
num_col <- ncol(Siva_Titanic)
num_col

#This also shows me how many rows and columns with just one command
#TASK: Write the code that returns the number of rows and columns with just one command
dimensions <- dim(Siva_Titanic)
dimensions

#This code will install the ggplot2 package
#TASK: Write the code that installs the ggplot2 package
install.packages('ggplot2')

#This code calls the ggplot2 package so I can use its functions
#Task: Write the code that 'calls' the ggplot2 package
library(ggplot2)

#This code creates a bar chart of the number of passengers that survived 
#and did not survive (2 bars)
#Task: replace the dataframe name and column names to create the chart
#(you should see the chart in the Plots window)
ggplot(data = Siva_Titanic, aes(x = Survived)) +
  geom_bar(fill = c("blue", "red")) +
  labs(title = "Number of Passengers with Survived vs Not Survived",
       x = "Survived",
       y = "Number of Passengers")
