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

Let's take a look at the decision boundary to get a better sense of how logistic regression is computing these predictions.
Model predicts 1 whenever w.x + b >= 0.

> <img src="./images/w03-03-Decision_boundary/img_2023-01-29_11-15-02.png">

Visualization of the decision boundary for logistic regression when the parameters w_1=1, w_2=1, and b=-3. 
Of course, if you had a different choice of the parameters, the decision boundary would be a different line

> <img src="./images/w03-03-Decision_boundary/img_2023-01-29_11-19-39.png">


Vizualization of decision boudary fo w_1=1, w_2=1 and b=-1.

> <img src="./images/w03-03-Decision_boundary/img_2023-01-29_11-22-58.png">


Even more complex examples

> <img src="./images/w03-03-Decision_boundary/img_2023-01-29_11-25-10.png">

Thresold is not always 0.5

> <img src="./images/w03-03-Decision_boundary/img_2023-01-29_11-30-40.png">

## Optional lab: Decision boundary



# Practice quiz: Classification with logistic regression


# Cost function for logistic regression

## Cost function for logistic regression

> <img src="./images/w03-04-Cost_function_for_logistic_regression/img_2023-01-29_12-00-44.png">

You could try to use the same cost function for logistic regression, then the cost will look like this. 
This becomes what's called a non-convex cost function is not convex. 

> <img src="./images/w03-04-Cost_function_for_logistic_regression/img_2023-01-29_12-03-03.png">

Intuition for for y<sup>(i)</sup> = 1 

> <img src="./images/w03-04-Cost_function_for_logistic_regression/img_2023-01-29_12-11-27.png">

Intuition for for y<sup>(i)</sup> = 0

> <img src="./images/w03-04-Cost_function_for_logistic_regression/img_2023-01-29_12-13-14.png">

Proving that this function is convex, it's beyond the scope of this cost.

> <img src="./images/w03-04-Cost_function_for_logistic_regression/img_2023-01-29_12-15-29.png">

## Optional lab: Logistic loss

## Simplified Cost Function for Logistic Regression

Because y is either zero or one we can write Cost Function equivalently

> <img src="./images/w03-05-Simplified_Cost_Function_for_Logistic_Regression/img_2023-01-29_12-27-29.png">

This particular cost function is derived from statistics using a statistical principle called maximum likelihood estimation, which is an idea from statistics on how to efficiently find parameters for different models. 
This cost function has the nice property that it is convex. 

> <img src="./images/w03-05-Simplified_Cost_Function_for_Logistic_Regression/img_2023-01-29_12-28-34.png">


## Optional lab: Cost function for logistic regression



# Practice quiz: Cost function for logistic regression

# Gradient Descent for logistic regression

## Gradient Descent Implementation

To fit the parameters of a logistic regression model, we're going to try to find the values of the parameters w and b that minimize the cost function J of w and b, and we'll again apply gradient descent to do this.

> <img src="./images/w03-06-Gradient_Descent_Implementation/img_2023-01-29_12-34-08.png">

When calculating derivatives, we have:

> <img src="./images/w03-06-Gradient_Descent_Implementation/img_2023-01-29_12-35-49.png">

Quite similar with linear regression

> <img src="./images/w03-06-Gradient_Descent_Implementation/img_2023-01-29_12-38-09.png">


## Optional lab: Gradient descent for logistic regression

## Optional lab: Logistic regression with scikit-learn




# Practice quiz: Gradient descent for logistic regression



# The problem of overfitting

## The problem of overfitting


### Underfit (first diagramm)

Checking learning algorithms for bias based on characteristics such as gender or ethnicity is absolutely critical. But the term bias has a second technical meaning as well, which is the one I'm using here, which is if the algorithm has underfit the data, meaning that it's just not even able to fit the training set that well.

There's a clear pattern in the training data that the algorithm is just unable to capture. 
The learning algorithm has a very strong preconception, or we say a very strong bias, that the housing prices are going to be a completely linear function of the size despite data to the contrary.

We'll use the terms underfit and high bias almost interchangeably

### Generalization (second diagramm)

If the learning algorithm work well, even on examples that are not on the training set, that's called generalization. Technically we say that you want your learning algorithm to generalize well, which means to make good predictions even on brand new examples that it has never seen before. 

### Overfit (third diagramm)

