module Ex01 where

import Data.Char

-- 文字 Char
-- 文字列型　String ≡ [Char]

-- 文字には文字番号が対応している
-- いわゆる半角英数はASCII

{- |
回文判定
>>> palindrome "たけやぶやけた"
True
>>> palindrome "abracadabra"
False
-}
palindrome :: String -> Bool  -- 型シグネチャ
palindrome str = str == reverse str

{- |
>>> palindromeKai "Madam I'm Adam."
True
>>> palindromeKai "たけやぶ やけた？"
True
-}
palindromeKai :: String -> Bool
-- palindromeKai str = palindrome (map toLower (filter isLetter str))
palindromeKai = palindrome . map toLower . filter isLetter

{-
h x = g (f x)

        f      g
    (X) -> (Y) -> (Z)
        -------->
            h
h は f と g を合成したもの
h :: X -> Z
f :: X -> Y
g :: Y -> Z

h = g . f
-}

sample1 :: String
sample1 = "madam, I'm Adam."


otomojidake :: String -> String 
otomojidake str = (filter isLetter) str

komojinisuru :: String -> String 
komojinisuru = map toLower

{-
filter :: (a -> Bool) -> ([a] -> [a])
map :: (a -> b) ([a] -> [b])
-}



{-
同値性の検査をする演算子 == 
-}
