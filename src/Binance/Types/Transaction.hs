{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Transaction
module Binance.Types.Transaction where

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

-- | Defines the object schema located at @components.schemas.transaction@ in the specification.
data Transaction = Transaction
  { -- | tranId: transaction id
    transactionTranId :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Transaction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= transactionTranId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= transactionTranId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Transaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Transaction" (\obj -> GHC.Base.pure Transaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tranId"))

-- | Create a new 'Transaction' with all required fields.
mkTransaction ::
  -- | 'transactionTranId'
  GHC.Int.Int64 ->
  Transaction
mkTransaction transactionTranId = Transaction {transactionTranId = transactionTranId}
