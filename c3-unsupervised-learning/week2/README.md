# Recommender Systems


# Collaborative filtering

## Making recommendations

Recommendations systems are used for online shopping website like Amazon or a movie streaming sites like Netflix.
For many companies, the economics or the value driven by recommended systems  is very large

So with this framework for recommended systems one possible way to approach the problem is to look at the movies that users have not rated. And to try to predict how users would rate those movies.

> <img src="./images/w02-01-Making_recommendations/img_2023-02-10_16-17-58.png">

## Using per-item features


In a first stage, we are making assumption we have access to features or extra information about the movies such as which movies are romance movies, which movies are action movies

And this is a lot like linear regression, except that we're fitting a different linear regression model for each of the 4 users in the dataset

> <img src="./images/w02-02-Using_per-item_features/img_2023-02-10_16-19-54.png">

So the algorithm is very similar to linear regression. But when calculate cost function :
- we focus on a single user j ,  so we write out the cost function for learning the parameters w(j) and b(j) for a given user j
- we use only movies rated by the user, so we sum only over the movies i that user j has actually rated, so all values where r(i,j)=1
- we eliminate this division by m(j) term, m(j) is just a constant in this expression (convenience reason not explained)

> <img src="./images/w02-02-Using_per-item_features/img_2023-02-10_16-20-29.png">

If we do the same for all user, we sum the cost function over all the $n_u$ users.

> <img src="./images/w02-02-Using_per-item_features/img_2023-02-10_16-20-46.png">


## Collaborative filtering algorithm


We now assume we don't have any more features qualifying the movies (romance, action, etc)

Now, just for the purposes of illustration, let's say we had somehow already learned parameters for the four users w1, w2, ... w4 for the 4 users and b1, ... b4 that we will ignore (equals to 0)

What we have is that if you have the parameters for all four users 1, and if you have 4 ratings, you can take a reasonable guess at what lists a feature vector (x1,x2) for movie 1 that would make good predictions for these four ratings up on top

By the way, notice that this works only because we have parameters for four users.

That's what allows us to try to guess appropriate features, x1.

This is why in a typical linear regression application if you had just a single user, you don't actually have enough information to figure out what would be the features, x1 and x2, which is why in the linear regression contexts (course 1), you can't come up with features x1 and x2 from scratch.

But in collaborative filtering, is because you have ratings from multiple users of the same item with the same movie. That's what makes it possible to try to guess what are possible values for these features (not clear why...)

> <img src="./images/w02-03-Collaborative_filtering_algorithm/img_2023-02-10_16-24-47.png">

If you want to learn the features $x^i$ for a specific movie I :
- we defined this as a cost function for $x^i$
- and then we minimize this as a function of J($x^i$), the features for movie i

So if you have parameters w and b, all the users, then minimizing this cost function as a function of x1 through x^n_m using gradient descent or cellular algorithm, this will actually allow you to take a pretty good guess at learning good features for the movies.

> <img src="./images/w02-03-Collaborative_filtering_algorithm/img_2023-02-10_16-25-26.png">

If we combine the two cost functions:
- the one to find wi and bi
- the one to find xi

> <img src="./images/w02-03-Collaborative_filtering_algorithm/img_2023-02-10_16-26-02.png">

We could minimize this cost function J(w, b, x) using gradient descent.

> <img src="./images/w02-03-Collaborative_filtering_algorithm/img_2023-02-10_16-26-19.png">


## Binary labels: favs, likes and clicks


Many applications of recommended systems involved binary labels where instead of a user giving you a rating (like instead of stars)

We can generalize the rating algorithm to ninary labels.The process used to generalize the algorithm is quite similar to the approach used to go from linear regression to logistic regression

> <img src="./images/w02-04-Binary_labels_favs,_likes_and_clicks/img_2023-02-10_16-34-41.png">

Few examples :

> <img src="./images/w02-04-Binary_labels_favs,_likes_and_clicks/img_2023-02-10_16-35-53.png">

We go from linear regression to binary classification using the **logistic function**

