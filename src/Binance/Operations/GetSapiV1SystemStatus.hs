{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1SystemStatus
module Binance.Operations.GetSapiV1SystemStatus where

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

-- | > GET /sapi/v1/system/status
--
-- Fetch system status.
--
-- Weight(IP): 1
getSapiV1SystemStatus :: forall m. Binance.Common.MonadHTTP m => -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1SystemStatusResponse)
getSapiV1SystemStatus =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1SystemStatusResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SystemStatusResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1SystemStatusResponseBody200
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/system/status") GHC.Base.mempty)

-- | Represents a response of the operation 'getSapiV1SystemStatus'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1SystemStatusResponseError' is used.
data GetSapiV1SystemStatusResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1SystemStatusResponseError GHC.Base.String
  | -- | OK
    GetSapiV1SystemStatusResponse200 GetSapiV1SystemStatusResponseBody200
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/system\/status.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1SystemStatusResponseBody200 = GetSapiV1SystemStatusResponseBody200
  { -- | msg: \"normal\", \"system_maintenance\"
    getSapiV1SystemStatusResponseBody200Msg :: Data.Text.Internal.Text,
    -- | status: 0: normal, 1???system maintenance
    getSapiV1SystemStatusResponseBody200Status :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1SystemStatusResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["msg" Data.Aeson.Types.ToJSON..= getSapiV1SystemStatusResponseBody200Msg obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1SystemStatusResponseBody200Status obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["msg" Data.Aeson.Types.ToJSON..= getSapiV1SystemStatusResponseBody200Msg obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1SystemStatusResponseBody200Status obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1SystemStatusResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1SystemStatusResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1SystemStatusResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'GetSapiV1SystemStatusResponseBody200' with all required fields.
mkGetSapiV1SystemStatusResponseBody200 ::
  -- | 'getSapiV1SystemStatusResponseBody200Msg'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SystemStatusResponseBody200Status'
  GHC.Int.Int32 ->
  GetSapiV1SystemStatusResponseBody200
mkGetSapiV1SystemStatusResponseBody200 getSapiV1SystemStatusResponseBody200Msg getSapiV1SystemStatusResponseBody200Status =
  GetSapiV1SystemStatusResponseBody200
    { getSapiV1SystemStatusResponseBody200Msg = getSapiV1SystemStatusResponseBody200Msg,
      getSapiV1SystemStatusResponseBody200Status = getSapiV1SystemStatusResponseBody200Status
    }

-- | > GET /sapi/v1/system/status
--
-- The same as 'getSapiV1SystemStatus' but accepts an explicit configuration.
getSapiV1SystemStatusWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1SystemStatusResponse)
getSapiV1SystemStatusWithConfiguration config =
  GHC.Base.fmap
    ( \response_2 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1SystemStatusResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SystemStatusResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1SystemStatusResponseBody200
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_2
          )
          response_2
    )
    (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/system/status") GHC.Base.mempty)

-- | > GET /sapi/v1/system/status
--
-- The same as 'getSapiV1SystemStatus' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SystemStatusRaw :: forall m. Binance.Common.MonadHTTP m => -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SystemStatusRaw = GHC.Base.id (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/system/status") GHC.Base.mempty)

-- | > GET /sapi/v1/system/status
--
-- The same as 'getSapiV1SystemStatus' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SystemStatusWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SystemStatusWithConfigurationRaw config = GHC.Base.id (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/system/status") GHC.Base.mempty)
