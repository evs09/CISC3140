#!/bin/bash

compile(){
    javac DueDateCalculator.java
}

run(){
    java DueDateCalculator
}

runTarget(){
    compile
    run
}

runTarget
