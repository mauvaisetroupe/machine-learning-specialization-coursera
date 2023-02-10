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



# Recommender systems implementation detail

## Mean normalization

## TensorFlow implementation of collaborative filtering

## Finding related items




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

