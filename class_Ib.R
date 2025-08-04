# Lets choose the .csv file and read it 
data_set = read.csv(file.choose())
View(data_set)

# Convert the essential columns that have two options like:gender, diagnosis, 
# and smoker from categorical values to numeric using ifelse() function.
# Then, change them to factors since they have there own fixed categories
data_set$Gender_Type = ifelse(data_set$gender=="Female",1,0)
data_set$Gender_category = as.factor(data_set$Gender_Type)
data_set$Diagnosis = ifelse(data_set$diagnosis=="Cancer",1,0)
data_set$Diagnosis_status = as.factor(data_set$Diagnosis)
data_set$Smoking = ifelse(data_set$smoker=="Yes",1,0)
data_set$Smoking_status = as.factor(data_set$Smoking)

# Deleting the first columns
data_set$gender = NULL
data_set$diagnosis = NULL
data_set$smoker = NULL
View(data_set)

write.csv(data_set,file = "result/patient_info_clean.csv")
save.image(file = "KassemRammal_Class_Ib.RData")
# I try several ways, I make mistakes but I learn.
# Objective and WHY??
# Why I need to convert to numeric values? Since it is more memory efficient, 
# easier to perform data analysis, visualize data, and build a machine learning
# models based on these data.