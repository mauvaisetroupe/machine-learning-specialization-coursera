# Neural network training

This week, you'll learn how to train your model in TensorFlow, and also learn about other important activation functions (besides the sigmoid function), and where to use each type in a neural network. You'll also learn how to go beyond binary...

# Neural network training

## TensorFlow implementation

> <img src="./images/w02-01-TensorFlow_implementation/img_2023-01-30_22-15-48.png">

## Training Details

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-23-20.png">

### Step 1 - create the model

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-23-57.png">

### Step 2 - Loss and Cost functions

The cost function $J_{W,B}(\vec{X})$  is a function of **all the parameters** into neural network:
- $W$, that includes matrix $W^{[1]}$, $W^{[2]}$ and $W^{[3]}$ for respectively layer 1, 2 and 3 (could be vectors as neurone one has only one weight $w_1^{[1]}$)
- $B$, that includes $\vec{b}^{[1]}$, $\vec{b}^{[2]}$, $\vec{b}^{[3]}$, vectors of respectively layers 1, 2 and 3

Optimizing the cost function respect to $W$ and $B$, means optimizing it with respect to all of the parameters in the neural network (all layers)


In TensorFlow, we can use for loss function :
 - **tf.keras.losses.BinaryCrossentropy** (the name comes from statistics), and binary just reemphasizes this is a binary classification problem
 - **tf.keras.losses.MeanSquaredError** for regression 

> <img src="./images/w02-02-Training_Details/img_2023-01-30_22-29-11.png">

Keras was originally a library that  had developed independently of TensorFlow is actually totally separate project from TensorFlow
 
### Step 3 - Gradient descent

To use gradient descent to train the parameters of a neural network, we repeatedly update $w_j^{[l]}$  for every layer $l$ and for every unit $j$

This update depends on :
- the learning rate 
- and the partial derivative of the cost function $J_{W,B}(\vec{X})$, with respect to parameter  $w_j$ and $b$.

 
So in order to use gradient descent, the key activity is **computing these partial derivative terms**.

TensorFlow do all of these things for you, it implements backpropagation all within this function called fit().
 
TensorFlow can use an algorithm that is even a little bit faster than gradient descent

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

Output Layer:
- Linear for both negatives and positives values
- ReLU for positives values
- sigmoid for binary

> <img src="./images/w02-04-Choosing_activation_functions/img_2023-01-31_19-55-59.png">

Hidden Layer:
- Even though we had initially described neural networks using the sigmoid activation function, the field has evolved to use ReLU much more often and sigmoids hardly ever (exception for binary classification problem)
- Relu is prefered for two reasons:
    - faster to compute because it just requires computing maximux, whereas the sigmoid requires taking an exponentiation
    - sigmoid is fast at two place (vs one for ReLU) and so gradient descent is slower (intuition reason)

> <img src="./images/w02-04-Choosing_activation_functions/img_2023-01-31_19-56-13.png">

Summary 

> <img src="./images/w02-04-Choosing_activation_functions/img_2023-01-31_19-56-23.png">

## Why do we need activation functions?

If we were to use a linear activation function for all of the nodes, the neural network will act as a linear regression

> <img src="./images/w02-05-Why_do_we_need_activation_functions/img_2023-01-31_20-07-55.png">

Demonstration for a simple example of a neural network 

> <img src="./images/w02-05-Why_do_we_need_activation_functions/img_2023-01-31_21-16-45.png">

In the general case, if you had a neural network with multiple layers and you use a linear activation function for all of the hidden layers and for the output layer, then it turns out this model will compute an output that is equivalent to linear regression

Or alternatively, if we were to still use a linear activation function for all the hidden layers, and logistic activation function for the output layer, then the model becomes equivalent to logistic regression

> <img src="./images/w02-05-Why_do_we_need_activation_functions/img_2023-01-31_21-17-19.png">

## ReLU activation

# Practice quiz: Activation Functions


# Multiclass classification

## Multiclass

For the handwritten digit classification problems we've looked at so far, we were just trying to distinguish between the handwritten digits 0 and 1. But if you're trying to read protocols or zip codes in an envelope, well, there are actually 10 possible digits you might want to recognize

> <img src="./images/w02-06-Multiclass/img_2023-01-31_21-47-57.png">


Another multiclass classification problems, where data set that maybe classified in 4 different classes 

> <img src="./images/w02-06-Multiclass/img_2023-01-31_21-48-16.png">

## Softmax

Wikipedia:
> The softmax function (or normalized exponential function)  converts a vector of K real numbers into a probability distribution of K possible outcomes. It is a generalization of the logistic function to multiple dimensions
> The softmax function takes as input a vector z of K real numbers, and normalizes it into a probability distribution consisting of K probabilities proportional to the exponentials of the input numbers. 
> That is, prior to applying softmax, some vector components could be negative, or greater than one; and might not sum to 1; 
> but after applying softmax, each component will be in the interval [0,1], and the components will add up to 1, so that they can be interpreted as probabilities

> <img src="./images/w02-07-Softmax/img_2023-01-31_22-05-19.png">

Softmax regression with n equals 2, is equivalent to logistic regression (not proven here)

> <img src="./images/w02-07-Softmax/img_2023-01-31_22-11-38.png">

## Neural Network with Softmax output

Previously, when we were doing handwritten digit recognition with just two classes. 
We use a new Neural Network with an output layer with one unique neurone or unit.

If you now want to do handwritten digit classification with 10 classes, all the digits from zero to nine, then we're going to change this Neural Network to have 10 output units. And this new output layer will be a Softmax output layer

Softmax layer will sometimes also called the Softmax activation function, it is a little bit unusual in one respect compared to the other activation functions. a1 is a function of Z1, Z3, up to Z10. So each of these activation values, it depends on all of the values of Z 

> <img src="./images/w02-08-Neural_Network_with_Softmax_output/img_2023-02-01_17-07-01.png">

Tensorflow implentation (there's a better version of the code that makes tensorflow work better)

> <img src="./images/w02-08-Neural_Network_with_Softmax_output/img_2023-02-01_17-12-29.png">


## Improved implementation of softmax

Computing with intermediate term could create round-off error. 

> <img src="./images/w02-09-Improved_implementation_of_softmax/img_2023-02-01_17-20-56.png">

Algorithm that allows TensorFlow to not have to compute a as an intermediate term for logistic regression

> <img src="./images/w02-09-Improved_implementation_of_softmax/img_2023-02-01_17-28-36.png">

Full algorithm:

> <img src="./images/w02-09-Improved_implementation_of_softmax/img_2023-02-01_17-29-11.png">

Algorithm that allows TensorFlow to not have to compute a as an intermediate term for softmax regression

> <img src="./images/w02-09-Improved_implementation_of_softmax/img_2023-02-01_17-28-49.png">

Full algorithm:

> <img src="./images/w02-09-Improved_implementation_of_softmax/img_2023-02-01_17-29-03.png">

## Classification with multiple outputs (Optional)

Example of multi-label (multi labels possible), that differs from multi-class (only one class possible)
> <img src="./images/w02-10-Classification_with_multiple_outputs/img_2023-02-01_17-42-01.png">

Implemented wit output with multiple sigmoid units (neurones)
> <img src="./images/w02-10-Classification_with_multiple_outputs/img_2023-02-01_17-42-11.png">


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