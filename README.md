# Haskell Bug: Subtle Issue with Lazy Evaluation and Immutability

This repository demonstrates a subtle bug that can occur in Haskell due to a combination of lazy evaluation and the use of immutable data structures.  The bug is related to how functions like `map` interact with later modifications (or what might appear to be modifications) to the input list.

## Bug Description

The primary issue lies in the way Haskell handles lazy evaluation.  The `map` function creates a *new* list; it doesn't modify the original.  However, if one misunderstands lazy evaluation and expects changes to the original list to be reflected in the mapped list, it can lead to unexpected results. The example provided illustrates this behavior where the values appear unchanged after a transformation that seems like it should have an effect.

## Solution

The solution emphasizes the inherent immutability of Haskell lists and highlights the correct way to achieve the desired transformation.