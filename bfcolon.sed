#! /usr/bin/env -S sed -E -f
# boldface
# Possible solutions:
# Task:
# Approach/strategy for solving task:
# Concept:
# Question:
s/item ([[:print:]]{5,55}:) /item \\textbf{\1} /
# on a table
# s/^([[:print:]]{5,45}:)/\\textbf{\1}/
