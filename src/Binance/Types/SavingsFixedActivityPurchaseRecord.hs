{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SavingsFixedActivityPurchaseRecord
module Binance.Types.SavingsFixedActivityPurchaseRecord where

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

-- | Defines the object schema located at @components.schemas.savingsFixedActivityPurchaseRecord.items@ in the specification.
data SavingsFixedActivityPurchaseRecordItem = SavingsFixedActivityPurchaseRecordItem
  { -- | amount
    savingsFixedActivityPurchaseRecordItemAmount :: Data.Text.Internal.Text,
    -- | asset
    savingsFixedActivityPurchaseRecordItemAsset :: Data.Text.Internal.Text,
    -- | createTime
    savingsFixedActivityPurchaseRecordItemCreateTime :: GHC.Int.Int64,
    -- | lendingType
    savingsFixedActivityPurchaseRecordItemLendingType :: Data.Text.Internal.Text,
    -- | lot
    savingsFixedActivityPurchaseRecordItemLot :: GHC.Int.Int64,
    -- | productName
    savingsFixedActivityPurchaseRecordItemProductName :: Data.Text.Internal.Text,
    -- | purchaseId
    savingsFixedActivityPurchaseRecordItemPurchaseId :: GHC.Int.Int64,
    -- | status
    savingsFixedActivityPurchaseRecordItemStatus :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SavingsFixedActivityPurchaseRecordItem where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemAsset obj] : ["createTime" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemCreateTime obj] : ["lendingType" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemLendingType obj] : ["lot" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemLot obj] : ["productName" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemProductName obj] : ["purchaseId" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemPurchaseId obj] : ["status" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemAsset obj] : ["createTime" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemCreateTime obj] : ["lendingType" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemLendingType obj] : ["lot" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemLot obj] : ["productName" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemProductName obj] : ["purchaseId" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemPurchaseId obj] : ["status" Data.Aeson.Types.ToJSON..= savingsFixedActivityPurchaseRecordItemStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SavingsFixedActivityPurchaseRecordItem where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SavingsFixedActivityPurchaseRecordItem" (\obj -> (((((((GHC.Base.pure SavingsFixedActivityPurchaseRecordItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "createTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "lendingType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "lot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "productName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "purchaseId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'SavingsFixedActivityPurchaseRecordItem' with all required fields.
mkSavingsFixedActivityPurchaseRecordItem ::
  -- | 'savingsFixedActivityPurchaseRecordItemAmount'
  Data.Text.Internal.Text ->
  -- | 'savingsFixedActivityPurchaseRecordItemAsset'
  Data.Text.Internal.Text ->
  -- | 'savingsFixedActivityPurchaseRecordItemCreateTime'
  GHC.Int.Int64 ->
  -- | 'savingsFixedActivityPurchaseRecordItemLendingType'
  Data.Text.Internal.Text ->
  -- | 'savingsFixedActivityPurchaseRecordItemLot'
  GHC.Int.Int64 ->
  -- | 'savingsFixedActivityPurchaseRecordItemProductName'
  Data.Text.Internal.Text ->
  -- | 'savingsFixedActivityPurchaseRecordItemPurchaseId'
  GHC.Int.Int64 ->
  -- | 'savingsFixedActivityPurchaseRecordItemStatus'
  Data.Text.Internal.Text ->
  SavingsFixedActivityPurchaseRecordItem
mkSavingsFixedActivityPurchaseRecordItem savingsFixedActivityPurchaseRecordItemAmount savingsFixedActivityPurchaseRecordItemAsset savingsFixedActivityPurchaseRecordItemCreateTime savingsFixedActivityPurchaseRecordItemLendingType savingsFixedActivityPurchaseRecordItemLot savingsFixedActivityPurchaseRecordItemProductName savingsFixedActivityPurchaseRecordItemPurchaseId savingsFixedActivityPurchaseRecordItemStatus =
  SavingsFixedActivityPurchaseRecordItem
    { savingsFixedActivityPurchaseRecordItemAmount = savingsFixedActivityPurchaseRecordItemAmount,
      savingsFixedActivityPurchaseRecordItemAsset = savingsFixedActivityPurchaseRecordItemAsset,
      savingsFixedActivityPurchaseRecordItemCreateTime = savingsFixedActivityPurchaseRecordItemCreateTime,
      savingsFixedActivityPurchaseRecordItemLendingType = savingsFixedActivityPurchaseRecordItemLendingType,
      savingsFixedActivityPurchaseRecordItemLot = savingsFixedActivityPurchaseRecordItemLot,
      savingsFixedActivityPurchaseRecordItemProductName = savingsFixedActivityPurchaseRecordItemProductName,
      savingsFixedActivityPurchaseRecordItemPurchaseId = savingsFixedActivityPurchaseRecordItemPurchaseId,
      savingsFixedActivityPurchaseRecordItemStatus = savingsFixedActivityPurchaseRecordItemStatus
    }

-- | Defines an alias for the schema located at @components.schemas.savingsFixedActivityPurchaseRecord@ in the specification.
type SavingsFixedActivityPurchaseRecord = [SavingsFixedActivityPurchaseRecordItem]
