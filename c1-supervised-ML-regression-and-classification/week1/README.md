# Week 1 - Introduction to Machine Learning

Welcome to the Machine Learning Specialization! You're joining millions of others who have taken either this or the original course, which led to the founding of Coursera, and has helped millions of other learners, like you, take a look at the exciting world of machine learning!

# Overview of Machine Learning

## Welcome to machine learning!

## Applications of machine learning

# Supervised vs. Unsupervised Machine Learning

## What is machine learning?

Here's a definition of what is machine learning that is attributed to Arthur Samuel. 


He defined machine learning as the field of study that gives computers the ability to learn without being explicitly programmed.

>  <img src="./w01-03-What_is_machine_learning/img_2023-01-28_07-53-13.png">

Samuel wrote a checkers playing program in the 1950s
The amazing thing about this program was that Arthur Samuel himself wasn't a very good checkers player. 
His program learned to get better and better at playing checkers because the computer had the patience to play tens of thousands of games against itself

## Supervised learning part 1

Supervised machine learning or more commonly, supervised learning, refers to algorithms that learn x to y or input to output mappings. 

The key characteristic of supervised learning is that you give your learning algorithm examples to learn from. 
For a given input x, you give the right answers (the correct label y )
It's by seeing correct pairs of input x and desired output label y that the learning algorithm learns to give a reasonably accurate prediction of the output.

 > <img src="./w01-04-Supervised_learning_part_1/img_2023-01-28_08-29-03.png">
 
So supervised learning algorithms learn to predict input, output or X to Y mapping

This housing price prediction example is the particular type of supervised learning called regression. 

> Regression is a statistical method used in finance, investing, and other disciplines that attempts to determine the strength and character of the relationship between one dependent variable (usually denoted by Y) and a series of other variables (known as independent variables).

 > <img src="./w01-04-Supervised_learning_part_1/img_2023-01-28_08-29-26.png">

## Supervised learning part 2

Supervised learning algorithms learn to predict input, output or X to Y mapping. 
Regression algorithms, which is a type of supervised learning algorithm learns to predict numbers out of infinitely many possible numbers. 
There's a second major type of supervised learning algorithm called a classification algorithm.

 > <img src="./w01-05-Supervised_learning_part_2/img_2023-01-28_08-33-39.png">

 One reason that this is different from regression is that we're trying to predict only a small number of possible outputs or categories. In this case two possible outputs 0 or 1, benign or malignant.

 > <img src="./w01-05-Supervised_learning_part_2/img_2023-01-28_08-33-54.png">

 Here's an example, instead of just knowing the tumor size, say you also have each patient's age in years. 

 > <img src="./w01-05-Supervised_learning_part_2/img_2023-01-28_08-34-18.png">

The two major types of supervised learning our regression and classification. In a regression application like predicting prices of houses, the learning algorithm has to predict numbers from infinitely many possible output numbers. Whereas in classification the learning algorithm has to make a prediction of a category, all of a small set of possible outputs.

 > <img src="./w01-05-Supervised_learning_part_2/img_2023-01-28_08-34-51.png">

## Unsupervised learning part 1

 > <img src="./w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-05-37.png">
 > <img src="./w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-06-05.png">
 > <img src="./w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-06-39.png">
 > <img src="./w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-07-03.png">
 > <img src="./w01-06-Unsupervised_learning_part_1/img_2023-01-28_10-07-31.png">

## Unsupervised learning part 2

 > <img src="./w01-07-Unsupervised_learning_part_2/img_2023-01-28_10-09-20.png">
 > <img src="./w01-07-Unsupervised_learning_part_2/img_2023-01-28_10-09-48.png">

## Jupyter Notebooks

## Python and Jupyter Notebooks


# Practice Quiz: Supervised vs unsupervised learning


# Regression Model


## Linear regression model part 1

 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-26-26.png">
 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-26-46.png">
 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-27-17.png">
 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-27-39.png">
 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-28-00.png">
 > <img src="./w01-09-Linear_regression_model_part_1/img_2023-01-28_10-29-32.png">

## Linear regression model part 2

 > <img src="./w01-10-Linear_regression_model_part_2/img_2023-01-28_10-31-08.png">

## Optional lab: Model representation

## Cost function formula

 > <img src="./w01-11-Cost_function_formula/img_2023-01-28_10-32-24.png">
 > <img src="./w01-11-Cost_function_formula/img_2023-01-28_10-32-49.png">
 > <img src="./w01-11-Cost_function_formula/img_2023-01-28_10-34-00.png">


## Cost function intuition

 > <img src="./w01-12-Cost_function_intuition/img_2023-01-28_10-35-23.png">
 > <img src="./w01-12-Cost_function_intuition/img_2023-01-28_10-36-01.png">
 > <img src="./w01-12-Cost_function_intuition/img_2023-01-28_10-36-39.png">
 > <img src="./w01-12-Cost_function_intuition/img_2023-01-28_10-37-18.png">
 > <img src="./w01-12-Cost_function_intuition/img_2023-01-28_10-37-48.png">


## Visualizing the cost function

 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-17.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-37.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-07-55.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-06.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-13.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-16.png">
 > <img src="./w01-13-Visualizing_the_cost_function/img_2023-01-28_11-08-51.png">

## Visualization examples

 > <img src="./w01-14-Visualization_examples/img_2023-01-28_11-13-15.png">
 > <img src="./w01-14-Visualization_examples/img_2023-01-28_11-14-26.png">

## Optional lab: Cost function


# Practice Quiz: Regression Model


# Train the model with gradient descent

## Gradient descent

 > <img src="./w01-15-Gradient_descent/img_2023-01-28_11-15-30.png">
 > <img src="./w01-15-Gradient_descent/img_2023-01-28_11-16-02.png">

## Implementing gradient descent

 > <img src="./w01-16-Implementing_gradient_descent/img_2023-01-28_11-18-04.png">

## Gradient descent intuition

 > <img src="./w01-17-Gradient_descent_intuition/img_2023-01-28_11-18-57.png">
 > <img src="./w01-17-Gradient_descent_intuition/img_2023-01-28_11-19-19.png">

## Learning rate

 > <img src="./w01-18-Learning_rate/img_2023-01-28_11-20-40.png">
 > <img src="./w01-18-Learning_rate/img_2023-01-28_11-21-08.png">
 > <img src="./w01-18-Learning_rate/img_2023-01-28_11-21-26.png">

## Gradient descent for linear regression

 > <img src="./w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-19.png">
 > <img src="./w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-32.png">
 > <img src="./w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-44.png">
 > <img src="./w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-34-54.png">
 > <img src="./w01-19-Gradient_descent_for_linear_regression/img_2023-01-28_11-35-01.png">


## Running gradient descent

 > <img src="./w01-20-Running_gradient_descent/img_2023-01-28_11-36-49.png">
 > <img src="./w01-20-Running_gradient_descent/img_2023-01-28_11-37-06.png">


## Optional lab: Gradient descent

# Practice quiz: Train the model with gradient descent


