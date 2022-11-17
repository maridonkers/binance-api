{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BnbBurnStatus
module Binance.Types.BnbBurnStatus where

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

-- | Defines the object schema located at @components.schemas.bnbBurnStatus@ in the specification.
data BnbBurnStatus = BnbBurnStatus
  { -- | interestBNBBurn
    bnbBurnStatusInterestBNBBurn :: GHC.Types.Bool,
    -- | spotBNBBurn
    bnbBurnStatusSpotBNBBurn :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BnbBurnStatus where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["interestBNBBurn" Data.Aeson.Types.ToJSON..= bnbBurnStatusInterestBNBBurn obj] : ["spotBNBBurn" Data.Aeson.Types.ToJSON..= bnbBurnStatusSpotBNBBurn obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["interestBNBBurn" Data.Aeson.Types.ToJSON..= bnbBurnStatusInterestBNBBurn obj] : ["spotBNBBurn" Data.Aeson.Types.ToJSON..= bnbBurnStatusSpotBNBBurn obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BnbBurnStatus where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BnbBurnStatus" (\obj -> (GHC.Base.pure BnbBurnStatus GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interestBNBBurn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "spotBNBBurn"))

-- | Create a new 'BnbBurnStatus' with all required fields.
mkBnbBurnStatus ::
  -- | 'bnbBurnStatusInterestBNBBurn'
  GHC.Types.Bool ->
  -- | 'bnbBurnStatusSpotBNBBurn'
  GHC.Types.Bool ->
  BnbBurnStatus
mkBnbBurnStatus bnbBurnStatusInterestBNBBurn bnbBurnStatusSpotBNBBurn =
  BnbBurnStatus
    { bnbBurnStatusInterestBNBBurn = bnbBurnStatusInterestBNBBurn,
      bnbBurnStatusSpotBNBBurn = bnbBurnStatusSpotBNBBurn
    }
