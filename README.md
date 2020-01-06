# Author: Marshal J. Will

# Association Rules and Decision Tree Classification To Predict Negative Reasons For Moving Out



## Aeon Project Overview

1. Association Rules
2. Positive and Negative Reasons for moving out
3. Classification Tree and Predictions
4. Analytics
5. Recommendations

### 1. Association Rules

- Rules are meant to find correlations in values
- Example: If someone moved out and their reason was that it was for a new job. This could be marked as a positive reason and have a check for employment
- Association rules help find one piece of information by relating to and predicting another piece of information
- We are interested whether the type of resources had an effect of someone moving out

### Support, Confidence, and Lift

- Support is a percentage out of all the reasons someone may move out
- Confidence is the degree when a rule predicts if a person moves out for a positive or negative reason
- Lift is a measurement of association
- When Lift is above 1 then there is a positive association
- When Lift is below 1 then there is a negative association
- When Lift is 1 then there is no association

### 2. Positive Reasons For Moving Out

ref. to power point presentation

### Interesting Observations for Positive Reasons to Moving Out

- Having household goods was associated with having a positive reason to move out
- Household goods compared to other rules made it one of the top reasons a person would move out 
- People moving out for employment was also common and had one of the highest lift values when combined with safety
- Having a combination of life skills and computer assistance was a large predictor for a positive move out
- We think this is because they were able to learn new skills and apply those to better themselves

### Negative Reasons For Moving Out

ref. to power point presentation

### Interesting Observations for Negative Reason to Moving Out
- Overall having no food had a likelihood of moving out despite being combined with life skills
- Having no family or social relations had a high connection to moving out
- When a person had education but no employment there was a strong chance of a negative moveout
- An interesting observation was that Mental Health and Substance Abuse had no association to being a Negative or Positive reason to move out

### 3. Classification Tree
- Uses machine learning algorithms to help predict future connections
- Works with association rules and can be used on future data to make predictions of behavior
- By using an existing data set, we can "train" an algorithm to make a better prediction 
- Rent is a large predictor to find out what led to negative moveout reasons followed by and the income and the age of the person

### Negative Classification Tree
ref. to power point presentation

### Top Negative Reasons for Moving Out
- Rent
- Income
- Latest Subsidy 
- Age
- Fees

### 4. Analytics
- Rule classifies Negative Reasons to Move-out as correct and Positive Reasons to Move-out as incorrect 
- Negative Move Outs that are correctly classified as Negative Move Outs are called true correct and all Positive Move Outs that are correctly classified as Positive Move Outs are called true incorrect
- Confusion matrix is used to demonstrate our algorithms model success rate
<br></br>
- All misclassified values are either False Correct or False Incorrect
- Misclassification rate or the "Error rate" tells us how often our model is wrong
- Our model's misclassification rate is about 33%

-203 True Correct
-327 False Correct
-679 True Incorrect
-115 False Incorrect


### How can we address reasons to move out?
Mission Statement: Aeon's mission is to create and sustain quality affordable homes that strengthen lives and communities.

### 5. Recommendations
- Provide career services to reduce the high association moving out of unemployment and educated individuals
- Increase neighborhood gathering events to encourage more community interaction
- Provide more Bus Cards and public transit resources for residents
- Increase security and provide a safe environment for tenants
- Develop community services for IT help and provide better access to educational materials
- Help unemployed residents find programs that sponsor/help fund back to school supplies and provide career services







