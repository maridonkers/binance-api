module Binance.Types.AggTrade where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data AggTrade
instance Show AggTrade
instance Eq AggTrade
instance FromJSON AggTrade
instance ToJSON AggTrade
