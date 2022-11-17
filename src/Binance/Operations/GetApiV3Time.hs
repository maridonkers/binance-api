{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApiV3Time
module Binance.Operations.GetApiV3Time where

import qualified Binance.Common
import Binance.Types
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > GET /api/v3/time
--
-- Test connectivity to the Rest API and get the current server time.
--
-- Weight(IP): 1
getApiV3Time :: forall m. Binance.Common.MonadHTTP m => -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetApiV3TimeResponse)
getApiV3Time =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3TimeResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TimeResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetApiV3TimeResponseBody200
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v3/time") GHC.Base.mempty)

-- | Represents a response of the operation 'getApiV3Time'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApiV3TimeResponseError' is used.
data GetApiV3TimeResponse
  = -- | Means either no matching case available or a parse error
    GetApiV3TimeResponseError GHC.Base.String
  | -- | Binance server UTC timestamp
    GetApiV3TimeResponse200 GetApiV3TimeResponseBody200
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/api\/v3\/time.GET.responses.200.content.application\/json.schema@ in the specification.
data GetApiV3TimeResponseBody200 = GetApiV3TimeResponseBody200
  { -- | serverTime
    getApiV3TimeResponseBody200ServerTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3TimeResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["serverTime" Data.Aeson.Types.ToJSON..= getApiV3TimeResponseBody200ServerTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["serverTime" Data.Aeson.Types.ToJSON..= getApiV3TimeResponseBody200ServerTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3TimeResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3TimeResponseBody200" (\obj -> GHC.Base.pure GetApiV3TimeResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "serverTime"))

-- | Create a new 'GetApiV3TimeResponseBody200' with all required fields.
mkGetApiV3TimeResponseBody200 ::
  -- | 'getApiV3TimeResponseBody200ServerTime'
  GHC.Int.Int64 ->
  GetApiV3TimeResponseBody200
mkGetApiV3TimeResponseBody200 getApiV3TimeResponseBody200ServerTime = GetApiV3TimeResponseBody200 {getApiV3TimeResponseBody200ServerTime = getApiV3TimeResponseBody200ServerTime}

-- | > GET /api/v3/time
--
-- The same as 'getApiV3Time' but accepts an explicit configuration.
getApiV3TimeWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetApiV3TimeResponse)
getApiV3TimeWithConfiguration config =
  GHC.Base.fmap
    ( \response_2 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3TimeResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TimeResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetApiV3TimeResponseBody200
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_2
          )
          response_2
    )
    (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v3/time") GHC.Base.mempty)

-- | > GET /api/v3/time
--
-- The same as 'getApiV3Time' but returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TimeRaw :: forall m. Binance.Common.MonadHTTP m => -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TimeRaw = GHC.Base.id (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v3/time") GHC.Base.mempty)

-- | > GET /api/v3/time
--
-- The same as 'getApiV3Time' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TimeWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TimeWithConfigurationRaw config = GHC.Base.id (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/api/v3/time") GHC.Base.mempty)
