module Main where

import System.IO

main :: IO ()
main = do
  eof <- isEOF
  if eof
  then putStrLn "xmobar-stdin: eof"
  else do
    str <- getLine
    putStrLn str
    main
  
