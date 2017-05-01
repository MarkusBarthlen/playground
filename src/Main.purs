module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Node.FS (FS)
import Node.Path as Path
import Node.FS (FS, FileFlags(..))
import Node.FS.Stats (statusChangedTime, accessedTime, modifiedTime,
                      isSymbolicLink, isSocket, isFIFO, isCharacterDevice,
                      isBlockDevice, isDirectory, isFile)
import Node.FS.Async as A

import Network.HTTP (Verb(..))

main::forall e. Eff (fs :: FS , console :: CONSOLE | e) Unit
main = do
  log "Hello sailor!"
  let fp = Path.concat

  A.exists (fp ["test", "Test.purs"]) $ \e ->
    log $ "Test.purs exists? " <> show e

  log $ show DELETE
