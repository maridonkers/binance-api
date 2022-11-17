{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubAccountUSDTFuturesPositionRisk
module Binance.Types.SubAccountUSDTFuturesPositionRisk where

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

-- | Defines the object schema located at @components.schemas.subAccountUSDTFuturesPositionRisk@ in the specification.
data SubAccountUSDTFuturesPositionRisk = SubAccountUSDTFuturesPositionRisk
  { -- | futurePositionRiskVos
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVos :: ([SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountUSDTFuturesPositionRisk where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["futurePositionRiskVos" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVos obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["futurePositionRiskVos" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVos obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountUSDTFuturesPositionRisk where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountUSDTFuturesPositionRisk" (\obj -> GHC.Base.pure SubAccountUSDTFuturesPositionRisk GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "futurePositionRiskVos"))

-- | Create a new 'SubAccountUSDTFuturesPositionRisk' with all required fields.
mkSubAccountUSDTFuturesPositionRisk ::
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVos'
  [SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos] ->
  SubAccountUSDTFuturesPositionRisk
mkSubAccountUSDTFuturesPositionRisk subAccountUSDTFuturesPositionRiskFuturePositionRiskVos = SubAccountUSDTFuturesPositionRisk {subAccountUSDTFuturesPositionRiskFuturePositionRiskVos = subAccountUSDTFuturesPositionRiskFuturePositionRiskVos}

-- | Defines the object schema located at @components.schemas.subAccountUSDTFuturesPositionRisk.properties.futurePositionRiskVos.items@ in the specification.
data SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos = SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos
  { -- | entryPrice
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice :: Data.Text.Internal.Text,
    -- | leverage: current initial leverage
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage :: Data.Text.Internal.Text,
    -- | liquidationPrice
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice :: Data.Text.Internal.Text,
    -- | markPrice
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice :: Data.Text.Internal.Text,
    -- | maxNotional: notional value limit of current initial leverage
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional :: Data.Text.Internal.Text,
    -- | positionAmount
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount :: Data.Text.Internal.Text,
    -- | symbol
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol :: Data.Text.Internal.Text,
    -- | unrealizedProfit
    subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice obj] : ["leverage" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage obj] : ["liquidationPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice obj] : ["markPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice obj] : ["maxNotional" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount obj] : ["symbol" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice obj] : ["leverage" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage obj] : ["liquidationPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice obj] : ["markPrice" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice obj] : ["maxNotional" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount obj] : ["symbol" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos" (\obj -> (((((((GHC.Base.pure SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entryPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "leverage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "liquidationPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "markPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "maxNotional")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unrealizedProfit"))

-- | Create a new 'SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos' with all required fields.
mkSubAccountUSDTFuturesPositionRiskFuturePositionRiskVos ::
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit'
  Data.Text.Internal.Text ->
  SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos
mkSubAccountUSDTFuturesPositionRiskFuturePositionRiskVos subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit =
  SubAccountUSDTFuturesPositionRiskFuturePositionRiskVos
    { subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosEntryPrice,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLeverage,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosLiquidationPrice,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMarkPrice,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosMaxNotional,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosPositionAmount,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosSymbol,
      subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit = subAccountUSDTFuturesPositionRiskFuturePositionRiskVosUnrealizedProfit
    }
