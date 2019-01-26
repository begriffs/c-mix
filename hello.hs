module Hello where

import System.Directory

sayhi = do
  fs <- listDirectory "."
  putStrLn "Hello, C, it's Haskell!"
  mapM_ putStrLn fs

foreign export ccall sayhi :: IO ()
