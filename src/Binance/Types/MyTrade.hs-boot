module Binance.Types.MyTrade where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data MyTrade
instance Show MyTrade
instance Eq MyTrade
instance FromJSON MyTrade
instance ToJSON MyTrade
