module Binance.Types.MarginTrade where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data MarginTrade
instance Show MarginTrade
instance Eq MarginTrade
instance FromJSON MarginTrade
instance ToJSON MarginTrade
