# About Machine Learning specialization

https://www.coursera.org/specializations/machine-learning-introduction


The Machine Learning Specialization is a foundational online program created in collaboration between DeepLearning.AI and Stanford Online. This beginner-friendly program will teach you the fundamentals of machine learning and how to use these techniques to build real-world AI applications. 

This Specialization is taught by Andrew Ng, an AI visionary who has led critical research at Stanford University and groundbreaking work at Google Brain, Baidu, and Landing.AI to advance the AI field.

This 3-course Specialization is an updated version of Andrew’s pioneering Machine Learning course, rated 4.9 out of 5 and taken by over 4.8 million learners since it launched in 2012. 

It provides a broad introduction to modern machine learning, including supervised learning (multiple linear regression, logistic regression, neural networks, and decision trees), unsupervised learning (clustering, dimensionality reduction, recommender systems), and some of the best practices used in Silicon Valley for artificial intelligence and machine learning innovation (evaluating and tuning models, taking a data-centric approach to improving performance, and more.)

By the end of this Specialization, you will have mastered key concepts and gained the practical know-how to quickly and powerfully apply machine learning to challenging real-world problems. If you’re looking to break into AI or build a career in machine learning, the new Machine Learning Specialization is the best place to start.


# Applied Learning Project

By the end of this Specialization, you will be ready to:
 - Build machine learning models in Python using popular machine learning libraries NumPy and scikit-learn.
 - Build and train supervised machine learning models for prediction and binary classification tasks, including linear regression and logistic regression.
 - Build and train a neural network with TensorFlow to perform multi-class classification.
 - Apply best practices for machine learning development so that your models generalize to data and tasks in the real world.
 - Build and use decision trees and tree ensemble methods, including random forests and boosted trees.
 - Use unsupervised learning techniques for unsupervised learning: including clustering and anomaly detection.
 - Build recommender systems with a collaborative filtering approach and a content-based deep learning method.
 - Build a deep reinforcement learning model.


## Supervised Machine Learning: Regression and Classification

[In the first course of the Machine Learning Specialization](./c1-supervised-ML-regression-and-classification/README.md), you will:

- Build machine learning models in Python using popular machine learning libraries NumPy and scikit-learn.
- Build and train supervised machine learning models for prediction and binary classification tasks, including linear regression and logistic regression

[Week 1: Introduction to Machine Learning](./c1-supervised-ML-regression-and-classification/week1/README.md)

Welcome to the Machine Learning Specialization! You're joining millions of others who have taken either this or the original course, which led to the founding of Coursera, and has helped millions of other learners, like you, take a look at the exciting world of machine learning!

Learning Objectives
- Define machine learning
- Define supervised learning
- Define unsupervised learning
- Write and run Python code in Jupyter Notebooks
- Define a regression model
- Implement and visualize a cost function
- Implement gradient descent
- Optimize a regression model using gradient descent

[Week 2: Regression with multiple input variables](./c1-supervised-ML-regression-and-classification/week2/README.md)

This week, you'll extend linear regression to handle multiple input features. You'll also learn some methods for improving your model's training and performance, such as vectorization, feature scaling, feature engineering and polynomial regression. At the end of the week, you'll get to practice implementing linear regression in code.

Learning Objectives
- Use vectorization to implement multiple linear regression
- Use feature scaling, feature engineering, and polynomial regression to improve model training
- Implement linear regression in code

[Week 3: Classification](./c1-supervised-ML-regression-and-classification/week3/README.md)

This week, you'll learn the other type of supervised learning, classification. You'll learn how to predict categories using the logistic regression model. You'll learn about the problem of overfitting, and how to handle this problem with a method called regularization. You'll get to practice implementing logistic regression with regularization at the end of this week!

Learning Objectives
- Use logistic regression for binary classification
- Implement logistic regression for binary classification
- Address overfitting using regularization, to improve model performance


## Advanced Learning Algorithms

[In the second course of the Machine Learning Specialization](./c2-advanced-learning-algorithms/README.md), you will:

- Build and train a neural network with TensorFlow to perform multi-class classification
- Apply best practices for machine learning development so that your models generalize to data and tasks in the real world
- Build and use decision trees and tree ensemble methods, including random forests and boosted trees


