---
title: Some title
subtitle: Some subtitle
author: Giuseppe Ragusa
institute: Luiss University - Rome
logo: pics/luisslogo.png
date: \today
theme: metropolis

titleformat: smallcaps
block: fill
...


## This should turn into a slide...

`Julia` is a great programming language. There are few things that are special:

- Multiple dispatch
- JIT compilation

## We can try some code

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.julia .numberLines}
using MomentBasedEstimators
a = randn(10)
estimate!(GMM, fn, x0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Of course
$$
y=x\beta + u
$$

## A block example

### An example
Block 1

### An example
Block 2

## Two columns

[columns]

[column=0.45]

![house.svg](pics/luisslogo.png)

[column=0.45]

- IO
- Tu

[/columns]

<!-- \usebackgroundtemplate{
    \centering\includegraphics[width=\paperwidth,height=\paperheight]{pics/house.jpg}
} -->
##  {.plain}

## A full slide

- This slides is full of shit
