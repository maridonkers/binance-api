{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SnapshotMargin
module Binance.Types.SnapshotMargin where

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

-- | Defines the object schema located at @components.schemas.snapshotMargin@ in the specification.
data SnapshotMargin = SnapshotMargin
  { -- | code
    snapshotMarginCode :: GHC.Int.Int64,
    -- | msg
    snapshotMarginMsg :: Data.Text.Internal.Text,
    -- | snapshotVos
    snapshotMarginSnapshotVos :: ([SnapshotMarginSnapshotVos])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SnapshotMargin where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= snapshotMarginCode obj] : ["msg" Data.Aeson.Types.ToJSON..= snapshotMarginMsg obj] : ["snapshotVos" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVos obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= snapshotMarginCode obj] : ["msg" Data.Aeson.Types.ToJSON..= snapshotMarginMsg obj] : ["snapshotVos" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVos obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SnapshotMargin where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SnapshotMargin" (\obj -> ((GHC.Base.pure SnapshotMargin GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "snapshotVos"))

-- | Create a new 'SnapshotMargin' with all required fields.
mkSnapshotMargin ::
  -- | 'snapshotMarginCode'
  GHC.Int.Int64 ->
  -- | 'snapshotMarginMsg'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVos'
  [SnapshotMarginSnapshotVos] ->
  SnapshotMargin
mkSnapshotMargin snapshotMarginCode snapshotMarginMsg snapshotMarginSnapshotVos =
  SnapshotMargin
    { snapshotMarginCode = snapshotMarginCode,
      snapshotMarginMsg = snapshotMarginMsg,
      snapshotMarginSnapshotVos = snapshotMarginSnapshotVos
    }

-- | Defines the object schema located at @components.schemas.snapshotMargin.properties.snapshotVos.items@ in the specification.
data SnapshotMarginSnapshotVos = SnapshotMarginSnapshotVos
  { -- | data
    snapshotMarginSnapshotVosData :: SnapshotMarginSnapshotVosData,
    -- | type
    snapshotMarginSnapshotVosType :: Data.Text.Internal.Text,
    -- | updateTime
    snapshotMarginSnapshotVosUpdateTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SnapshotMarginSnapshotVos where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosData obj] : ["type" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosType obj] : ["updateTime" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosUpdateTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosData obj] : ["type" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosType obj] : ["updateTime" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosUpdateTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SnapshotMarginSnapshotVos where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SnapshotMarginSnapshotVos" (\obj -> ((GHC.Base.pure SnapshotMarginSnapshotVos GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updateTime"))

-- | Create a new 'SnapshotMarginSnapshotVos' with all required fields.
mkSnapshotMarginSnapshotVos ::
  -- | 'snapshotMarginSnapshotVosData'
  SnapshotMarginSnapshotVosData ->
  -- | 'snapshotMarginSnapshotVosType'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosUpdateTime'
  GHC.Int.Int64 ->
  SnapshotMarginSnapshotVos
mkSnapshotMarginSnapshotVos snapshotMarginSnapshotVosData snapshotMarginSnapshotVosType snapshotMarginSnapshotVosUpdateTime =
  SnapshotMarginSnapshotVos
    { snapshotMarginSnapshotVosData = snapshotMarginSnapshotVosData,
      snapshotMarginSnapshotVosType = snapshotMarginSnapshotVosType,
      snapshotMarginSnapshotVosUpdateTime = snapshotMarginSnapshotVosUpdateTime
    }

-- | Defines the object schema located at @components.schemas.snapshotMargin.properties.snapshotVos.items.properties.data@ in the specification.
data SnapshotMarginSnapshotVosData = SnapshotMarginSnapshotVosData
  { -- | marginLevel
    snapshotMarginSnapshotVosDataMarginLevel :: Data.Text.Internal.Text,
    -- | totalAssetOfBtc
    snapshotMarginSnapshotVosDataTotalAssetOfBtc :: Data.Text.Internal.Text,
    -- | totalLiabilityOfBtc
    snapshotMarginSnapshotVosDataTotalLiabilityOfBtc :: Data.Text.Internal.Text,
    -- | totalNetAssetOfBtc
    snapshotMarginSnapshotVosDataTotalNetAssetOfBtc :: Data.Text.Internal.Text,
    -- | userAssets
    snapshotMarginSnapshotVosDataUserAssets :: ([SnapshotMarginSnapshotVosDataUserAssets])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SnapshotMarginSnapshotVosData where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["marginLevel" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataMarginLevel obj] : ["totalAssetOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalAssetOfBtc obj] : ["totalLiabilityOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalLiabilityOfBtc obj] : ["totalNetAssetOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalNetAssetOfBtc obj] : ["userAssets" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssets obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["marginLevel" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataMarginLevel obj] : ["totalAssetOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalAssetOfBtc obj] : ["totalLiabilityOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalLiabilityOfBtc obj] : ["totalNetAssetOfBtc" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataTotalNetAssetOfBtc obj] : ["userAssets" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssets obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SnapshotMarginSnapshotVosData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SnapshotMarginSnapshotVosData" (\obj -> ((((GHC.Base.pure SnapshotMarginSnapshotVosData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "marginLevel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalAssetOfBtc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalLiabilityOfBtc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalNetAssetOfBtc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "userAssets"))

-- | Create a new 'SnapshotMarginSnapshotVosData' with all required fields.
mkSnapshotMarginSnapshotVosData ::
  -- | 'snapshotMarginSnapshotVosDataMarginLevel'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataTotalAssetOfBtc'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataTotalLiabilityOfBtc'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataTotalNetAssetOfBtc'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssets'
  [SnapshotMarginSnapshotVosDataUserAssets] ->
  SnapshotMarginSnapshotVosData
mkSnapshotMarginSnapshotVosData snapshotMarginSnapshotVosDataMarginLevel snapshotMarginSnapshotVosDataTotalAssetOfBtc snapshotMarginSnapshotVosDataTotalLiabilityOfBtc snapshotMarginSnapshotVosDataTotalNetAssetOfBtc snapshotMarginSnapshotVosDataUserAssets =
  SnapshotMarginSnapshotVosData
    { snapshotMarginSnapshotVosDataMarginLevel = snapshotMarginSnapshotVosDataMarginLevel,
      snapshotMarginSnapshotVosDataTotalAssetOfBtc = snapshotMarginSnapshotVosDataTotalAssetOfBtc,
      snapshotMarginSnapshotVosDataTotalLiabilityOfBtc = snapshotMarginSnapshotVosDataTotalLiabilityOfBtc,
      snapshotMarginSnapshotVosDataTotalNetAssetOfBtc = snapshotMarginSnapshotVosDataTotalNetAssetOfBtc,
      snapshotMarginSnapshotVosDataUserAssets = snapshotMarginSnapshotVosDataUserAssets
    }

-- | Defines the object schema located at @components.schemas.snapshotMargin.properties.snapshotVos.items.properties.data.properties.userAssets.items@ in the specification.
data SnapshotMarginSnapshotVosDataUserAssets = SnapshotMarginSnapshotVosDataUserAssets
  { -- | asset
    snapshotMarginSnapshotVosDataUserAssetsAsset :: Data.Text.Internal.Text,
    -- | borrowed
    snapshotMarginSnapshotVosDataUserAssetsBorrowed :: Data.Text.Internal.Text,
    -- | free
    snapshotMarginSnapshotVosDataUserAssetsFree :: Data.Text.Internal.Text,
    -- | interest
    snapshotMarginSnapshotVosDataUserAssetsInterest :: Data.Text.Internal.Text,
    -- | locked
    snapshotMarginSnapshotVosDataUserAssetsLocked :: Data.Text.Internal.Text,
    -- | netAsset
    snapshotMarginSnapshotVosDataUserAssetsNetAsset :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SnapshotMarginSnapshotVosDataUserAssets where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsAsset obj] : ["borrowed" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsBorrowed obj] : ["free" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsFree obj] : ["interest" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsInterest obj] : ["locked" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsLocked obj] : ["netAsset" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsNetAsset obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsAsset obj] : ["borrowed" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsBorrowed obj] : ["free" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsFree obj] : ["interest" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsInterest obj] : ["locked" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsLocked obj] : ["netAsset" Data.Aeson.Types.ToJSON..= snapshotMarginSnapshotVosDataUserAssetsNetAsset obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SnapshotMarginSnapshotVosDataUserAssets where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SnapshotMarginSnapshotVosDataUserAssets" (\obj -> (((((GHC.Base.pure SnapshotMarginSnapshotVosDataUserAssets GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "borrowed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "free")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "locked")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "netAsset"))

-- | Create a new 'SnapshotMarginSnapshotVosDataUserAssets' with all required fields.
mkSnapshotMarginSnapshotVosDataUserAssets ::
  -- | 'snapshotMarginSnapshotVosDataUserAssetsAsset'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssetsBorrowed'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssetsFree'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssetsInterest'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssetsLocked'
  Data.Text.Internal.Text ->
  -- | 'snapshotMarginSnapshotVosDataUserAssetsNetAsset'
  Data.Text.Internal.Text ->
  SnapshotMarginSnapshotVosDataUserAssets
mkSnapshotMarginSnapshotVosDataUserAssets snapshotMarginSnapshotVosDataUserAssetsAsset snapshotMarginSnapshotVosDataUserAssetsBorrowed snapshotMarginSnapshotVosDataUserAssetsFree snapshotMarginSnapshotVosDataUserAssetsInterest snapshotMarginSnapshotVosDataUserAssetsLocked snapshotMarginSnapshotVosDataUserAssetsNetAsset =
  SnapshotMarginSnapshotVosDataUserAssets
    { snapshotMarginSnapshotVosDataUserAssetsAsset = snapshotMarginSnapshotVosDataUserAssetsAsset,
      snapshotMarginSnapshotVosDataUserAssetsBorrowed = snapshotMarginSnapshotVosDataUserAssetsBorrowed,
      snapshotMarginSnapshotVosDataUserAssetsFree = snapshotMarginSnapshotVosDataUserAssetsFree,
      snapshotMarginSnapshotVosDataUserAssetsInterest = snapshotMarginSnapshotVosDataUserAssetsInterest,
      snapshotMarginSnapshotVosDataUserAssetsLocked = snapshotMarginSnapshotVosDataUserAssetsLocked,
      snapshotMarginSnapshotVosDataUserAssetsNetAsset = snapshotMarginSnapshotVosDataUserAssetsNetAsset
    }