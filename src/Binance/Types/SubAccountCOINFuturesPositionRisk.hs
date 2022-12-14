{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubAccountCOINFuturesPositionRisk
module Binance.Types.SubAccountCOINFuturesPositionRisk where

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

-- | Defines the object schema located at @components.schemas.subAccountCOINFuturesPositionRisk@ in the specification.
data SubAccountCOINFuturesPositionRisk = SubAccountCOINFuturesPositionRisk
  { -- | deliveryPositionRiskVos
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos :: ([SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountCOINFuturesPositionRisk where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["deliveryPositionRiskVos" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["deliveryPositionRiskVos" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountCOINFuturesPositionRisk where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountCOINFuturesPositionRisk" (\obj -> GHC.Base.pure SubAccountCOINFuturesPositionRisk GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deliveryPositionRiskVos"))

-- | Create a new 'SubAccountCOINFuturesPositionRisk' with all required fields.
mkSubAccountCOINFuturesPositionRisk ::
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos'
  [SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos] ->
  SubAccountCOINFuturesPositionRisk
mkSubAccountCOINFuturesPositionRisk subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos = SubAccountCOINFuturesPositionRisk {subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVos}

-- | Defines the object schema located at @components.schemas.subAccountCOINFuturesPositionRisk.properties.deliveryPositionRiskVos.items@ in the specification.
data SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos = SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos
  { -- | entryPrice
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice :: Data.Text.Internal.Text,
    -- | isAutoAddMargin
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin :: Data.Text.Internal.Text,
    -- | isolated
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated :: Data.Text.Internal.Text,
    -- | isolatedMargin
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin :: Data.Text.Internal.Text,
    -- | isolatedWallet
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet :: Data.Text.Internal.Text,
    -- | leverage
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage :: Data.Text.Internal.Text,
    -- | markPrice
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice :: Data.Text.Internal.Text,
    -- | positionAmount
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount :: Data.Text.Internal.Text,
    -- | positionSide
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide :: Data.Text.Internal.Text,
    -- | symbol
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol :: Data.Text.Internal.Text,
    -- | unrealizedProfit
    subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice obj] : ["isAutoAddMargin" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin obj] : ["isolated" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated obj] : ["isolatedMargin" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin obj] : ["isolatedWallet" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet obj] : ["leverage" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage obj] : ["markPrice" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount obj] : ["positionSide" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide obj] : ["symbol" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice obj] : ["isAutoAddMargin" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin obj] : ["isolated" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated obj] : ["isolatedMargin" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin obj] : ["isolatedWallet" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet obj] : ["leverage" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage obj] : ["markPrice" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount obj] : ["positionSide" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide obj] : ["symbol" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos" (\obj -> ((((((((((GHC.Base.pure SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entryPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isAutoAddMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isolated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isolatedMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isolatedWallet")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "leverage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "markPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionSide")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unrealizedProfit"))

-- | Create a new 'SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos' with all required fields.
mkSubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos ::
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit'
  Data.Text.Internal.Text ->
  SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos
mkSubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit =
  SubAccountCOINFuturesPositionRiskDeliveryPositionRiskVos
    { subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosEntryPrice,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsAutoAddMargin,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolated,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedMargin,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosIsolatedWallet,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosLeverage,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosMarkPrice,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionAmount,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosPositionSide,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosSymbol,
      subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit = subAccountCOINFuturesPositionRiskDeliveryPositionRiskVosUnrealizedProfit
    }
