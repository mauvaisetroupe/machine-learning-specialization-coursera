# Unsupervides learnig

This week, you will learn two key unsupervised learning algorithms: clustering and anomaly detection

## Welcome!

> <img src="./images/w01-01-Welcome/img_2023-02-07_22-31-22.png">



# Clustering 

## What is clustering?

A clustering algorithm looks at a number of data points and automatically finds data points that are related or similar to each other.

In supervised learning, the dataset included both the inputs x as well as the target outputs y.

> <img src="./images/w01-02-What_is_clustering/img_2023-02-08_09-05-35.png">

In contrast, in unsupervised learning, you are given a dataset but not the the target labels y. 

Instead, we're going to ask the algorithm to find something interesting about the data, and in particular for algorithm called clustering algorithm, we look if the dataset can be grouped into clusters, meaning groups of points that are similar to each other.

> <img src="./images/w01-02-What_is_clustering/img_2023-02-08_09-09-54.png">

Exemple of applications

> <img src="./images/w01-02-What_is_clustering/img_2023-02-08_09-10-36.png">


## K-means intuition

- STEP 0 : randomly pick two points,which I've shown here as a red cross and the blue cross, at where might be the centers of two different clusters.
- STEP 1 : Go through each of these points and look at whether it is closer to the red cross or to the blue cross. 

> <img src="./images/w01-03-K-means_intuition/img_2023-02-08_09-15-48.png">

- STEP 2 : Move the red cross to whatever is the average location of the red dots, that is the red cluster centroid will move here. 

> <img src="./images/w01-03-K-means_intuition/img_2023-02-08_09-16-37.png">
> <img src="./images/w01-03-K-means_intuition/img_2023-02-08_09-17-44.png">

Keep on repeating these two steps, until ther are no more changes

> <img src="./images/w01-03-K-means_intuition/img_2023-02-08_09-24-36.png">


## K-means algorithm

When you implement this algorithm, you find that it's actually a little bit more convenient to minimize the squared distance because the cluster centroid with the smallest square distance should be the same as the cluster centroid with the smallest distance. 


> <img src="./images/w01-04-K-means_algorithm/img_2023-02-08_09-37-43.png">

Each of these x values are vectors with n numbers in them if you have n features

If a cluster has zero training examples assigned to it:
- the most common thing to do is to just eliminate that cluster
- an alternative would be to just randomly reinitialize that cluster centroid

> <img src="./images/w01-04-K-means_algorithm/img_2023-02-08_09-40-01.png">

K-means is also frequently applied to data sets where the clusters are not that well separated

> <img src="./images/w01-04-K-means_algorithm/img_2023-02-08_13-01-47.png">


## Optimization objective

The cost function J is a function of :
- $c^{<1>}$, ... $c^{<m>}$ the indexes of cluster chosen for each point $x^{<i>}$
- $\mu_1$, ...  $\mu_k$ the centers of the clusters

> <img src="./images/w01-05-Optimization_objective/img_2023-02-08_14-04-34.png">

The cost function is the average of squared distance between every training example $x^{<i>}$ and $\mu_{c(i)}$ the location of the cluster centroid to which the training example has been assigned

The K means algorithm is trying to find assignments of points of clusters centroid as well as find locations of clusters centroid that minimizes the squared distance

And what they will do on every step is try to update 
- the cluster assignments 
- the positions of the cluster centralism, 
in order to keep on reducing this cost function J

> <img src="./images/w01-05-Optimization_objective/img_2023-02-08_14-06-27.png">

By the way, this cost function J is called the distortion function 

> <img src="./images/w01-05-Optimization_objective/img_2023-02-08_14-06-56.png">

Let's now take a deeper look at the algorithm 
- The first part update C1 through CM to minimize the cost function J as much as possible while holding $\mu$ fixes. 
- Tnd second part, C1 through CM are fix, we update $\mu{1}$, $\mu{k}$ to minimize the cost function or the distortion as much as possible.

> <img src="./images/w01-05-Optimization_objective/img_2023-02-08_14-41-27.png">

How moving the centroid decreases the average of distances

> <img src="./images/w01-05-Optimization_objective/img_2023-02-08_14-44-00.png">

The distortion cost function should go down or stay the same in the worst case (if it goes up, that means there's a bug in the code)

## Initializing K-means

The very first step of the K means clustering algorithm, was to choose random locations as the initial guesses for the cluster centroids 

> <img src="./images/w01-06-Initializing_K-means/img_2023-02-08_14-51-53.png">

Depending on how you choose the initail random centroid of the clusters, you end up with different data sets.
But with this less fortunate choice of random initialization, that gets stuck in a local minimum.

> <img src="./images/w01-06-Initializing_K-means/img_2023-02-08_14-54-12.png">

The solution is to run it multiple times and then to try to find the best local optima.

> <img src="./images/w01-06-Initializing_K-means/img_2023-02-08_15-01-53.png">

More formally, here is the algorithm if you want to rank multiple times using different random initialization

> <img src="./images/w01-06-Initializing_K-means/img_2023-02-08_16-26-11.png">

## Choosing the number of clusters




# Practice Quiz Clustering



# Practice Lab - k-means


# Anomaly detection

## Finding unusual events

## Gaussian (normal) distribution

## Anomaly detection algorithm

## Developing and evaluating an anomaly detection system

## Anomaly detection vs. supervised learning

## Choosing what features to use



# Practice Quiz - Anomaly detection

# Practice Lab2 - Anomaly Detection