[Week 1 - Neural Networks](./c2-advanced-learning-algorithms/week1/README.md)

This week, you'll learn about neural networks and how to use them for classification tasks. You'll use the TensorFlow framework to build a neural network with just a few lines of code. Then, dive deeper by learning how to code up your own neural network in Python, "from scratch". Optionally, you can learn more about how neural network computations are implemented efficiently using parallel processing (vectorization).

Learning Objectives
- Get familiar with the diagram and components of a neural network
- Understand the concept of a "layer" in a neural network
- Understand how neural networks learn new features.
- Understand how activations are calculated at each layer.
- Learn how a neural network can perform classification on an image.
- Use a framework, TensorFlow, to build a neural network for classification of an image.
- Learn how data goes into and out of a neural network layer in TensorFlow
- Build a neural network in regular Python code (from scratch) to make predictions.
- (Optional): Learn how neural networks use parallel processing (vectorization) to make computations faster.

[Week 2 - Neural Networks Training](./c2-advanced-learning-algorithms/week2/README.md)

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

[Week 3 - Advice for applying machine learning](./c2-advanced-learning-algorithms/week3/README.md)

This week you'll learn best practices for training and evaluating your learning algorithms to improve performance. This will cover a wide range of useful advice about the machine learning lifecycle, tuning your model, and also improving your training data.

Learning Objectives
- Evaluate and then modify your learning algorithm or data to improve your model's performance
- Evaluate your learning algorithm using cross validation and test datasets.
- Diagnose bias and variance in your learning algorithm
- Use regularization to adjust bias and variance in your learning algorithm
- Identify a baseline level of performance for your learning algorithm
- Understand how bias and variance apply to neural networks
- Learn about the iterative loop of Machine Learning Development that's used to update and improve a machine learning model
- Learn to use error analysis to identify the types of errors that a learning algorithm is making
- Learn how to add more training data to improve your model, including data augmentation and data synthesis
- Use transfer learning to improve your model's performance.
- Learn to include fairness and ethics in your machine learning model development
- Measure precision and recall to work with skewed (imbalanced) datasets

[Week 4 - Decision trees](./c2-advanced-learning-algorithms/week4/README.md)

This week, you'll learn about a practical and very commonly used learning algorithm the decision tree. You'll also learn about variations of the decision tree, including random forests and boosted trees (XGBoost).

Learning Objectives
- See what a decision tree looks like and how it can be used to make predictions
- Learn how a decision tree learns from training data
- Learn the "impurity" metric "entropy" and how it's used when building a decision tree
- Learn how to use multiple trees, "tree ensembles" such as random forests and boosted trees
- Learn when to use decision trees or neural networks

##  Unsupervised Learning, Recommenders, Reinforcement Learning

[In the third course of the Machine Learning Specialization](./c3-unsupervised-learning/README.md), you will:

- Use unsupervised learning techniques for unsupervised learning: including clustering and anomaly detection.
- Build recommender systems with a collaborative filtering approach and a content-based deep learning method.
- Build a deep reinforcement learning model.

[Week 1 - Unsupervised learning](./c3-unsupervised-learning/week1/README.md)

This week, you will learn two key unsupervised learning algorithms: clustering and anomaly detection

Learning Objectives
- Implement the k-means clustering algorithm
- Implement the k-means optimization objective
- Initialize the k-means algorithm
- Choose the number of clusters for the k-means algorithm
- Implement an anomaly detection system
- Decide when to use supervised learning vs. anomaly detection
- Implement the centroid update function in k-means
- Implement the function that finds the closest centroids to each point in k-means


[Week 2 - Recommender systems](./c3-unsupervised-learning/week2/README.md)

Learning Objectives
- Implement collaborative filtering recommender systems in TensorFlow
- Implement deep learning content based filtering using a neural network in TensorFlow
- Understand ethical considerations in building recommender systems

[Week 3 - Reinforcement learning](./c3-unsupervised-learning/week3/README.md)

This week, you will learn about reinforcement learning, and build a deep Q-learning neural network in order to land a virtual lunar lander on Mars!

Learning Objectives
- Understand key terms such as return, state, action, and policy as it applies to reinforcement learning
- Understand the Bellman equations
- Understand the state-action value function
- Understand continuous state spaces
- Build a deep Q-learning network
