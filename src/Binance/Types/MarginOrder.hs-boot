module Binance.Types.MarginOrder where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data MarginOrder
instance Show MarginOrder
instance Eq MarginOrder
instance FromJSON MarginOrder
instance ToJSON MarginOrder
