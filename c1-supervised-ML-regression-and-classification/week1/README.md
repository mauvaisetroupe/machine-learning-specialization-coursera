# Week 1 - Introduction to Machine Learning

Welcome to the Machine Learning Specialization! You're joining millions of others who have taken either this or the original course, which led to the founding of Coursera, and has helped millions of other learners, like you, take a look at the exciting world of machine learning!

# Overview of Machine Learning

## Welcome to machine learning!

## Applications of machine learning

# Supervised vs. Unsupervised Machine Learning

## What is machine learning?

Here's a definition of what is machine learning that is attributed to Arthur Samuel. 


He defined machine learning as the field of study that gives computers the ability to learn without being explicitly programmed.

>  <img src="./images/w01-03-What_is_machine_learning/img_2023-01-28_07-53-13.png">

Samuel wrote a checkers playing program in the 1950s
The amazing thing about this program was that Arthur Samuel himself wasn't a very good checkers player. 
His program learned to get better and better at playing checkers because the computer had the patience to play tens of thousands of games against itself

## Supervised learning part 1

Supervised machine learning or more commonly, supervised learning, refers to algorithms that learn x to y or input to output mappings. 

The key characteristic of supervised learning is that you give your learning algorithm examples to learn from. 
For a given input x, you give the right answers (the correct label y )
It's by seeing correct pairs of input x and desired output label y that the learning algorithm learns to give a reasonably accurate prediction of the output.

 > <img src="./images/w01-04-Supervised_learning_part_1/img_2023-01-28_08-29-03.png">
 
So supervised learning algorithms learn to predict input, output or X to Y mapping

This housing price prediction example is the particular type of supervised learning called regression. 

> Regression is a statistical method used in finance, investing, and other disciplines that attempts to determine the strength and character of the relationship between one dependent variable (usually denoted by Y) and a series of other variables (known as independent variables).

 > <img src="./images/w01-04-Supervised_learning_part_1/img_2023-01-28_08-29-26.png">

## Supervised learning part 2

Supervised learning algorithms learn to predict input, output or X to Y mapping. 
Regression algorithms, which is a type of supervised learning algorithm learns to predict numbers out of infinitely many possible numbers. 
There's a second major type of supervised learning algorithm called a classification algorithm.

 > <img src="./images/w01-05-Supervised_learning_part_2/img_2023-01-28_08-33-39.png">

 One reason that this is different from regression is that we're trying to predict only a small number of possible outputs or categories. In this case two possible outputs 0 or 1, benign or malignant.

 > <img src="./images/w01-05-Supervised_learning_part_2/img_2023-01-28_08-33-54.png">

 Here's an example, instead of just knowing the tumor size, say you also have each patient's age in years. 

 > <img src="./images/w01-05-Supervised_learning_part_2/img_2023-01-28_08-34-18.png">

The two major types of supervised learning our regression and classification. In a regression application like predicting prices of houses, the learning algorithm has to predict numbers from infinitely many possible output numbers. Whereas in classification the learning algorithm has to make a prediction of a category, all of a small set of possible outputs.

 > <img src="./images/w01-05-Supervised_learning_part_2/img_2023-01-28_08-34-51.png">

## Unsupervised learning part 1

Don't let the name uncivilized for you, unsupervised learning is I think just as super as supervised learning

 > <img src="./images/w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-05-37.png">
 
 
 An unsupervised learning algorithm, might decide that the data can be assigned to two different groups or two different clusters. And so it might decide, that there's one cluster what group over here, and there's another cluster or group over here. This is a particular type of unsupervised learning, called a clustering algorithm.
 
 > <img src="./images/w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-06-05.png">

For example, clustering is used in google news, what google news does is every day it goes. And looks at hundreds of thousands of news articles on the internet, and groups related stories together.

 > <img src="./images/w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-06-39.png">

 This image shows a picture of DNA micro array data, these look like tiny grids of a spreadsheet. And each tiny column represents the genetic or DNA activity of one person

 > <img src="./images/w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-07-03.png">

 Many companies have huge databases of customer information given this data. Unsupervised learning can you automatically group your customers, into different market segments so that you can more efficiently serve your customers. 

 > <img src="./images/w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-07-31.png">

## Unsupervised learning part 2

Nn supervised learning, the data comes with both inputs x and input labels y, in unsupervised learning, the data comes only with inputs x but not output labels y, and the algorithm has to find some structure or some pattern or something interesting in the data.

 > <img src="./images/w01-07-Unsupervised_learning_part_2/img_2023-01-28_10-09-20.png">

  - Clustering algorithm, which groups similar data points together
  - Anomaly detection, which is used to detect unusual events
  - dimensionality reduction. This lets you take a big data-set and almost magically compress it to a much smaller data-set while losing as little information as possible.

 > <img src="./images/w01-07-Unsupervised_learning_part_2/img_2023-01-28_10-09-48.png">

## Jupyter Notebooks

## Python and Jupyter Notebooks


# Practice Quiz: Supervised vs unsupervised learning


# Regression Model


