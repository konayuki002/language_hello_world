mysum :: [Int] -> Int -> Int
mysum [] thesum = thesum
mysum myarray thesum = mysum (tail myarray) ((head myarray) + thesum)

fibo_array :: Int -> Int -> Int -> Int
fibo_array x y neg | neg < 0 = 0
fibo_array x y 0 = x + y
fibo_array 0 0 n = fibo_array 0 1 (n - 1)
fibo_array x y n = fibo_array y (x + y) (n - 1)

fibo :: Int -> Int
fibo = fibo_array 0 0



main = print $ fibo 10
