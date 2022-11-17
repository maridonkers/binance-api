{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubAccountUSDTFuturesSummary
module Binance.Types.SubAccountUSDTFuturesSummary where

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

-- | Defines the object schema located at @components.schemas.subAccountUSDTFuturesSummary@ in the specification.
data SubAccountUSDTFuturesSummary = SubAccountUSDTFuturesSummary
  { -- | futureAccountSummaryResp
    subAccountUSDTFuturesSummaryFutureAccountSummaryResp :: SubAccountUSDTFuturesSummaryFutureAccountSummaryResp
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountUSDTFuturesSummary where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["futureAccountSummaryResp" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryResp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["futureAccountSummaryResp" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryResp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountUSDTFuturesSummary where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountUSDTFuturesSummary" (\obj -> GHC.Base.pure SubAccountUSDTFuturesSummary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "futureAccountSummaryResp"))

-- | Create a new 'SubAccountUSDTFuturesSummary' with all required fields.
mkSubAccountUSDTFuturesSummary ::
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryResp'
  SubAccountUSDTFuturesSummaryFutureAccountSummaryResp ->
  SubAccountUSDTFuturesSummary
mkSubAccountUSDTFuturesSummary subAccountUSDTFuturesSummaryFutureAccountSummaryResp = SubAccountUSDTFuturesSummary {subAccountUSDTFuturesSummaryFutureAccountSummaryResp = subAccountUSDTFuturesSummaryFutureAccountSummaryResp}

-- | Defines the object schema located at @components.schemas.subAccountUSDTFuturesSummary.properties.futureAccountSummaryResp@ in the specification.
data SubAccountUSDTFuturesSummaryFutureAccountSummaryResp = SubAccountUSDTFuturesSummaryFutureAccountSummaryResp
  { -- | asset: The sum of BUSD and USDT
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset :: Data.Text.Internal.Text,
    -- | subAccountList
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList :: ([SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList]),
    -- | totalInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin :: Data.Text.Internal.Text,
    -- | totalMaintenanceMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin :: Data.Text.Internal.Text,
    -- | totalMarginBalance
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance :: Data.Text.Internal.Text,
    -- | totalOpenOrderInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin :: Data.Text.Internal.Text,
    -- | totalPositionInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin :: Data.Text.Internal.Text,
    -- | totalUnrealizedProfit
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit :: Data.Text.Internal.Text,
    -- | totalWalletBalance
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountUSDTFuturesSummaryFutureAccountSummaryResp where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset obj] : ["subAccountList" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList obj] : ["totalInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin obj] : ["totalMaintenanceMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance obj] : ["totalOpenOrderInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin obj] : ["totalPositionInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset obj] : ["subAccountList" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList obj] : ["totalInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin obj] : ["totalMaintenanceMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance obj] : ["totalOpenOrderInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin obj] : ["totalPositionInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountUSDTFuturesSummaryFutureAccountSummaryResp where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountUSDTFuturesSummaryFutureAccountSummaryResp" (\obj -> ((((((((GHC.Base.pure SubAccountUSDTFuturesSummaryFutureAccountSummaryResp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subAccountList")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMaintenanceMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMarginBalance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalOpenOrderInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalPositionInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalUnrealizedProfit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalWalletBalance"))

-- | Create a new 'SubAccountUSDTFuturesSummaryFutureAccountSummaryResp' with all required fields.
mkSubAccountUSDTFuturesSummaryFutureAccountSummaryResp ::
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList'
  [SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList] ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance'
  Data.Text.Internal.Text ->
  SubAccountUSDTFuturesSummaryFutureAccountSummaryResp
mkSubAccountUSDTFuturesSummaryFutureAccountSummaryResp subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance =
  SubAccountUSDTFuturesSummaryFutureAccountSummaryResp
    { subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset = subAccountUSDTFuturesSummaryFutureAccountSummaryRespAsset,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMaintenanceMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalMarginBalance,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalOpenOrderInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalPositionInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalUnrealizedProfit,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance = subAccountUSDTFuturesSummaryFutureAccountSummaryRespTotalWalletBalance
    }

-- | Defines the object schema located at @components.schemas.subAccountUSDTFuturesSummary.properties.futureAccountSummaryResp.properties.subAccountList.items@ in the specification.
data SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList = SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList
  { -- | asset: The sum of BUSD and USDT
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset :: Data.Text.Internal.Text,
    -- | email
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail :: Data.Text.Internal.Text,
    -- | totalInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin :: Data.Text.Internal.Text,
    -- | totalMaintenanceMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin :: Data.Text.Internal.Text,
    -- | totalMarginBalance
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance :: Data.Text.Internal.Text,
    -- | totalOpenOrderInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin :: Data.Text.Internal.Text,
    -- | totalPositionInitialMargin
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin :: Data.Text.Internal.Text,
    -- | totalUnrealizedProfit
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit :: Data.Text.Internal.Text,
    -- | totalWalletBalance
    subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset obj] : ["email" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail obj] : ["totalInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin obj] : ["totalMaintenanceMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance obj] : ["totalOpenOrderInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin obj] : ["totalPositionInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset obj] : ["email" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail obj] : ["totalInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin obj] : ["totalMaintenanceMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance obj] : ["totalOpenOrderInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin obj] : ["totalPositionInitialMargin" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList" (\obj -> ((((((((GHC.Base.pure SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMaintenanceMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMarginBalance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalOpenOrderInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalPositionInitialMargin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalUnrealizedProfit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalWalletBalance"))

-- | Create a new 'SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList' with all required fields.
mkSubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList ::
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit'
  Data.Text.Internal.Text ->
  -- | 'subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance'
  Data.Text.Internal.Text ->
  SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList
mkSubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance =
  SubAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountList
    { subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListAsset,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListEmail,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMaintenanceMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalMarginBalance,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalOpenOrderInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalPositionInitialMargin,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalUnrealizedProfit,
      subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance = subAccountUSDTFuturesSummaryFutureAccountSummaryRespSubAccountListTotalWalletBalance
    }
