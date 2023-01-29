# Neural Networks

This week, you'll learn about neural networks and how to use them for classification tasks. You'll use the TensorFlow framework to build a neural network with just a few lines of code. Then, dive deeper by learning how to code up your own neural...


# Neural Networks intuition

## Welcome!

> <img src="./images/w01-01-Welcome/img_2023-01-29_19-38-15.png">

## Neurons and the brain

> <img src="./images/w01-02-Neurons_and_the_brain/img_2023-01-29_19-43-29.png">

All of human thought is from neurons like this in your brain and mine, sending electrical impulses and sometimes forming new connections of other neurons. Given a neuron like this one, it has a number of inputs where it receives electrical impulses from other neurons, and then carries out some computations and will then send this outputs to other neurons by this electrical impulses

> <img src="./images/w01-02-Neurons_and_the_brain/img_2023-01-29_19-44-47.png">

Here's a simplified diagram of a biological neuron and comparison with software

Now, at this point, I'd like to give one big caveat, which is that even though I made a loose analogy between biological neurons and artificial neurons, I think that today we have almost no idea how the human brain works. In fact, every few years, neuroscientists make some fundamental breakthrough about how the brain works

> <img src="./images/w01-02-Neurons_and_the_brain/img_2023-01-29_20-36-28.png">

Why now?

> <img src="./images/w01-02-Neurons_and_the_brain/img_2023-01-29_20-39-15.png">


## Demand Prediction

The term a stands for activation, and it's actually a term from neuroscience, and it refers to how much a neuron is sending a high output to other neurons downstream from it.

It turns out that this logistic regression units or this little logistic regression algorithm, can be thought of as a very simplified model of a single neuron in the brain

Another way to think of a neuron is as a tiny little computer whose only job is to input one number or a few numbers, such as a price, and then to output one number or maybe a few other numbers which in this case is the probability of the T-shirt being a top seller. 

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-52-29.png">

Let's now look at a more complex example of demand prediction with 4 features to predict whether or not a T-shirt is a top seller:
 - the price of the T-shirt, 
 - the shipping costs, 
 - the amounts of marketing 
 - the material quality

Now, you might suspect that whether or not a T-shirt becomes a top seller actually depends on a few factors: 
- the affordability of this T-shirt
- what's the degree of awareness of this T-shirt that potential buyers have
- perceived quality

We create 
- one artificial neuron to try to estimate the probability that this T-shirt is perceive as highly affordable, function of :
    - the price
    - the shipping costs 
- one artificial neuron here to estimate awareness, function of 
    - the marketing of the T-shirt.    
- one neuron to estimate do people perceive this to be of high quality, and that may mainly be a function of 
    - the price of the T-shirt and 
    - the material quality

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-53-22.png">

Given these estimates of affordability, awareness, and perceived quality we then wire the outputs of these three neurons to another neuron, that then there's another logistic regression unit. That finally inputs those three numbers and outputs the probability of this t-shirt being a top seller. 

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-53-28.png">

In the terminology of neural networks, we're going to group these three neurons together into what's called a **layer**. A layer is a grouping of neurons which takes as input the same or similar features, and that in turn outputs a few numbers together. 

These numbers on affordability, awareness, and perceived quality are the **activations** of these three neurons in this layer, and also this output probability is the activation of this neuron shown here on the right. The term activations comes from biological neurons, and it refers to the degree that the biological neuron is sending a high output value or sending many electrical impulses to other neurons to the downstream from it

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-55-27.png">

Now, there's one simplification I'd like make to this neural network. The way a neural network is implemented in practice each neuron in a certain layer; say this layer in the middle, will have access to every feature, to every value from the previous layer, from the input layer which is why I'm now drawing arrows from every input feature to every one of these neurons shown here in the middle

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-56-30.png">

To further simplify the notation and the description of this neural network I'm going to take these four input features and write them as a vector x, and we're going to view the neural network as having four features that comprise this feature vector x.

The layer in the middle is called a hidden layer. You don't see them in the training set, which is why this layer in the middle is called a hidden layer

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-58-17.png">

There is another way of thinking about neural networks.
Rrather than using the original features, price, shipping cost, marketing, and so on, is using better set of features, affordability, awareness, and perceived quality, that are hopefully more predictive of whether or not this t-shirt will be a top seller.
It's just logisitc regression, but with **feature engineering**. 

What the neural network does is instead of you needing to manually engineer the features, it can learn, as you'll see later, its own features to make the learning problem easier for itself. 

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_20-59-51.png">

This question of how many hidden layers and how many neurons per hidden layer is a question of the architecture of the neural network. You'll learn later in this course some tips for choosing an appropriate architecture for a neural network

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_21-02-33.png">

## Example: Recognizing Images

## Have questions, issues or ideas? Join our Community!




# Practice quiz: Neural networks intuition



# Neural network model

## Neural network layer

## More complex neural networks

## Inference: making predictions (forward propagation)

## Neurons and Layers




# Practice quiz: Neural network model


# TensorFlow implementation

## Inference in Code

## Data in TensorFlow

## Building a neural network

## Coffee Roasting in Tensorflow




# Practice quiz: TensorFlow implementation



# Neural network implemntation in python

## Forward prop in a single layer

## General implementation of forward propagation

## CoffeeRoastingNumPy




# Practice quiz: Neural network implementation in Python


# Speculation on artificial general intelligence (AGI)

## Is there a path to AGI?



# Vectorization (Optional)

## How neural networks are implemented efficiently

## Matrix multiplication

## Matrix multiplication rules

## Matrix multiplication code




# Practice Lab: Neural Networks for Binary Classification