> <img src="./images/w02-04-Binary_labels_favs,_likes_and_clicks/img_2023-02-10_16-36-45.png">

We go from linear regression to binary classification binary using **cross entropy cost function**  

> <img src="./images/w02-04-Binary_labels_favs,_likes_and_clicks/img_2023-02-10_16-38-49.png">


# Recommender systems implementation detail

## Mean normalization

For linear regression, future normalization can help the algorithm run faster (scaling features in order to have same magnitude)

Problem with collaborative filtering algorithm is that it predicts 0 star for all films for a new user that has not yet rated anything

> <img src="./images/w02-05-Mean_normalization/img_2023-02-10_16-54-16.png">

In order to correct that, we calculate the mean for all rows and substract the mean to all coefficient of the row

With that modification, by default, algorithm predict the mean of rating on the same movie by other users 

> <img src="./images/w02-05-Mean_normalization/img_2023-02-10_16-58-39.png">

## TensorFlow implementation of collaborative filtering

TensorFlow is a tool for building neural network, but TensorFlow can also be very hopeful for building other types of learning algorithms as well like the collaborative filtering algorithm. 

TensorFlow is helpful to implement gradient descent, it can automatically figure out what are the derivatives of the cost function. All you have to do is implement the cost function and without needing to know any calculus, without needing to take derivatives yourself, you can get TensorFlow with just a few lines of code to compute that derivative term, that can be used to optimize the cost function. 

Sometimes computing this derivative or partial derivative term can be difficult. And it turns out that TensorFlow can help with that. 

> <img src="./images/w02-06-TensorFlow_implementation_of_collaborative_filtering/img_2023-02-10_17-10-02.png">


For simplification, we take :
- b = 0, so $f_w(x) = wx$
- only one training example, so cost function has only one term  

So this procedure allows you to implement gradient descent without computing this derivative term df/dw 

