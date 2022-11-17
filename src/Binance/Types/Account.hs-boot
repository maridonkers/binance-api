module Binance.Types.Account where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data Account
instance Show Account
instance Eq Account
instance FromJSON Account
instance ToJSON Account
data AccountBalances
instance Show AccountBalances
instance Eq AccountBalances
instance FromJSON AccountBalances
instance ToJSON AccountBalances
