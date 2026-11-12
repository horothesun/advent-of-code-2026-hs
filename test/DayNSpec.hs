{-# LANGUAGE QuasiQuotes #-}

module DayNSpec where

import Data.Text (Text)
import qualified Data.Text as T
import DayN
import FileLoader
import NeatInterpolation (trimming)
import Test.Hspec

spec :: Spec
spec = describe "Day N" $ do
  bigInput <- runIO $ getLinesFromFile "test/dayN_input.txt"

  it "load big input from file" $
    length bigInput `shouldBe` 1

  it "dayN returns 'Day N'" $
    dayN `shouldBe` "Day N"

smallInput :: [Text]
smallInput =
  T.splitOn
    "\n"
    [trimming|
      1000
      2000
      3000

      4000
      |]
