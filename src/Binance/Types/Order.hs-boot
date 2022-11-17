module Binance.Types.Order where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data Order
instance Show Order
instance Eq Order
instance FromJSON Order
instance ToJSON Order
