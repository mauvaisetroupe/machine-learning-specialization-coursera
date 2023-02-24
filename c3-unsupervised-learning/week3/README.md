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

There's something a little bit strange about this definition because how do we know what is the optimal behavior?

There's almost something circular about this definition, but when we will come back later

Let's look at an example we saw previously that this is a pretty good policy. It's actually the optimal policy for the mars rover application when the discount factor gamma is 0.5

- We compute Q(2,right), go right in state 3, come back in state 2 then state 1, return = 12.5
- Than Q(2, left), return = 50
- write the return 12.5 and 50 in right and left in case state 2
- etc... 

> <img src="./images/w03-06-State-action_value_function_definition/img_2023-02-14_19-07-38.png">

The best possible action a in status s is the action a that maximizes Q(s,a)

An important part of the reinforcement learning algorithm consit in computing Q(s,a) for every state and for every action
Then when you're in some state s all you have to do is look at the different actions a and pick the action that maximizes Q(s,a). 
That means that you will have $\pi(s)=a$ where a maximize Q(sa,a)

Q function is sometimes also called the **optimal Q function**.

> <img src="./images/w03-06-State-action_value_function_definition/img_2023-02-14_19-08-56.png">

## State-action value function example

> <img src="./images/w03-07-State-action_value_function_example/img_2023-02-14_19-51-59.png">

## Bellman Equations

Defintion of Bellman Equations

> <img src="./images/w03-08-Bellman_Equations/img_2023-02-14_19-56-17.png">

Examples :

> <img src="./images/w03-08-Bellman_Equations/img_2023-02-14_20-02-32.png">


Some explanations 

> <img src="./images/w03-08-Bellman_Equations/img_2023-02-14_20-09-26.png">

Explanation with example

> <img src="./images/w03-08-Bellman_Equations/img_2023-02-14_20-11-32.png">


## Random (stochastic) environment (Optional)

In some applications, when you take an action, the outcome is not always completely reliable.
In practice, many robots don't always manage to do exactly what you tell them because of wind blowing, the wheel slipping, etc
In our example, if you command to go left, it has 0.9 chance of going in the left direction, but the 0.1 chance of actually heading to the right

> <img src="./images/w03-09-Random_environment/img_2023-02-14_20-31-10.png">

There's a generalization of the reinforcement learning framework by computing the average (or "expected" in statistics)

> <img src="./images/w03-09-Random_environment/img_2023-02-14_20-31-47.png">

Bellmans equations become :

> <img src="./images/w03-09-Random_environment/img_2023-02-14_20-32-02.png">


# Continuous state space

## Example of continuous state space applications


Example of application of controlling a car or a truck
- x, y its position
- $\dot x$ and $\dot y$ its speeds in x-direction and in y-direction
- $\theta$ its orientation
- $\dot \theta$ rotation speed
> <img src="./images/w03-10-Example_of_continuous_state_space_applications/img_2023-02-20_16-04-36.png">

For helicopter, 
- x, y, z its position
- $\dot x$ and $\dot y$ $\dot z$ its speeds in x-direction, y-direction and z-direction
- roll, pitch, yaw
- and associated rotation speed

> <img src="./images/w03-10-Example_of_continuous_state_space_applications/Pitch-roll-yaw.png">

> <img src="./images/w03-10-Example_of_continuous_state_space_applications/img_2023-02-20_16-04-54.png">


## Lunar lander

Action :
- nothing
- main, left or rigth engine

Parameters :
- x, y position, $\dot x$ and $\dot y$ x-direction and in y-direction speed
- $\theta$ its orientation and $\dot \theta$ rotation speed
- l and r binary valued depending on whether the left and right legs are touching the ground

> <img src="./images/w03-11-Lunar_lander/img_2023-02-16_18-38-12.png">

Negative reward to encourage it not to waste too much fuel and fire thrusters when not necessary
> <img src="./images/w03-11-Lunar_lander/img_2023-02-16_18-38-30.png">

