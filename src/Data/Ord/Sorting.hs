{- |
    Module      : Data.Ord.Sorting
    Description : Provides helpers for sorting.
    Copyright   : © Hardy Jones, 2015
    License     : BSD3
    Maintainer  : jones3.hardy@gmail.com
    Stability   : experimental

    Just a couple of helpers for sorting.
-}

module Data.Ord.Sorting where

import Data.Ord (Down(..), comparing)

-- | Sort by a function in ascending order.
--
--   It is ascending based on the `Ord` instance.
ascending :: Ord b => (a -> b) -> a -> a -> Ordering
ascending = comparing

-- | Sort by a function in descending order.
--
--   It is descending based on the `Ord` instance.
descending :: Ord b => (a -> b) -> a -> a -> Ordering
descending = comparing . (Down .)
