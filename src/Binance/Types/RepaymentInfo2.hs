{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema RepaymentInfo2
module Binance.Types.RepaymentInfo2 where

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

-- | Defines the object schema located at @components.schemas.repaymentInfo2@ in the specification.
data RepaymentInfo2 = RepaymentInfo2
  { -- | collateralCoin
    repaymentInfo2CollateralCoin :: Data.Text.Internal.Text,
    -- | loanCoin
    repaymentInfo2LoanCoin :: Data.Text.Internal.Text,
    -- | repayStatus
    repaymentInfo2RepayStatus :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RepaymentInfo2 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["collateralCoin" Data.Aeson.Types.ToJSON..= repaymentInfo2CollateralCoin obj] : ["loanCoin" Data.Aeson.Types.ToJSON..= repaymentInfo2LoanCoin obj] : ["repayStatus" Data.Aeson.Types.ToJSON..= repaymentInfo2RepayStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["collateralCoin" Data.Aeson.Types.ToJSON..= repaymentInfo2CollateralCoin obj] : ["loanCoin" Data.Aeson.Types.ToJSON..= repaymentInfo2LoanCoin obj] : ["repayStatus" Data.Aeson.Types.ToJSON..= repaymentInfo2RepayStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RepaymentInfo2 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RepaymentInfo2" (\obj -> ((GHC.Base.pure RepaymentInfo2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "collateralCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "loanCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "repayStatus"))

-- | Create a new 'RepaymentInfo2' with all required fields.
mkRepaymentInfo2 ::
  -- | 'repaymentInfo2CollateralCoin'
  Data.Text.Internal.Text ->
  -- | 'repaymentInfo2LoanCoin'
  Data.Text.Internal.Text ->
  -- | 'repaymentInfo2RepayStatus'
  Data.Text.Internal.Text ->
  RepaymentInfo2
mkRepaymentInfo2 repaymentInfo2CollateralCoin repaymentInfo2LoanCoin repaymentInfo2RepayStatus =
  RepaymentInfo2
    { repaymentInfo2CollateralCoin = repaymentInfo2CollateralCoin,
      repaymentInfo2LoanCoin = repaymentInfo2LoanCoin,
      repaymentInfo2RepayStatus = repaymentInfo2RepayStatus
    }
