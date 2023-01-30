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

When you're building your own neural network, one of the decisions you need to make is how many hidden layers do you want and how many neurons do you want each hidden layer to have (architecture of the neural network)

> <img src="./images/w01-03-Demand_Prediction/img_2023-01-29_21-02-33.png">

## Example: Recognizing Images

> <img src="./images/w01-04-Example:_Recognizing_Images/img_2023-01-29_21-47-16.png">

In the first hidden layer, you might find one neuron that is looking for the low vertical line or a vertical edge like that. A second neuron looking for a oriented line or oriented edge like that. The third neuron looking for a line at that orientation, and so on. In the earliest layers of a neural network, you might find that the neurons are looking for very short lines or very short edges in the image. 

> <img src="./images/w01-04-Example:_Recognizing_Images/img_2023-01-29_21-50-39.png">

If you look at the next hidden layer, you find that these neurons might learn to group together lots of little short lines and little short edge segments in order to look for parts of faces. For example, each of these little square boxes is a visualization of what that neuron is trying to detect. This first neuron looks like it's trying to detect the presence or absence of an eye in a certain position of the image. The second neuron, looks like it's trying to detect like a corner of a nose and maybe this neuron over here is trying to detect the bottom of an ear. 

> <img src="./images/w01-04-Example:_Recognizing_Images/img_2023-01-29_21-50-47.png">

Then as you look at the next hidden layer in this example, the neural network is aggregating different parts of faces to then try to detect presence or absence of larger, coarser face shapes. Then finally, detecting how much the face corresponds to different face shapes creates a rich set of features that then helps the output layer try to determine the identity of the person picture. A remarkable thing about the neural network is you can learn these feature detectors at the different hidden layers all by itself. In this example, no one ever told it to look for short little edges in the first layer, and eyes and noses and face parts in the second layer and then more complete face shapes at the third layer. 

> <img src="./images/w01-04-Example:_Recognizing_Images/img_2023-01-29_21-52-20.png">

Just for fun, let's see what happens if you were to train this neural network on a different dataset, say on lots of pictures of cars, picture on the side. The same learning algorithm is asked to detect cars, will then learn edges in the first layer. Pretty similar but then they'll learn to detect parts of cars in the second hidden layer and then more complete car shapes in the third hidden layer. Just by feeding it different data, the neural network automatically learns to detect very different features so as to try to make the predictions of car detection or person recognition or whether there's a particular given task that is trained on

> <img src="./images/w01-04-Example:_Recognizing_Images/img_2023-01-29_21-54-51.png">


## Have questions, issues or ideas? Join our Community!




# Practice quiz: Neural networks intuition



# Neural network model

## Neural network layer

The fundamental building block of most modern neural networks is a **layer** of neurons. 

- This hidden layer receive four numbers as input and these four numbers are inputs to each of three neurons
- Each of these three neurons implements a little logistic regression function, and so each neurone has two parameters, w and b
- To denote each neurone, neurone 1 has two parameters, w<sub>1</sub> and b<sub>1</sub>


> <img src="./images/w01-05-Neural_network_layer/img_2023-01-30_16-08-32.png">

By convention, we give layers a number, (the input layer is also sometimes called layer 0) 

In order to introduce notation to help us distinguish between the different layers, we use superscript square bracket to index into different layers [1]

- Neurone one has two parameters : w<sub>1</sub><sup>[1]</sup> and b<sub>1</sub><sup>[1]</sup>
- In this example, these three neurons output 0.3, 0.7, and 0.2, and this vector of three numbers becomes the vector of activation values a, that is then passed to the final output layer of this neural network

> <img src="./images/w01-05-Neural_network_layer/img_2023-01-30_16-09-20.png">

Same for layer [2], called output layer

The input to layer 2 is the output of layer 1, (vector 0.3, 0.7, 0.2)

> <img src="./images/w01-05-Neural_network_layer/img_2023-01-30_16-09-40.png">

 Once the neural network has computed a<sup>[2]</sup>, there's one final optional step for binary prediction

> <img src="./images/w01-05-Neural_network_layer/img_2023-01-30_16-09-52.png">


## More complex neural networks

Input / Hidden / Output Layers
> <img src="./images/w01-06-More_complex_neural_networks/img_2023-01-30_16-38-19.png">

Notation of Activation Layer l, unit j is a<sub>j</sub><sup>[l]</sup> 
> <img src="./images/w01-06-More_complex_neural_networks/img_2023-01-30_16-40-39.png">

## Inference: making predictions (forward propagation)

Example of handwritten digit recognition. This algorithm makes **inferences** or make predictions

Layer 1 : 

> <img src="./images/w01-07-Inference:_making_predictions_(forward_propagation)/img_2023-01-30_16-46-08.png">

Layer 2 : 

> <img src="./images/w01-07-Inference:_making_predictions_(forward_propagation)/img_2023-01-30_16-46-16.png">

