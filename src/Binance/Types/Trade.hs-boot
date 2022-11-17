module Binance.Types.Trade where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data Trade
instance Show Trade
instance Eq Trade
instance FromJSON Trade
instance ToJSON Trade