This is a very powerful feature of TensorFlow called [Auto Diff](../../c2-advanced-learning-algorithms/week2/README.md#larger-neural-network-example-optional). And some other machine learning packages like pytorch also support Auto Diff

Sometimes you hear people call this Auto Grad. The technically correct term is Auto Diff, and Auto Grad is actually the name of the specific software package for doing automatic differentiation

You can also use a more powerful optimization algorithm, like the [adam optimization algorithm](../../c2-advanced-learning-algorithms/week2/README.md#advanced-optimization)

> <img src="./images/w02-06-TensorFlow_implementation_of_collaborative_filtering/img_2023-02-10_17-39-35.png">

In order to implement the collaborative filtering algorithm TensorFlow, this is the syntax you can use

> <img src="./images/w02-06-TensorFlow_implementation_of_collaborative_filtering/img_2023-02-10_17-40-46.png">

## Finding related items

Is quite hard to interpret individualy $x_1^i$, ..., $x_n^i$, saying $x_1$ is an action movie and $x_2$ is as a foreign film and so on. 
But nonetheless, collectively $x_1$, $x_2$, $x_3$, do convey something about what that movie is like.

So if movies related to movie i, then what you can do is try to find the item k with features $x^{(k)}$ that is similar to $x^{(i)}$.

> <img src="./images/w02-07-Finding_related_items/img_2023-02-10_19-02-24.png">

Limitations

> <img src="./images/w02-07-Finding_related_items/img_2023-02-10_19-05-42.png">




# Content-based filtering

## Collaborative filtering vs Content-based filtering

Content-based filtering differ fron collaborative filtering. The algorithm consists in matching user features with movies features

> <img src="./images/w02-08-Collaborative_filtering_vs_Content-based_filtering/img_2023-02-10_19-09-26.png">

The process starts building a vector with user features and another with movies features

> <img src="./images/w02-08-Collaborative_filtering_vs_Content-based_filtering/img_2023-02-10_19-12-35.png">

The problem is that the user and movies vectors don´t have the same size. We need to find a method to obtain two vectors of same size in order to use a linear expression $w^j.x^i + b$ for user j and movie i

> <img src="./images/w02-08-Collaborative_filtering_vs_Content-based_filtering/img_2023-02-10_19-51-50.png">

## Deep learning for content-based filtering

The first neural network is the user network that takes as input the list of features of the user, $x_u$, then using a few layers will output a vector $v_u$ that describes the user. The output layer has 32 units

Similarly, to compute $v_m$ for a movie with a movie network. 

> <img src="./images/w02-09-Deep_learning_for_content-based_filtering/img_2023-02-10_22-50-30.png">

Actually, we combine the two networks into a single one, using the dot operator two cobine the two outputs.

> <img src="./images/w02-09-Deep_learning_for_content-based_filtering/img_2023-02-10_22-51-11.png">

This can be pre-computed ahead of time, you can run a compute server overnight to go through the list of all your movies and for every movie, find similar movies to it, so that if a user comes to the website and they're browsing a specific movie, you can already have pre-computed to 10 or 20 most similar movies to show to the user at that time (important for scalability)

> <img src="./images/w02-09-Deep_learning_for_content-based_filtering/img_2023-02-10_22-51-47.png">

It may be worth spending some time engineering good features for this application because the algorithm can be computationally very expensive to run if you have a large catalog of a lot of different movies you may want to recommend. 

## Recommending from a large catalogue

> <img src="./images/w02-10-Recommending_from_a_large_catalogue/img_2023-02-10_23-07-36.png">

Step 1 : retrieve plausible movies
- For each of the last 10 movies that the user has watched find the 10 most similar movies (can be pre computed)
- top movies by genres
- top movies by countries...


> <img src="./images/w02-10-Recommending_from_a_large_catalogue/img_2023-02-10_23-08-20.png">

Step 2 : do the ranking on plausible movies list
(One additional optimization is that we can computed VM in advance for all movies) 

> <img src="./images/w02-10-Recommending_from_a_large_catalogue/img_2023-02-10_23-08-47.png">

Retrieval step trade-off

> <img src="./images/w02-10-Recommending_from_a_large_catalogue/img_2023-02-10_23-09-16.png">

## Ethical use of recommender systems

Many websites that are not showing you the most relevant product but the products that will generate the largest profit for the company.

> <img src="./images/w02-11-Ethical_use_of_recommender_systems/img_2023-02-12_07-35-52.png">

A payday loan is a short-term financial solution.

> <img src="./images/w02-11-Ethical_use_of_recommender_systems/img_2023-02-12_07-39-03.png">

Othe example

> <img src="./images/w02-11-Ethical_use_of_recommender_systems/img_2023-02-12_07-39-44.png">


## TensorFlow implementation of content-based filtering

We use a sequential model : 
- one for user
- another for movies

Next, we need to tell TensorFlow Keras how to feed the user features or the item features, then compute the vector $V_u$ and normalize (norm=1) to make the algorithm work better. Idem for vetor $V_m$

Next, have the dot product of $V_u$ and $V_m$

> <img src="./images/w02-12-TensorFlow_implementation_of_content-based_filtering/img_2023-02-12_07-50-15.png">



# Principal component analysis

## Reducing the number of features (optional)

This is an algorithm that is commonly used by data scientists to visualize the data, to figure out what might be going on.

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_07-57-16.png">

In both the examples we saw, only one of the two features seemed to have a meaningful degree of variation.

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_07-57-59.png">

Or find a new axis, combining two different features 

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_08-01-42.png">

We can for example reduce from 3D to a 2D (in that case aligned in a common plane)

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_08-03-29.png">

We can reduce from 50 features to only 2 features, combining features together

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_08-04-57.png">

You might find for example that $Z_1$ loosely corresponds to how big is the country and what is this total GDP, and $Z_2$ corresponds roughly to the per person GDP (Gross domestic product - PIB in French language)

> <img src="./images/w02-13-Reducing_the_number_of_features/img_2023-02-12_08-06-43.png">


## PCA algorithm (optional)

## PCA in code (optional)

## PCA and data visualization (optional)

