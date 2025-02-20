# Ruby Getter Method Issue

This repository demonstrates an uncommon bug in Ruby related to how getter methods interact with direct instance variable modification using `instance_variable_set`.  The getter method does not always reflect changes made to the instance variable directly, which may be unexpected behavior.

The `bug.rb` file contains code that illustrates this issue.  The solution, shown in `bugSolution.rb`, demonstrates a correct and expected way to manage instance variables and getter methods.