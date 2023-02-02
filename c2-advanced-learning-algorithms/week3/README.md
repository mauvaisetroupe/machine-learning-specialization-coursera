# Advice for applying machine learning

This week you'll learn best practices for training and evaluating your learning algorithms to improve performance. This will cover a wide range of useful advice about the machine learning lifecycle, tuning your model, and also improving your training data.

# Advice for applying machine learning

## Deciding what to try next


"I've seen teams sometimes, say six months to build a machine learning system, that I think a more skilled team could have taken or done in just a couple of weeks." The efficiency of how quickly you can get a machine learning system to work well, will depend to a large part on how well you can repeatedly make good decisions 

> <img src="./w03-01-Deciding_what_to_try_next/img_2023-02-02_23-00-43.png">


Diagnostics can take time to implement, but running them can be a very good use of your time

> <img src="./w03-01-Deciding_what_to_try_next/img_2023-02-02_23-00-51.png">


## Evaluating a model

In the graph below, we use just a single feature (the size of the house) and we can see the curve is very weakly so we know this parody isn't a good model. But with more features it becomes much harder to plot f() and detect the model is not correct

We need some more systematic way to evaluate how well your model is doing

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-07-11.png">

Let's put 70% of the data into the first part to the train the model. 
And the second part of the data, 30% of the data, to test his performance

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-15-55.png">

Cost function is used to train the model, but cost function (without regularization term) is also computed on test set in order to know if the model is doing well.

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-16-07.png">

In that case, cost function is fine on training set, but is not acceptable on test set.

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-16-17.png">

The same approach is also woking for classification problem

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-16-25.png">

For classification, you could use the fraction of missclassified to get acceptance test

> <img src="./w03-02-Evaluating_a_model/img_2023-02-02_23-16-39.png">


## Model selection and training/cross validation/test sets

## Optional Lab: Model Evaluation and Selection




# Practice quiz: Advice for applying machine learning



# Bias and variance

## Diagnosing bias and variance

## Regularization and bias/variance

## Establishing a baseline level of performance

## Learning curves

## Deciding what to try next revisited

## Bias/variance and neural networks

## Optional Lab: Diagnosing Bias and Variance



# Practice quiz: Bias and variance



# Machine learning development process

## Iterative loop of ML development

## Error analysis

## Adding data

## Transfer learning: using data from a different task

## Full cycle of a machine learning project

## Fairness, bias, and ethics




# Practice quiz: Machine learning development process




# Skewed dataset (Optional)

## Error metrics for skewed datasets

## Trading off precision and recall





# Practice Lab: Advice for Applying Machine Learning
