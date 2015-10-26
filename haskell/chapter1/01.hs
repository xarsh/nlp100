takeOdds :: [a] -> [a]
takeOdds [] = []
takeOdds [x] = [x]
takeOdds (x:_:xs) = x: takeOdds xs

main = do
  putStrLn $ takeOdds "パタトクカシーー"
