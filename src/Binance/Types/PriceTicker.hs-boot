module Binance.Types.PriceTicker where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data PriceTicker
instance Show PriceTicker
instance Eq PriceTicker
instance FromJSON PriceTicker
instance ToJSON PriceTicker
