#!/bin/bash

javac DueDateCalculator.java

java DueDateCalculator << END
0 2
0 4
10/22/2022 01/01/2023
10/22/2022 11/02/2022
x
END