# Week 2 - Regression with multiple values

This week, you'll extend linear regression to handle multiple input features. You'll also learn some methods for improving your model's training and performance, such as vectorization, feature scaling, feature engineering and polynomial regression. At the end of the week, you'll get to practice implementing linear regression in code.

# Multiple linear regression

## Multiple features

> <img src="./images/w02-01-Multiple_features/img_2023-01-29_07-39-17.png">

Notation: 
- X subscript j (for short, X sub j) to represent the list of features
- As before, we'll use X superscript i to denote the ith training example
- X superscript i is actually going to be a list of numbers, we represent it as a **row vector**

> <img src="./images/w02-01-Multiple_features/img_2023-01-29_07-39-49.png">

Previously, this is how we defined the model, where X was a single feature, so a single number. 
But now with multiple features, the model will be, fwb of X equals w1x1 plus w2x2 plus w3x3 plus w4x4 plus b

> <img src="./images/w02-01-Multiple_features/img_2023-01-29_07-40-13.png">

We use row vectors for :
 - weights parameters W_1, W_2, W_3
 - lists all of the features X_1, X_2, X_3 

> <img src="./images/w02-01-Multiple_features/img_2023-01-29_07-40-44.png">

## Vectorization part 1

Learning how to write vectorized code will allow you to also take advantage of modern numerical linear algebra libraries, as well as maybe even GPU hardware that stands for graphics processing unit

This NumPy dot function is a vectorized implementation of the dot product operation between two vectors

Vectorization actually has two distinct benefits. 
 - it makes code shorter, is now just one line of code. 
 - it also results in your code running much faster than either of the two previous implementations that did not use vectorization. The reason that the vectorized implementation is much faster is behind the scenes. The NumPy dot function is able to use parallel hardware in your computer and this is true whether you're running this on a normal computer, that is on a normal computer CPU or if you are using a GPU, a graphics processor unit, that's often used to accelerate machine learning jobs. 
 
> <img src="./images/w02-02-Vectorization_part_1/img_2023-01-29_07-43-53.png">

## Vectorization part 2

> <img src="./images/w02-03-Vectorization_part_2/img_2023-01-29_07-44-39.png">

If you have thousands of features and perhaps very large training sets, this type of vectorized implementation will make a huge difference in the running time of your learning algorithm. It could be the difference between codes finishing in one or two minutes, versus taking many hours to do the same thing

> <img src="./images/w02-03-Vectorization_part_2/img_2023-01-29_07-45-17.png">

## Optional lab: Python, NumPy and vectorization

## Gradient descent for multiple linear regression

Impact of vectorization for gradient descent algorithm 

> <img src="./images/w02-04-Gradient_descent_for_multiple_linear_regression/img_2023-01-29_07-46-03.png">

The formula for the derivative of J with respect to w_1 on the right looks very similar to the case of one feature on the left. The error term still takes a prediction f of x minus the target y. One difference is that w and x are now vectors. 

> <img src="./images/w02-04-Gradient_descent_for_multiple_linear_regression/img_2023-01-29_07-46-25.png">

An alternative way for finding w and b for linear regression exists and it'i's called the normal equation
Just be aware that some machine learning libraries may use this complicated method in the back-end to solve for w and b. But for most learning algorithms, including how you implement linear regression yourself, gradient descents offer a better way to get the job done

> <img src="./images/w02-04-Gradient_descent_for_multiple_linear_regression/img_2023-01-29_07-46-41.png">

## Optional Lab: Multiple linear regression

# Practice quiz: Multiple linear regression

# Gradient descent in practice

## Feature scaling part 1

> <img src="./images/w02-05-Feature_scaling_part_1/img_2023-01-29_07-47-33.png">

Scaling the data ensures that all dimensions have similar values, which makes it easier for gradient descent to converge. It is generally recommended to scale the data before using it to train a gradient descent model.


> <img src="./images/w02-05-Feature_scaling_part_1/img_2023-01-29_07-47-43.png">

Scaling the data can have a significant impact on the convergence of gradient descent

When the data is not scaled the cost function can be very steep in those dimensions and therefore the parameter update will be larger in those dimensions, which can lead to sudden and unstable movements of the parameters, which can slow down the convergence of the algorithm.

> <img src="./images/w02-05-Feature_scaling_part_1/img_2023-01-29_07-47-57.png">

## Feature scaling part 2

> <img src="./images/w02-06-Feature_scaling_part_2/img_2023-01-29_07-48-46.png">
> <img src="./images/w02-06-Feature_scaling_part_2/img_2023-01-29_07-49-00.png">
> <img src="./images/w02-06-Feature_scaling_part_2/img_2023-01-29_07-49-20.png">
> <img src="./images/w02-06-Feature_scaling_part_2/img_2023-01-29_07-49-32.png">

## Checking gradient descent for convergence

> <img src="./images/w02-07-Checking_gradient_descent_for_convergence/img_2023-01-29_07-50-05.png">
> <img src="./images/w02-07-Checking_gradient_descent_for_convergence/img_2023-01-29_07-50-24.png">

## Choosing the learning rate

> <img src="./images/w02-08-Choosing_the_learning_rate/img_2023-01-29_07-51-04.png">
> <img src="./images/w02-08-Choosing_the_learning_rate/img_2023-01-29_07-51-15.png">

## Optional Lab: Feature scaling and learning rate

## Feature engineering

> <img src="./images/w02-09-Feature_engineering/img_2023-01-29_07-51-50.png">

## Polynomial regression

> <img src="./images/w02-10-Polynomial_regression/img_2023-01-29_07-53-08.png">
> <img src="./images/w02-10-Polynomial_regression/img_2023-01-29_07-53-44.png">
> <img src="./images/w02-10-Polynomial_regression/img_2023-01-29_07-53-54.png">
> <img src="./images/w02-10-Polynomial_regression/img_2023-01-29_07-54-12.png">

## Optional lab: Feature engineering and Polynomial regression

## Optional lab: Linear regression with scikit-learn

# Practice quiz: Gradient descent in practice

# Week 2 practice lab: Linear regression

