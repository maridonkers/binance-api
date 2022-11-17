{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AggTrade
module Binance.Types.AggTrade where

import qualified Binance.Common
import Binance.TypeAlias
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.aggTrade@ in the specification.
data AggTrade = AggTrade
  { -- | M: Was the trade the best price match?
    aggTradeMM :: GHC.Types.Bool,
    -- | T: Timestamp
    aggTradeT :: GHC.Types.Bool,
    -- | a: Aggregate tradeId
    aggTradeA :: GHC.Int.Int64,
    -- | f: First tradeId
    aggTradeF :: GHC.Int.Int64,
    -- | l: Last tradeId
    aggTradeL :: GHC.Int.Int64,
    -- | m: Was the buyer the maker?
    aggTradeM :: GHC.Types.Bool,
    -- | p: Price
    aggTradeP :: Data.Text.Internal.Text,
    -- | q: Quantity
    aggTradeQ :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AggTrade where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["M" Data.Aeson.Types.ToJSON..= aggTradeMM obj] : ["T" Data.Aeson.Types.ToJSON..= aggTradeT obj] : ["a" Data.Aeson.Types.ToJSON..= aggTradeA obj] : ["f" Data.Aeson.Types.ToJSON..= aggTradeF obj] : ["l" Data.Aeson.Types.ToJSON..= aggTradeL obj] : ["m" Data.Aeson.Types.ToJSON..= aggTradeM obj] : ["p" Data.Aeson.Types.ToJSON..= aggTradeP obj] : ["q" Data.Aeson.Types.ToJSON..= aggTradeQ obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["M" Data.Aeson.Types.ToJSON..= aggTradeMM obj] : ["T" Data.Aeson.Types.ToJSON..= aggTradeT obj] : ["a" Data.Aeson.Types.ToJSON..= aggTradeA obj] : ["f" Data.Aeson.Types.ToJSON..= aggTradeF obj] : ["l" Data.Aeson.Types.ToJSON..= aggTradeL obj] : ["m" Data.Aeson.Types.ToJSON..= aggTradeM obj] : ["p" Data.Aeson.Types.ToJSON..= aggTradeP obj] : ["q" Data.Aeson.Types.ToJSON..= aggTradeQ obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AggTrade where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AggTrade" (\obj -> (((((((GHC.Base.pure AggTrade GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "M")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "T")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "a")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "f")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "l")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "m")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "p")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "q"))

-- | Create a new 'AggTrade' with all required fields.
mkAggTrade ::
  -- | 'aggTradeMM'
  GHC.Types.Bool ->
  -- | 'aggTradeT'
  GHC.Types.Bool ->
  -- | 'aggTradeA'
  GHC.Int.Int64 ->
  -- | 'aggTradeF'
  GHC.Int.Int64 ->
  -- | 'aggTradeL'
  GHC.Int.Int64 ->
  -- | 'aggTradeM'
  GHC.Types.Bool ->
  -- | 'aggTradeP'
  Data.Text.Internal.Text ->
  -- | 'aggTradeQ'
  Data.Text.Internal.Text ->
  AggTrade
mkAggTrade aggTradeMM aggTradeT aggTradeA aggTradeF aggTradeL aggTradeM aggTradeP aggTradeQ =
  AggTrade
    { aggTradeMM = aggTradeMM,
      aggTradeT = aggTradeT,
      aggTradeA = aggTradeA,
      aggTradeF = aggTradeF,
      aggTradeL = aggTradeL,
      aggTradeM = aggTradeM,
      aggTradeP = aggTradeP,
      aggTradeQ = aggTradeQ
    }