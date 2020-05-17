module Main where

import XMonad.Core
import XMonad.Util.Run
import Control.Monad (forever)
import System.IO

main :: IO ()
main = do
  handle <- spawnPipe "xmobar-stdin"
  forever $ hPutStrLn handle "hello-world"
  
