module Ch01 where

-- 00. "stressed" の逆順
{- |
>>> ans00
"desserts"
-}
ans00 :: String
ans00 = reverse "stressed"
-- reverse :: [a] -> [a] はリストを逆転にする
{- |
>>> putStrLn omake00
ぞたけやぶやけた
-}
omake00 :: String
omake00 = reverse "たけやぶやけたぞ"

-- 01. パタトカクシーー
ans01 :: String
ans01 = takeOdds "パタトクカシーー"

{- | 文字列から奇数番目の文字だけをとりだす
>>> putStrLn (takeOdds "パタトクカシーー")
パトカー
>>>putStrLn (takeOdds "hogehoge")
hghg
-}
takeOdds :: [a] -> [a]
takeOdds []     = [] 
takeOdds (c:cs) = c : takeEvens cs

{- | リストから偶数番目の要素だけとりだす
>>>putStrLn (takeEvens "パタトクカシーー")
タクシー
-}
takeEvens :: [a] -> [a]
takeEvens [] = []
takeEvens (c:cs) = takeOdds cs

sample :: String
sample = "パタトクカシーー"