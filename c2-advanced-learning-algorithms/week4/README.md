# Decision trees

This week, you'll learn about a practical and very commonly used learning algorithm the decision tree. You'll also learn about variations of the decision tree, including random forests and boosted trees (XGBoost).


# Decision trees

## Decision tree model

> <img src="./images/w04-01-Decision_tree_model/img_2023-02-05_19-25-09.png">

Here's an example of a model that you might get after training a decision tree learning algorithm on the data set that you just saw. 

Terminology:
- Every one of these ovals or rectangles is called a **node** in the tree.
- Top node is called **root node**
- ovals nodes are called **decision nodes** (beacaude, based on the features, they decide to go roght or left in the tree)
- Rectangle at the bottom are call **leaf nodes** and they make prediction

> <img src="./images/w04-01-Decision_tree_model/img_2023-02-05_19-27-00.png">

Among these different decision trees, some will do better and some will do worse on the training sets or on the cross-validation and test sets. The job of the decision tree learning algorithm is, out of all possible decision trees, to try to pick one that hopefully does well on the training set, and then also ideally generalizes well to new data such as your cross-validation and test sets as well

> <img src="./images/w04-01-Decision_tree_model/img_2023-02-05_19-36-17.png">

## Learning Process

One nodes is completely **pure**, when there's no longer a mix of cats and dogs 

> <img src="./images/w04-02-Learning_Process/img_2023-02-05_20-59-07.png">

At the root node, as well as on the left branch and the right branch of the decision tree, we had to decide if there were a few examples at that node comprising a mix of cats and dogs. That decision should maximize purity. By purity, I mean, you want to get to what subsets, which are as close as possible to all cats or all dogs. 

Because it is if you can get to a highly pure subsets of examples, then you can either predict cat or predict not cat and get it mostly right. 

> <img src="./images/w04-02-Learning_Process/img_2023-02-05_20-59-25.png">

If you had decided that the maximum depth of the decision, then you would decide not to split any nodes below this level for 2 reasons:
- make sure the tree doesn't get too big and unwieldy 
- it makes it less prone to overfitting

> <img src="./images/w04-02-Learning_Process/img_2023-02-05_20-59-41.png">

We stop if purity improvement is below a threshold, or if number of examples is below a threshold

> <img src="./images/w04-02-Learning_Process/img_2023-02-05_21-00-02.png">

It could ssem complicated, but these different pieces fit together into a very effective learning algorithm.
Open source packages can help so in the complicated procedure for making all these decisions, like how do I decide to stop splitting

# Practice quiz: Decision trees



# Decision trees learning

## Measuring purity

Entropy is a measure of the impurity of a set of data

> <img src="./images/w04-03-Measuring_purity/img_2023-02-07_16-15-53.png">

Note that :
- entropy function is define with $log_2$ (base 2)
- log(0) is technically undefined, it's actually negative infinity, but by convention for the purposes of computing entropy, we'll take 0*log(0)
- definition of entropy looks a like the definition of the logistic loss (mathematical rationale not seen here)
- entropy could be replaced by **gini criteria**

> <img src="./images/w04-03-Measuring_purity/img_2023-02-07_16-18-08.png">

## Choosing a split: Information Gain

At the root node, we have started off with all 10 examples, with five cats and dogs, and so at the root node, we had $p_1$ equals 5/10
This formula, is called **information gain**, and it measures the reduction in entropy 

> <img src="./images/w04-04-Choosing_a_split_Information_Gain/img_2023-02-07_16-48-57.png">

A more formal definition is:

> <img src="./images/w04-04-Choosing_a_split_Information_Gain/img_2023-02-07_16-50-46.png">


## Putting it together

> <img src="./images/w04-05-Putting_it_together/img_2023-02-07_16-53-28.png">

The way we built the right subtree was by, again, building a decision tree on a subset of five examples. In computer science, this is an example of a recursive algorithm. 

> <img src="./images/w04-05-Putting_it_together/img_2023-02-07_16-55-07.png">

## Using one-hot encoding of categorical features

When we have a feature with three possible values instead of just two possible values you can create a three subsets of the data and end up building three sub branches for this tree.

> <img src="./images/w04-06-Using_one-hot_encoding_of_categorical_features/img_2023-02-07_18-23-16.png">

But there is a different way of addressing features that can take on more than two values, which is to use the **one-hot encoding**. 

> <img src="./images/w04-06-Using_one-hot_encoding_of_categorical_features/img_2023-02-07_18-24-08.png">

In our exemple

> <img src="./images/w04-06-Using_one-hot_encoding_of_categorical_features/img_2023-02-07_18-24-36.png">

The idea of using one-hot encodings to encode categorical features also works for training neural networks. In particular if you were to take the face shape feature and replace round and not round with 1 and 0, etc.

> <img src="./images/w04-06-Using_one-hot_encoding_of_categorical_features/img_2023-02-07_18-25-40.png">


## Continuous valued features

## Regression Trees (optional)

## Optional Lab: Decision Trees



# Practice quiz: Decision tree learning



# Tree ensembles

## Using multiple decision trees

## Sampling with replacement

## Random forest algorithm

## XGBoost

## When to use decision trees

## Optional Lab: Tree Ensembles



# Practice quiz: Tree ensembles




# Practice Lab: Decision Trees




# Acknowledgements

