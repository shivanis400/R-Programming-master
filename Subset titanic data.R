titanic_train=read.csv(file.choose(),sep=',',header=T)
#View(titanic_train)
titanic_test=read.csv(file.choose(),sep=',',header=T)
titanic_gender=read.csv(file.choose(),sep=',',header=T)
titanic_data=cbind(Titanic_test,Survived=titanic_gender$Survived)
titanic_data=rbind(titanic_train,titanic_data)
dim(titanic_data)
is.na(titanic_data)
(titanic_data_na=titanic_data[!complete.cases(titanic_data), ]) #exclude $ and save only na values.
is.na(titanic_data)
nrow(titanic_data_na)
nrow(titanic_data)
titanic_data=na.omit(titanic_data)
View(titanic_data)