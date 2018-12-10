library(dplyr)
library(ggplot2)
library(rpart)
library(arules)
library(rpart.plot)

misclassify <- function(actual_labels, predict_labels) {
  conf.matrix <- table(actual_labels, predict_labels)
  rownames(conf.matrix) <- paste("Actual", rownames(conf.matrix), sep = ":")
  colnames(conf.matrix) <- paste("Pred", colnames(conf.matrix), sep = ":")
  numcorrect <- sum(actual_labels == predict_labels)
  numincorrect <- length(actual_labels) - numcorrect
  MCrate <- numincorrect/length(actual_labels)
  return(list(conf.matrix=conf.matrix, misclassification.rate=MCrate))
}


classification_df <- read.csv("Aeon_Training_Data_with_validation_USE_THIS_FOR_TREES.csv",
                              stringsAsFactors = TRUE) 

head(classification_df)

classification_df <-
classification_df %>%
  mutate(Negative = as.factor(Negative))



neg_mo_train <-
  classification_df %>%
  filter(Validation.Stratified.by.Negative=="Training")


neg_mo_test <-
  classification_df %>%
  filter(Validation.Stratified.by.Negative=="Test")
head(neg_mo_test)

classification_tree <-
  neg_mo_train %>%
  rpart(formula = Negative ~ .,
        control=rpart.control(cp=0.004, minsplit = 10))
rpart.plot(classification_tree)


neg_mo_predict <-
  predict(classification_tree,
          newdata=neg_mo_test,
          type="class")
neg_mo_predict
length(neg_mo_predict)
nrow(neg_mo_test)




neg_mo_predict <-
  predict(classification_tree2,
          newdata=neg_mo_test,
          type="class")
neg_mo_predict
length(neg_mo_predict)
nrow(neg_mo_test)


misclassify(neg_mo_test$Negative,
            neg_mo_predict)
summary(classification_tree)
