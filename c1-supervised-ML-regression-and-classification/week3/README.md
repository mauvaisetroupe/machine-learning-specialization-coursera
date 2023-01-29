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


A common example of a sigmoid function is the logistic function shown in the first figure and defined by the formula:

![](sigmoid.svg)
 The way I encourage you to think of logistic regressions output is to think of it as outputting the probability that the class or the label y will be equal to 1 given a certain input x. For example, in this application, where x is the tumor size and y is either 0 or 1, if you have a patient come in and she has a tumor of a certain size x, and if based on this input x, the model I'll plus 0.7, then what that means is that the model is predicting or the model thinks there's a 70 percent chance that the true label y would be equal to 
> <img src="./images/w03-02-Logistic_regression/img_2023-01-29_10-12-47.png">

1. In the first step, use linear regression function (store in variable z) 
1. The next step then is to take this value of z and pass it to the Sigmoid function, also called the logistic function

g(z) outputs a value between 0 and 1. 

> <img src="./images/w03-02-Logistic_regression/img_2023-01-29_10-14-33.png">

g(z) is interpreted as a percentage (probability)

> <img src="./images/w03-02-Logistic_regression/img_2023-01-29_10-16-38.png">


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