Another term for this is that the algorithm has high variance. In machine learning, many people will use the terms over-fit and high-variance almost interchangeably.  The intuition behind overfitting or high-variance is that the algorithm is trying very hard to fit every single training example. It turns out that if your training set were just even a little bit different, then the function that the algorithm fits could end up being totally different. 


> <img src="./images/w03-07-The_problem_of_overfitting/img_2023-01-29_13-24-29.png">

Similarly, underfitting and overfitting apply a classification as well. 

> <img src="./images/w03-07-The_problem_of_overfitting/img_2023-01-29_13-26-51.png">


## Addressing overfitting

Collecting more data
> <img src="./images/w03-08-Addressing_overfitting/img_2023-01-29_16-05-02.png">

Excluding features
> <img src="./images/w03-08-Addressing_overfitting/img_2023-01-29_16-05-18.png">

Reducing the size of the parameters using regularization 
> <img src="./images/w03-08-Addressing_overfitting/img_2023-01-29_16-05-42.png">

In a nutshell:
> <img src="./images/w03-08-Addressing_overfitting/img_2023-01-29_16-05-56.png">

## Optional lab: Overfitting

## Cost function with regularization

If you fit a very high order polynomial, you end up with a curve that over fits the data. 
So the idea is that if there are smaller values for the parameters, then that's a bit like having a simpler model. 
Maybe one with fewer features, which is therefore less prone to overfitting

But now consider the following, suppose that you had a way to make the parameters W3 and W4 close to 0. 
If we modify the cost function and add to it 1000*W3<sup>2</sup> + 1000*W4<sup>2</sup>, we penpenalize the model if W3 and W4 are large. 
Because if you want to minimize this function, the only way to make this new cost function small is if W3 and W4 are both small, close to 0.

> <img src="./images/w03-09-Cost_function_with_regularization/img_2023-01-29_16-31-20.png">

But more generally, the way that regularization tends to be implemented is if you have a lot of features, you may not know which are the most important features and which ones to penalize. So the way regularization is typically implemented is to penalize all of the features or more precisely, you penalize all the WJ parameters and it's possible to show that this will usually result in fitting a smoother simpler, less weekly function that's less prone to overfitting

This value lambda here is also called a regularization parameter. So similar to picking a learning rate alpha, you now also have to choose a number for lambda. 

By convention we also divide lambda by 2m so that both the 1st and 2nd terms here are scaled by 1 over 2m. It turns out that by scaling both terms the same way it becomes a little bit easier to choose a good value for lambda.

> <img src="./images/w03-09-Cost_function_with_regularization/img_2023-01-29_16-33-43.png">

Also by the way, by convention we're not going to penalize the parameter b for being large. In practice, it makes very little difference whether you do or not (but possible to do)

> <img src="./images/w03-09-Cost_function_with_regularization/img_2023-01-29_16-33-48.png">

So to summarize in this modified cost function, we want to minimize 
 - the original cost, which is the mean squared error cost (encourages the algorithm to fit the training data well)
 - plus additionally, the second term which is called the regularization term (to keep the parameters wj small, which will tend to reduce overfitting)

> <img src="./images/w03-09-Cost_function_with_regularization/img_2023-01-29_16-34-46.png">


## Regularized linear regression

 Previously the derivative of J with respect to w_j was given by this expression over here, and the derivative respect to b was given by this expression over here. Now that we've added this additional regularization term, the only thing that changes is that the expression for the derivative with respect to w_j ends up with one additional term

> <img src="./images/w03-10-Regularized_linear_regression/img_2023-01-29_17-06-39.png">

Let's take these definitions for the derivatives and put them back into the expression on the left to write out the gradient descent algorithm for regularized linear regression.

> <img src="./images/w03-10-Regularized_linear_regression/img_2023-01-29_17-07-09.png">

What regularization is doing on every single iteration is you're multiplying w by a number slightly less than 1, and that has effect of shrinking the value of w_j just a little bit. This gives us another view on why regularization has the effect of shrinking the parameters w_j a little bit on every iteration, and so that's how regularization works. 

> <img src="./images/w03-10-Regularized_linear_regression/img_2023-01-29_17-10-11.png">

Detail calculation on derivative

> <img src="./images/w03-10-Regularized_linear_regression/img_2023-01-29_17-12-26.png">


## Regularized logistic regression

## Optional lab: Regularization




# Practice quiz: The problem of overfitting



# Week 3 practice lab: logistic regression



# Acknowledgments
