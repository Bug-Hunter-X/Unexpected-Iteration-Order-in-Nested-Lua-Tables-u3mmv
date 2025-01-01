# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with iterating over nested tables in Lua using the `pairs` iterator.  The problem stems from the fact that `pairs` doesn't guarantee a specific iteration order, and modifying the table during iteration can lead to unexpected results.

The `bug.lua` file contains code that illustrates the problem. The `bugSolution.lua` provides a corrected version.

## Problem Description

The original code attempts to recursively traverse a nested table and print the value of a specific nested key.  However, if the iteration order changes unexpectedly during the recursive calls, it can either fail to find the key or produce incorrect results.  This is amplified when dealing with large, deeply nested tables.

## Solution

The solution involves using a different approach that avoids issues with the order of iteration.