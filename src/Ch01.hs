module Ch01 where

-- 00. "stressed" の逆順
ans00 :: String
ans00 = reverse "stressed"

omake00 :: String
omake00 = reverse "たけやぶやけたぞ"

-- 01. パタトカクシーー
ans01 :: String
ans01 = take0dds "パタトクカシーー"

take0dds :: String -> String
take0dds [] = ""
take0dds (c:cs) = c : take0dds (drop 1 cs)