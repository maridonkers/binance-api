{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BswapAddLiquidityPreviewSingle
module Binance.Types.BswapAddLiquidityPreviewSingle where

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

-- | Defines the object schema located at @components.schemas.bswapAddLiquidityPreviewSingle@ in the specification.
data BswapAddLiquidityPreviewSingle = BswapAddLiquidityPreviewSingle
  { -- | fee
    bswapAddLiquidityPreviewSingleFee :: GHC.Types.Double,
    -- | price
    bswapAddLiquidityPreviewSinglePrice :: GHC.Types.Double,
    -- | quoteAmt
    bswapAddLiquidityPreviewSingleQuoteAmt :: GHC.Int.Int64,
    -- | quoteAsset
    bswapAddLiquidityPreviewSingleQuoteAsset :: Data.Text.Internal.Text,
    -- | share
    bswapAddLiquidityPreviewSingleShare :: GHC.Types.Double,
    -- | slippage
    bswapAddLiquidityPreviewSingleSlippage :: GHC.Types.Double
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BswapAddLiquidityPreviewSingle where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["fee" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleFee obj] : ["price" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSinglePrice obj] : ["quoteAmt" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleQuoteAmt obj] : ["quoteAsset" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleQuoteAsset obj] : ["share" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleShare obj] : ["slippage" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleSlippage obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["fee" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleFee obj] : ["price" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSinglePrice obj] : ["quoteAmt" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleQuoteAmt obj] : ["quoteAsset" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleQuoteAsset obj] : ["share" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleShare obj] : ["slippage" Data.Aeson.Types.ToJSON..= bswapAddLiquidityPreviewSingleSlippage obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BswapAddLiquidityPreviewSingle where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BswapAddLiquidityPreviewSingle" (\obj -> (((((GHC.Base.pure BswapAddLiquidityPreviewSingle GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quoteAmt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quoteAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "share")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slippage"))

-- | Create a new 'BswapAddLiquidityPreviewSingle' with all required fields.
mkBswapAddLiquidityPreviewSingle ::
  -- | 'bswapAddLiquidityPreviewSingleFee'
  GHC.Types.Double ->
  -- | 'bswapAddLiquidityPreviewSinglePrice'
  GHC.Types.Double ->
  -- | 'bswapAddLiquidityPreviewSingleQuoteAmt'
  GHC.Int.Int64 ->
  -- | 'bswapAddLiquidityPreviewSingleQuoteAsset'
  Data.Text.Internal.Text ->
  -- | 'bswapAddLiquidityPreviewSingleShare'
  GHC.Types.Double ->
  -- | 'bswapAddLiquidityPreviewSingleSlippage'
  GHC.Types.Double ->
  BswapAddLiquidityPreviewSingle
mkBswapAddLiquidityPreviewSingle bswapAddLiquidityPreviewSingleFee bswapAddLiquidityPreviewSinglePrice bswapAddLiquidityPreviewSingleQuoteAmt bswapAddLiquidityPreviewSingleQuoteAsset bswapAddLiquidityPreviewSingleShare bswapAddLiquidityPreviewSingleSlippage =
  BswapAddLiquidityPreviewSingle
    { bswapAddLiquidityPreviewSingleFee = bswapAddLiquidityPreviewSingleFee,
      bswapAddLiquidityPreviewSinglePrice = bswapAddLiquidityPreviewSinglePrice,
      bswapAddLiquidityPreviewSingleQuoteAmt = bswapAddLiquidityPreviewSingleQuoteAmt,
      bswapAddLiquidityPreviewSingleQuoteAsset = bswapAddLiquidityPreviewSingleQuoteAsset,
      bswapAddLiquidityPreviewSingleShare = bswapAddLiquidityPreviewSingleShare,
      bswapAddLiquidityPreviewSingleSlippage = bswapAddLiquidityPreviewSingleSlippage
    }
