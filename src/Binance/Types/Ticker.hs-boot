module Binance.Types.Ticker where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data Ticker
instance Show Ticker
instance Eq Ticker
instance FromJSON Ticker
instance ToJSON Ticker
