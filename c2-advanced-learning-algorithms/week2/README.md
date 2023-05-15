# Neural network training

This week, you'll learn how to train your model in TensorFlow, and also learn about other important activation functions (besides the sigmoid function), and where to use each type in a neural network. You'll also learn how to go beyond binary classification to multiclass classification (3 or more categories). Multiclass classification will introduce you to a new activation function and a new loss function. Optionally, you can also learn about the difference between multiclass classification and multi-label classification. You'll learn about the Adam optimizer, and why it's an improvement upon regular gradient descent for neural network training. Finally, you will get a brief introduction to other layer types besides the one you've seen thus far.

Learning Objectives
- Train a neural network on data using TensorFlow
- Understand the difference between various activation functions (sigmoid, ReLU, and linear)
- Understand which activation functions to use for which type of layer
- Understand why we need non-linear activation functions
- Understand multiclass classification
- Calculate the softmax activation for implementing multiclass classification
- Use the categorical cross entropy loss function for multiclass classification
- Use the recommended method for implementing multiclass classification in code
- (Optional): Explain the difference between multi-label and multiclass classification

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

Algorithm that allows TensorFlow to not have to compute a as an intermediate term for logistic regression :
- from_logits=True
- linear' activation on output layer (instead of softmax)

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

Gradient descent is an optimization algorithm that was the foundation of many algorithms like linear regression, logistic regression and early implementations of neural networks. But there are now some other optimization algorithms for minimizing the cost function, that are even better than gradient descent.

Depending on how gradient descent is proceeding, we need to increase or decrease learning rate Alpha

> <img src="./images/w02-11-Advanced_Optimization/img_2023-02-01_17-50-05.png">

Use more than one Alpha (Adam algorithm)

> <img src="./images/w02-11-Advanced_Optimization/img_2023-02-01_17-50-53.png">

Intuition : increase when same direction, decrease when oscillation

> <img src="./images/w02-11-Advanced_Optimization/img_2023-02-01_17-51-40.png">

Implementation in tensorflow:

> <img src="./images/w02-11-Advanced_Optimization/img_2023-02-01_17-52-24.png">

## Additional Layer Types


With dense layer, every neuron in the layer gets its inputs all the activations from the previous layer. 
And it turns out that just using the dense layer type, you can actually build some pretty powerful learning algorithms. 

We can design a neural with a different type of layer. One other layer type that you may see in some work is called a **convolutional layer**


> <img src="./images/w02-12-Additional_Layer_Types/img_2023-02-01_17-58-21.png">

With convolutional layer units looks at only a limited window of the input

> <img src="./images/w02-12-Additional_Layer_Types/img_2023-02-01_18-06-26.png">

Exemple with Electrocardiogram (ECG or EKG)

> <img src="./images/w02-12-Additional_Layer_Types/img_2023-02-01_18-12-41.png">


# Practice quiz: Additional Neural Network Concepts


# Back propagation (Optional)

Remeinder:
 - Inference is making predictions and itś forward propagation
 - Learning is called in contrast backward propagation or back propagation

## What is a derivative? (Optional)

Example

> <img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-07-37.png">

Definition of derivative

> <img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-09-29.png">

Derivative and slope

> <img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-09-58.png">

Compute derivative in python with sympy

> <img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-11-46.png">

<!--img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-12-16.png"-->

Derivative Notation 
 - Derivative $\frac{dJ}{dw}$
 - Partial derivative $\frac{\partial J}{\partial w_i}$
> <img src="./images/w02-13-What_is_a_derivative/img_2023-02-01_19-13-01.png">


## Computation graph (Optional)

The computation graph is a key idea in deep learning and it's used by programming framework like TensorFlow to automatic compute derivatives for 
neural networks

To compute the output a of the neural network, we need to execute the following forwrad propo steps of the the computation graph to calculate **a = wx + b** and then **J = 1/2(a-y)²** (**J = 1/2((wx + b) - y)²** )

1. c = w . x
2. a = c + b
3. d = a - y
4. J = 1/2 d²

> <img src="./images/w02-14-Computation_graph/img_2023-02-01_19-42-06.png">

Then we execute the backprop, from right to left. 

1. J = 1/2 d²
    - if d += 0.001, J += 0.002, so **dJ/dd** = 2
2. d = a - y 
    - if a += 0.001, d += 0.001, so **dd/da** =1 
    - with step 1, if a += 0.001 then J+= 0.002, so we have **dJ/da** = **dd/da** . **dJ/dd**   
3. a = c + b
    - if c += 0.001, a += 0.001
    - with step 2, if c += 0.001 then J+= 0.002, so we have **dJ/dc** = **da/dc** . **dJ/da**
    - idem for b += 0.001, J += 0.002 
4. c = w . x
    - id w += 0.001 then c -= 0.002, J -= -0.004

Chain rule is du\dx = du\dv . dv\dx or  d/dx ( f(g(x) ) = f' (g(x)) · g' (x)

> <img src="./images/w02-14-Computation_graph/img_2023-02-01_20-03-09.png">

Double check :

> <img src="./images/w02-14-Computation_graph/img_2023-02-01_20-04-19.png">

Backprop efficiency

> <img src="./images/w02-14-Computation_graph/img_2023-02-01_20-07-53.png">

## Larger neural network example (Optional)

Many years ago, before the rise of frameworks like tensorflow and pytorch, researchers used to have to manually use calculus to compute the derivatives of the neural networks that they wanted to train. 

In modern program frameworks you can specify forwardprop and have it take care of backprop for you. Thanks to the computation graph and these techniques for automatically carrying out derivative calculations. Is sometimes called autodiff, for automatic differentiation. This process of researchers manually using calculus to take derivatives is no longer done. 

> <img src="./images/w02-15-Larger_neural_network_example/img_2023-02-01_22-12-29.png">

> <img src="./images/w02-15-Larger_neural_network_example/img_2023-02-01_22-12-40.png">

> <img src="./images/w02-15-Larger_neural_network_example/img_2023-02-01_22-12-52.png">

## Optional Lab: Derivatives

## Optional Lab: Back propagation




# Practice Lab: Neural Networks for Multiclass classification