And then finally the output layer or outputs unit (what's the chance of this being 1 versus 0)

Because this computation goes from left to right, you start from x and compute a1, then a2, then a3 this algorithm is also called **forward propagation**. And this is in contrast to a different algorithm called **backward propagation** or back propagation, which is used for learning.

> <img src="./images/w01-07-Inference:_making_predictions_(forward_propagation)/img_2023-01-30_16-46-34.png">

## Neurons and Layers




# Practice quiz: Neural network model


# TensorFlow implementation

## Inference in Code

TensorFlow is one of the leading frameworks to implementing deep learning algorithms.
Example illustrate roasting coffee, with two parameters, temperature at which you're heating up the raw coffee beans, as well as the duration

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-55-42.png">

Good coffee correspond to a duration and temperature within this triangle. 

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-56-01.png">

- We're going to set x to be an array of two numbers :  200 degrees celsius and 17 minutes
- Then you create Layer 1 as this first hidden layer. Dense is another name for the layers of a neural network using sigmoid function as activation function
- then you compute a1 

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-56-27.png">

Idem for layer 2

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-56-35.png">

Finally, set threshold at 0.5

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-56-44.png">

If we translate previous example, (handwritten digit classification problem)

> <img src="./images/w01-08-Inference_in_Code/img_2023-01-30_17-56-55.png">


## Data in TensorFlow

NumPy was first created and became a standard library for linear algebra and Python. 
Later the Google brain team created TensorFlow. 
And unfortunately there are some inconsistencies between how data is represented in NumPy and in TensorFlow.

Why do you have this double square bracket in NumPy matrix/

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-16-29.png">

By convention the dimension of the matrix is written as the number of rows by the number of columns.
NumPy store a matrix as un array of rows

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-16-38.png">


> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-16-51.png">

To represent the input features x with TensorFlow the convention is to use matrices to represent the data (or 2D-vector)
- row vector (first example in slide)
- column vector (second example in slide)

Whereas in course one when we're working with linear regression and logistic regression, we use these 1D vectors 
- 1D vector (third example in slide)

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-17-09.png">

TensorFlow has switched conventions because it was designed to handle very large datasets
Representing the data in matrices instead of 1D arrays lets TensorFlow be a more computationally efficient internally
So in the following example, input is represented as a 1x2 matrix

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-17-15.png">

And there, a1 is a tf.tensor that correspond to a 1x3 matrix
A tensor here is a data type that the TensorFlow team had created in order to store and carry out computations on matrices efficiently. 
Technically a tensor is a little bit more general than the matrix but for the purposes of this course, think of tensor as just a way of representing matrices. 

Tensor can be converted into NumPy matrix 

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-17-33.png">

Same for Layer 2

> <img src="./images/w01-09-Data_in_TensorFlow/img_2023-01-30_18-17-49.png">

## Building a neural network

Seen previously, if you want to do forward propagation
 - you initialize the data X 
 - create layer one
 - create layer two 
 - and compute a two

This is an explicit way of implenting forward propagation, one layer of computation at the time


> <img src="./images/w01-10-Building_a_neural_network/img_2023-01-30_19-19-43.png">

It turns out that tensor flow has a different way of implementing forward prop
- create layer 1
- create layer 2
- instead of manually taking the data and passing it to layer one and then taking the activations from layer 1 and pass it to layer 2, we can tell tensor flow to take the 2 layers to form a neural network,  by sequentially string together these two layers 

> <img src="./images/w01-10-Building_a_neural_network/img_2023-01-30_19-26-23.png">

- model.fit is to train the netowrk
- model.predict to make a prediction

We can create Sequential deirectly, passing Dense into constructor

> <img src="./images/w01-10-Building_a_neural_network/img_2023-01-30_19-26-46.png">

Example of handwritten digit recognition:

> <img src="./images/w01-10-Building_a_neural_network/img_2023-01-30_19-31-39.png">

## Coffee Roasting in Tensorflow




# Practice quiz: TensorFlow implementation



# Neural network implemntation in python
## Forward prop in a single layer

With tensorflow or pytorch, we implement neural network with just these five lines of codes
To really know what the code is actually doing underneath the hood we implement it from scratch in python 

> <img src="./images/w01-11-Forward_prop_in_a_single_layer/img_2023-01-30_19-41-13.png">

## General implementation of forward propagation

In python, 

```
test = numpy.array([[1, 2], [3, 4], [5, 6]])
```

To access column 0:
```
>>> test[:, 0]
array([1, 3, 5])
```

To access row 0:
```
>>> test[0, :]
array([1, 2])
```

> <img src="./images/w01-12-General_implementation_of_forward_propagation/img_2023-01-30_19-48-33.png">

## CoffeeRoastingNumPy




# Practice quiz: Neural network implementation in Python


# Speculation on artificial general intelligence (AGI)

## Is there a path to AGI?

> <img src="./images/w01-13-Is_there_a_path_to_AGI/img_2023-01-30_20-08-54.png">

> <img src="./images/w01-13-Is_there_a_path_to_AGI/img_2023-01-30_20-09-44.png">

> <img src="./images/w01-13-Is_there_a_path_to_AGI/img_2023-01-30_20-09-58.png">

I don't know if the brain is really one or a small handful of algorithms, and even if it were, I have no idea, and I don't think anyone knows what the algorithm is, but I still this hope alive, and maybe it is, and maybe we could, through a lot of hard work, someday discover an approximation to it.

# Vectorization (Optional)

## How neural networks are implemented efficiently

## Matrix multiplication

## Matrix multiplication rules

## Matrix multiplication code




# Practice Lab: Neural Networks for Binary Classification

