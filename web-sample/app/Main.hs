{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Network.Wai                    ( responseLBS
                                                , Application
                                                )
import           Network.HTTP.Types             ( status200 )
import           Network.Wai.Handler.Warp       ( run )
import           Data.List                      ( lookup )
import           Data.Maybe

main :: IO ()

main = run 8080 helloApp

helloApp :: Application
helloApp req res = res $ responseLBS status200 [] "hello"
