myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl _ acc []     = acc
myFoldl f acc (x:xs) = myFoldl f (f acc x) xs

sumList :: [Int] -> Int
sumList = myFoldl (+) 0

main :: IO ()
main = print (sumList [1, 2, 3, 4, 5])