## Linear regression model part 1

 <!-- img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-26-26.png" -->


 <!-- img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-26-46.png" -->


 
 The first model of this course, Linear Regression Model, just means fitting a straight line to your data. 
 
 It's probably the most widely used learning algorithm in the world today.

 > <img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-27-17.png">

 <!-- img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-27-39.png" -->
 
In addition to visualizing this data as a plot here on the left, there's one other way of looking at the data that would be useful, and that's a data table here on the right. 

The data comprises a set of inputs. 

This would be the size of the house, which is this column here. 

It also has outputs. You're trying to predict the price, which is this column here. 

Notice that the horizontal and vertical axes correspond to these two columns, the size and the price. If you have, say, 47 rows in this data table, then there are 47 of these little crosses on the plot of the left, each cross corresponding to one row of the table. 

 > <img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-28-00.png">

Terminology:
 - the dataset that you just saw and that is used to train the model is called a **training set**.  
 - the standard notation to denote the input here is lowercase x, and we call this the **input variable**, is also called a **feature** or an **input feature**. 
 - the standard notation to denote the output variable which you're trying to predict, which is also sometimes called the **target variable**, is lowercase y.

 > <img src="./images/w01-09-Linear_regression_model_part_1/img_2023-01-28_10-29-32.png">

## Linear regression model part 2

 1. **Training set** in supervised learning includes both the **input features**, and **output targets** are the right answers to the model we'll learn from. 
 1. To train the model, you feed the training set, both the input features and the output targets to your **learning algorithm**.
 1. Then your supervised learning algorithm will produce some **function** called the **model** (historically, this function used to be called a **hypothesis**)
 1. The function f take a new **input feature** x and output and **estimate** or a **prediction** **y-hat** (in contrast, y is the target)



 > <img src="./images/w01-10-Linear_regression_model_part_2/img_2023-01-28_10-31-08.png">

## Optional lab: Model representation

## Cost function formula

w and b are called the **parameters** of the model (or **coefficients** or **weights**). In machine learning parameters of the model are the variables you can adjust during training in order to improve the model

 > <img src="./images/w01-11-Cost_function_formula/img_2023-01-28_10-32-24.png">

Depending on the values you've chosen for w and b you get a different function f of x, which generates a different line on the graph.

 > <img src="./images/w01-11-Cost_function_formula/img_2023-01-28_10-32-49.png">

The **cost function** takes the prediction y hat and compares it to the target y by taking y hat minus y. This difference is called the error.

This is also called the **squared error cost function**, and it's called this because you're taking the square of these error terms. In machine learning different people will use different cost functions for different applications, but the squared error cost function is by far the most commonly used 

 > <img src="./images/w01-11-Cost_function_formula/img_2023-01-28_10-34-00.png">


## Cost function intuition

 > <img src="./images/w01-12-Cost_function_intuition/img_2023-01-28_10-35-23.png">
 > <img src="./images/w01-12-Cost_function_intuition/img_2023-01-28_10-36-01.png">
 > <img src="./images/w01-12-Cost_function_intuition/img_2023-01-28_10-36-39.png">
 > <img src="./images/w01-12-Cost_function_intuition/img_2023-01-28_10-37-18.png">
 > <img src="./images/w01-12-Cost_function_intuition/img_2023-01-28_10-37-48.png">


## Visualizing the cost function

 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-17.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-37.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-55.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-06.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-13.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-16.png">
 > <img src="./images/w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-51.png">

## Visualization examples

 > <img src="./images/w01-14-Visualization_examples/img_2023-01-28_11-13-15.png">
 > <img src="./images/w01-14-Visualization_examples/img_2023-01-28_11-14-26.png">

## Optional lab: Cost function


# Practice Quiz: Regression Model


# Train the model with gradient descent

## Gradient descent

 > <img src="./images/w01-15-Gradient_descent/img_2023-01-28_11-15-30.png">
 > <img src="./images/w01-15-Gradient_descent/img_2023-01-28_11-16-02.png">

## Implementing gradient descent

 > <img src="./images/w01-16-Implementing_gradient_descent/img_2023-01-28_11-18-04.png">

## Gradient descent intuition

 > <img src="./images/w01-17-Gradient_descent_intuition/img_2023-01-28_11-18-57.png">
 > <img src="./images/w01-17-Gradient_descent_intuition/img_2023-01-28_11-19-19.png">

## Learning rate

 > <img src="./images/w01-18-Learning_rate/img_2023-01-28_11-20-40.png">
 > <img src="./images/w01-18-Learning_rate/img_2023-01-28_11-21-08.png">
 > <img src="./images/w01-18-Learning_rate/img_2023-01-28_11-21-26.png">

## Gradient descent for linear regression

 > <img src="./images/w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-19.png">
 > <img src="./images/w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-32.png">
 > <img src="./images/w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-44.png">
 > <img src="./images/w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-54.png">
 > <img src="./images/w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-35-01.png">


## Running gradient descent

 > <img src="./images/w01-20-Running_gradient_descent/img_2023-01-28_11-36-49.png">
 > <img src="./images/w01-20-Running_gradient_descent/img_2023-01-28_11-37-06.png">


## Optional lab: Gradient descent

# Practice quiz: Train the model with gradient descent


