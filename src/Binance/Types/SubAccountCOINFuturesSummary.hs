{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubAccountCOINFuturesSummary
module Binance.Types.SubAccountCOINFuturesSummary where

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

-- | Defines the object schema located at @components.schemas.subAccountCOINFuturesSummary@ in the specification.
data SubAccountCOINFuturesSummary = SubAccountCOINFuturesSummary
  { -- | deliveryAccountSummaryResp
    subAccountCOINFuturesSummaryDeliveryAccountSummaryResp :: SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountCOINFuturesSummary where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["deliveryAccountSummaryResp" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryResp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["deliveryAccountSummaryResp" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryResp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountCOINFuturesSummary where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountCOINFuturesSummary" (\obj -> GHC.Base.pure SubAccountCOINFuturesSummary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deliveryAccountSummaryResp"))

-- | Create a new 'SubAccountCOINFuturesSummary' with all required fields.
mkSubAccountCOINFuturesSummary ::
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryResp'
  SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp ->
  SubAccountCOINFuturesSummary
mkSubAccountCOINFuturesSummary subAccountCOINFuturesSummaryDeliveryAccountSummaryResp = SubAccountCOINFuturesSummary {subAccountCOINFuturesSummaryDeliveryAccountSummaryResp = subAccountCOINFuturesSummaryDeliveryAccountSummaryResp}

-- | Defines the object schema located at @components.schemas.subAccountCOINFuturesSummary.properties.deliveryAccountSummaryResp@ in the specification.
data SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp = SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp
  { -- | asset
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset :: Data.Text.Internal.Text,
    -- | subAccountList
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList :: ([SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList]),
    -- | totalMarginBalanceOfBTC
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC :: Data.Text.Internal.Text,
    -- | totalUnrealizedProfitOfBTC
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC :: Data.Text.Internal.Text,
    -- | totalWalletBalanceOfBTC
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset obj] : ["subAccountList" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList obj] : ["totalMarginBalanceOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC obj] : ["totalUnrealizedProfitOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC obj] : ["totalWalletBalanceOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset obj] : ["subAccountList" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList obj] : ["totalMarginBalanceOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC obj] : ["totalUnrealizedProfitOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC obj] : ["totalWalletBalanceOfBTC" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp" (\obj -> ((((GHC.Base.pure SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subAccountList")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMarginBalanceOfBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalUnrealizedProfitOfBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalWalletBalanceOfBTC"))

-- | Create a new 'SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp' with all required fields.
mkSubAccountCOINFuturesSummaryDeliveryAccountSummaryResp ::
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList'
  [SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList] ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC'
  Data.Text.Internal.Text ->
  SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp
mkSubAccountCOINFuturesSummaryDeliveryAccountSummaryResp subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC =
  SubAccountCOINFuturesSummaryDeliveryAccountSummaryResp
    { subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespAsset,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalMarginBalanceOfBTC,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalUnrealizedProfitOfBTC,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespTotalWalletBalanceOfBTC
    }

-- | Defines the object schema located at @components.schemas.subAccountCOINFuturesSummary.properties.deliveryAccountSummaryResp.properties.subAccountList.items@ in the specification.
data SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList = SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList
  { -- | asset
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset :: Data.Text.Internal.Text,
    -- | email
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail :: Data.Text.Internal.Text,
    -- | totalMarginBalance
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance :: Data.Text.Internal.Text,
    -- | totalUnrealizedProfit
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit :: Data.Text.Internal.Text,
    -- | totalWalletBalance
    subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset obj] : ["email" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset obj] : ["email" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail obj] : ["totalMarginBalance" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance obj] : ["totalUnrealizedProfit" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit obj] : ["totalWalletBalance" Data.Aeson.Types.ToJSON..= subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList" (\obj -> ((((GHC.Base.pure SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalMarginBalance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalUnrealizedProfit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalWalletBalance"))

-- | Create a new 'SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList' with all required fields.
mkSubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList ::
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit'
  Data.Text.Internal.Text ->
  -- | 'subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance'
  Data.Text.Internal.Text ->
  SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList
mkSubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance =
  SubAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountList
    { subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListAsset,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListEmail,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalMarginBalance,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalUnrealizedProfit,
      subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance = subAccountCOINFuturesSummaryDeliveryAccountSummaryRespSubAccountListTotalWalletBalance
    }
