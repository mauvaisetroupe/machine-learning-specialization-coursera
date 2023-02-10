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

## Deep learning for content-based filtering

## Recommending from a large catalogue

## Ethical use of recommender systems

## TensorFlow implementation of content-based filtering




# Principal component analysis

## Reducing the number of features (optional)

## PCA algorithm (optional)

## PCA in code (optional)

## PCA and data visualization (optional)
