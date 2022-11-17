module Binance.Types.OrderDetails where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data OrderDetails
instance Show OrderDetails
instance Eq OrderDetails
instance FromJSON OrderDetails
instance ToJSON OrderDetails