So, in summary, this is the lunar lander proble to solve :

> <img src="./images/w03-11-Lunar_lander/img_2023-02-16_18-38-50.png">

## Learning the state-value function

The key idea is that we're going to train a neural network to approximate the state action value function Q(s,a) to pick good actions

Reinforcemnet is different from supervised learning, but we will use neural network inside the reinforcement learning algorithm. The target value is y = Q(s,a)

> <img src="./images/w03-12-Learning_the_state-value_function/img_2023-02-16_18-20-15.png">

How do you train a neural network to output Q(s,a)? 

The approach will be to use Bellman's equations to create a training set with lots of examples, x and y, and then we'll use supervised learning to learm a mappig from x -> y, ie. from (s,a) -> Q(s,a) 


1. we fly the lunar lander randomly, sometimes crashing, sometimes not and getting tuples (s,a,R(s),s') as experienced for our learning algorithm. 

   We're going to use the lunar lander and just try taking different actions randomly (we don't have yet the good policy)
    - We start for state s, 
    - take randomly action a, 
    - get some reward R(s) 
    - and a new state s'

   We save the latest 10,000 most recent tuples (s, a, R(s), s') 

2. Each tuple is enough to create a single training example:

    - With s and a, you have directly x
    - With R(s) and s', you have all necessary input to compute y = R(s) + $\gamma$ . max Q(s',a')
    - We don't know Q(s,a), sor for the first iteration, we start with a totally random guess

> <img src="./images/w03-12-Learning_the_state-value_function/img_2023-02-16_18-20-59.png">


Same computation for second example until 10.000 examples

> <img src="./images/w03-12-Learning_the_state-value_function/img_2023-02-16_18-21-18.png">

Let's see the full algorithm


0. First, we initialize all the parameters of the neural network randomly, because we don't know how to compute Q(s,a) and we pretend that this neural network is our initial random guess for the Q-function (this is a little it like when you initialize all the parameters randomly and then use gradient descent to improve the parameters when training linear regression). What's important is that the algorithm can slowly improve the parameters to get a better estimate.

1. Do Repeatedly:

    1. Take random actions randomly. During all the algorithm we will see more than 100.000 steps, but we store 10.000 example (s,a, R(s),s') for memory constraint (technique is called **replay buffer**)

    2. Train the neural network
        
        1. For each of the 10.000 tuples, we create a new feature :
            - x with s and a
            - y with R(s) and Q(s',a') calculated by the neural network

        2. We train a new neural network with the 10.000 just created in previous step. 

> <img src="./images/w03-12-Learning_the_state-value_function/img_2023-02-16_18-21-50.png">

## Algorithm refinement: Improved neural network architecture

Instead of computing Q(s,a) for the 4 actions:

> <img src="./images/w03-13-Algorithm_refinement_Improved_neural_network_architecture/img_2023-02-20_18-30-40.png">

We adapt the neural network in oder to compute Q(s,a) for the 4 actions  simultaneously

> <img src="./images/w03-13-Algorithm_refinement_Improved_neural_network_architecture/img_2023-02-20_18-31-13.png">


## Algorithm refinement: ϵ-greedy policy


When learning how to approximate Q(s,a), we need to take some actions in the lunar lander. How do you pick those actions? The most common way to do so is to use something called an epsilon-greedy policy

> <img src="./images/w03-14-Algorithm_refinement_E-greedy_policy/img_2023-02-24_19-51-10.png">

The epsilon-greedy strategy is a common exploration strategy used in reinforcement learning that balances:
- exploitaton phase - chooses the action with the highest expected reward with a probability of 1-epsilon.
- exploration - chooses a random action with a probability of epsilon

Epsilon is typically decreased over time to shift focus towards exploitation.

> <img src="./images/w03-14-Algorithm_refinement_E-greedy_policy/img_2023-02-24_19-51-55.png">

## Algorithm refinement: Mini-batch and soft updates (optional)

## The state of reinforcement learning





# Summary and thank you

## Summary and thank you

