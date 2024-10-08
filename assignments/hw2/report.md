---
title: "Assignment 2: ASLR"
subtitle: "IS561: Binary Code Analysis and Secure Software Systems"
author: ["Heechan Yang, 20234252"]
institute: "KAIST"
date: "Oct 19, 2024 | 2024 Fall Semester"
subject: "IS561: Binary Code Analysis and Secure Software Systems"
keywords: [IS561, exploitation, security]
lang: "en"
titlepage: true
code-block-font-size: \small
geometry:
- margin=20mm
papersize: a4
fontsize: 9pt
...


# Assignment 1: ASLR


# Problem 1. Warm-up: ASLR (10 points)

## 1.a Why do you think the program crashes when she gave the address obtained from ``objdump`` as input?
ASLR protection is enabled which randomizes the base addresses space layout of stack and heap of a process. Therefore, the address obtained from disassembling the binary is not the address of ``findme()`` function when newly executing the binary as a new process.

## Can you write a wrapper program that repeatedly executes the program (``prog``) in a loop until it finds the answer?
Yes, you can write a wrapper program that eventually finds the address space of ``fundme()`` function.
