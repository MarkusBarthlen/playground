module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Node.FS (FS)
import Node.Buffer (BUFFER)
import Node.FS.Async as A
import Node.FS.Sync as S

main ::forall e. Eff (fs :: FS , console :: CONSOLE | e) Unit
main = do
  log "Hello sailor!"
