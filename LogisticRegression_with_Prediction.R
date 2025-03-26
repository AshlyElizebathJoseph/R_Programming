library(dplyr)
summary(mtcars)
library(caTools)
split= sample.split(mtcars, SplitRatio = 0.8)
train_reg=subset(mtcars, split=="TRUE")
test_reg=subset(mtcars, split =="FALSE")
logistic_model=glm(am~wt, data=train_reg, family="binomial")
logistic_model
summary(logistic_model)
predict_reg=predict(logistic_model,test_reg, type = "response")
predict_reg
table(test_reg$am, predict_reg>0.5)
