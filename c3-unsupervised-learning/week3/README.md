# Reinforcement learning

This week, you will learn about reinforcement learning, and build a deep Q-learning neural network in order to land a virtual lunar lander on Mars!
What is Reinforcement Learning?



# Reinforcement learning

## What is Reinforcement learning ?

Reinforcement learning is not widely applied in commercial applications yet today, but is one of the pillars of machine learning. 
There are a lots of exciting research backing it up and improving it every single day. 

> <img src="./images/w03-01-What_is_Reinforcement_Learning/img_2023-02-12_09-45-47.png">

When the helicopter is moving through the air, it's actually very difficult to get a data set of x and the ideal action y. 
So that's why for a lot of task of controlling a robot like a helicopter and other robots, the supervised learning approach doesn't work well and we instead use reinforcement learning. 

Instead, we use in reinforcement learning something called the reward or the reward function which tells the helicopter when it's doing well and when it's doing poorly 

Reward function is a bit like training a dog. Hopefully it learns by itself how to yhings, but you reward whan it do good things

Reinforcement learning is so powerful is you have to tell it **what to do** rather than **how to do it**.

> <img src="./images/w03-01-What_is_Reinforcement_Learning/img_2023-02-12_09-51-12.png">

Robot dog that using reinforcement learning, which rewards it when climbing over a variety of obstacles. I really don't know how to tell it what's the best way to place its legs to get over a given obstacle. All of these things were figured out automatically by the robot just by giving it rewards that incentivizes it, making progress toward the goal

> <img src="./images/w03-01-What_is_Reinforcement_Learning/img_2023-02-12_09-52-02.png">

Applications examples:

> <img src="./images/w03-01-What_is_Reinforcement_Learning/img_2023-02-12_09-54-56.png">

## Mars rover example

We'll develop reinforcement learning using a simplified example inspired by the Mars rover

Rover  can go to different places to use its sensors such as a drill, or a radar, or a spectrometer to analyze the rock at different places. In this example :
- State 1 has a very interesting surface that scientists would like for the rover to sample. 
- State 6 also has a pretty interesting surface, but not as interesting as state 1

Formalism of how a reinforcement learning application works:
- current state S
- action a
- reward R(s)
- next state S'

> <img src="./images/w03-02-Mars_rover_example/img_2023-02-12_10-02-07.png">

## The Return in reinforcement learning

Analogy that you might find helpful is if you imagine you have 
- a five-dollar bill at your feet, 
- you can walk half an hour and pick up a 10-dollar bill
Which one would you rather go afterinforcement learning

If starting from state 4 you go to the left, until state 6, you get 
- 0 on the first step from state 4, 
- 0 from state 3, 
- 0 from state 2, 
- and then 100 at state 1, the terminal state. 

The return is defined as the sum of these rewards but weighted by one additional factor, which is called the **discount factor**.

In many reinforcement learning algorithms, a common choice for the discount factor will be a number pretty close to 1, like 0.9, or 0.99, or even 0.999

In financial applications, the discount factor also has a very natural interpretation as the interest rate or the time value of money.

> <img src="./images/w03-03-The_Return_in_reinforcement_learning/img_2023-02-14_18-41-17.png">

The first example corresponsd to the return if you go left :
- return of 12.5 if starting in state 4
- return of 25 if starting in state 3
- etc..

The second example is the same but if going always to the right 

The third example is a mixt policy, you go to the left from state 2, 3 and 4, go right from state 5 

> <img src="./images/w03-03-The_Return_in_reinforcement_learning/img_2023-02-14_18-42-22.png">


## Making decisions: Policies in reinforcement learning

Differents examples:
1. always go for the nearer reward
2. always go for the larger reward
3. always go for smaller reward,
4. go left unless you're just one step away from the lesser reward

> <img src="./images/w03-04-Making_decisions_Policies_in_reinforcement_learning/img_2023-02-14_18-59-54.png">

The goal of reinforcement learning is to find a policy $\pi(s)$ that tells you what action to take in every state so as to maximize the return.

> <img src="./images/w03-04-Making_decisions_Policies_in_reinforcement_learning/img_2023-02-14_19-00-20.png">


## Review of key concepts

> <img src="./images/w03-05-Review_of_key_concepts/img_2023-02-14_19-02-37.png">

This formalism of a reinforcement learning application is called a **Markov decision process** or MDP

The term Markov in the MDP or Markov decision process refers to that the future only depends on the current state and not on anything that might have occurred prior to getting to the current state. In other words, in a Markov decision process, the future depends only on where you are now, not on how you got here.

> <img src="./images/w03-05-Review_of_key_concepts/img_2023-02-14_19-02-52.png">



# State-action value function 

## State-action value function definition

## State-action value function example

## Bellman Equations

## Random (stochastic) environment (Optional)





# Continuous state space

## Example of continuous state space applications

## Lunar lander

## Learning the state-value function

## Algorithm refinement: Improved neural network architecture

## Algorithm refinement: ϵ-greedy policy

## Algorithm refinement: Mini-batch and soft updates (optional)

## The state of reinforcement learning





# Summary and thank you

## Summary and thank you

