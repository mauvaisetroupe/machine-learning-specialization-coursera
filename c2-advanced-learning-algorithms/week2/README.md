# Neural network training

This week, you'll learn how to train your model in TensorFlow, and also learn about other important activation functions (besides the sigmoid function), and where to use each type in a neural network. You'll also learn how to go beyond binary...

# Neural network training

## TensorFlow implementation

> <img src="./images/w02-01-TensorFlow_implementation/img_2023-01-30_22-15-48.png">

## Training Details

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-23-20.png">

Step 1 - create the model

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-23-57.png">

Step 2 - Loss and Cost functions

In TensorFlow, this is called the binary cross-entropy loss function. 
Name comes from statistics, this function on top is called the cross-entropy loss function, so that's what cross-entropy means
And the word binary just reemphasizes or points out that this is a binary classification problem

For refression, use tf.keras.losses.MeanSquaredError instead tf.keras.losses.BinaryCrossentropy

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-29-11.png">

Step 3 - Gradient descent

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-32-25.png">

Frameworks

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-32-39.png">


# Practice quiz: Neural Network Training


# Activation Functions

## Alternatives to the sigmoid activation

Using the sigmoid activation function awareness as a binary number 0, 1
Maybe awareness should be any non negative number because there can be any non negative value of awareness going from 0 up to very very large numbers

ReLU (rectified linear unit) is another activation function

> <img src="./images/w02-03-Alternatives_to_the_sigmoid_activation/img_2023-01-31_19-46-59.png">

Here are the most commonly used activation functions:
- Sigmoid
- ReLU
- and Linear activation function g(z)=z (no activation function)

> <img src="./images/w02-03-Alternatives_to_the_sigmoid_activation/img_2023-01-31_19-47-11.png">


## Choosing activation functions

## Why do we need activation functions?

## ReLU activation




# Practice quiz: Activation Functions


# Multiclass classification

## Multiclass

## Softmax

## Neural Network with Softmax output

## Improved implementation of softmax

## Classification with multiple outputs (Optional)

## Softmax

## Multiclass



# Practice quiz: Multiclass Classification



# Additional Neural Network concepts

## Advanced Optimization

## Additional Layer Types




# Practice quiz: Additional Neural Network Concepts


# Back propagation (Optional)

## What is a derivative? (Optional)

## Computation graph (Optional)

## Larger neural network example (Optional)

## Optional Lab: Derivatives

## Optional Lab: Back propagation




# Practice Lab: Neural Networks for Multiclass classification