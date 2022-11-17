module Binance.Types.Transaction where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Binance.Common
data Transaction
instance Show Transaction
instance Eq Transaction
instance FromJSON Transaction
instance ToJSON Transaction
