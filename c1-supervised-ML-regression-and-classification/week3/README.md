# Week3 - Classification

This week, you'll learn the other type of supervised learning, classification. You'll learn how to predict categories using the logistic regression model. You'll learn about the problem of overfitting, and how to handle this problem with a method...


# Classification with logistic regression

## Motivations

It turns out that linear regression is not a good algorithm for classification problems. Let's take a look at why and this will lead us into a different algorithm called logistic regression. Which is one of the most popular and most widely used learning algorithms today.

In each of these problems the variable that you want to predict can only be one of two possible values. No or yes. 
This type of classification problem where there are only two possible outputs is called binary classification

In these problems terms **class** and **category** relatively interchangeably.

One of the technologies commonly used is to call the false or zero class. The **negative class** and the **positive class**.

> <img src="./images/w03-01-Motivations/img_2023-01-29_09-23-57.png">

<!--img src="./images/w03-01-Motivations/img_2023-01-29_09-24-04.png"-->

Linear regression predicts not just the values zero and one. But all numbers between zero and one or even less than zero or greater than one
One thing you could try is to pick a threshold of say 0.5

> <img src="./images/w03-01-Motivations/img_2023-01-29_09-24-15.png">

Clearly, when the tumor is large, we want the algorithm to classify it as malignant. 
But adding new data (larger tumor) produce a much worse function for this classification problem.

The dividing line between two classes is called the decision boundary 

> <img src="./images/w03-01-Motivations/img_2023-01-29_09-24-53.png">



## Optional lab: Classification

## Logistic regression

## Optional lab: Sigmoid function and logistic regression

## Decision boundary

## Optional lab: Decision boundary



# Practice quiz: Classification with logistic regression



# Cost function for logistic regression

## Cost function for logistic regression

## Optional lab: Logistic loss

## Simplified Cost Function for Logistic Regression

## Optional lab: Cost function for logistic regression



# Practice quiz: Cost function for logistic regression

# Gradient Descent for logistic regression

## Gradient Descent Implementation

## Optional lab: Gradient descent for logistic regression

## Optional lab: Logistic regression with scikit-learn




# Practice quiz: Gradient descent for logistic regression



# The problem of overfitting

## The problem of overfitting

## Addressing overfitting

## Optional lab: Overfitting

## Cost function with regularization

## Regularized linear regression

## Regularized logistic regression

## Optional lab: Regularization




# Practice quiz: The problem of overfitting



# Week 3 practice lab: logistic regression



# Acknowledgments
