module Hello where

import System.Directory
import Foreign.C.Types

printDir = do
  fs <- listDirectory "."
  mapM_ putStrLn fs

fact :: CLLong -> CLLong
fact n = product [1..n]

foreign export ccall printDir :: IO ()
foreign export ccall fact :: CLLong -> CLLong
