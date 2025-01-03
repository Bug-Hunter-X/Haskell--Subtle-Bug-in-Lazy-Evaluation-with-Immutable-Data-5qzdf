```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys
  let zs = map (+1) xs 
  print zs
  let ws = map (+2) xs
  print ws
  --The bug is that people might assume that changing xs changes zs and ws. However, this is not the case since they are immutable
```