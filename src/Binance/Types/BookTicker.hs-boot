module Binance.Types.BookTicker where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data BookTicker
instance Show BookTicker
instance Eq BookTicker
instance FromJSON BookTicker
instance ToJSON BookTicker
