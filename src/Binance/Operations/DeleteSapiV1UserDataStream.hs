{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSapiV1UserDataStream
module Binance.Operations.DeleteSapiV1UserDataStream where

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

-- | > DELETE /sapi/v1/userDataStream
--
-- Close out a user data stream.
--
-- Weight: 1
deleteSapiV1UserDataStream ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | listenKey: User websocket listen key
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSapiV1UserDataStreamResponse)
deleteSapiV1UserDataStream listenKey =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteSapiV1UserDataStreamResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1UserDataStreamResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Data.Aeson.Types.Internal.Object
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1UserDataStreamResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/sapi/v1/userDataStream") [Binance.Common.QueryParameter (Data.Text.pack "listenKey") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listenKey) (Data.Text.pack "form") GHC.Types.False])

-- | Represents a response of the operation 'deleteSapiV1UserDataStream'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSapiV1UserDataStreamResponseError' is used.
data DeleteSapiV1UserDataStreamResponse
  = -- | Means either no matching case available or a parse error
    DeleteSapiV1UserDataStreamResponseError GHC.Base.String
  | -- | OK
    DeleteSapiV1UserDataStreamResponse200 Data.Aeson.Types.Internal.Object
  | -- | Bad Request
    DeleteSapiV1UserDataStreamResponse400 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > DELETE /sapi/v1/userDataStream
--
-- The same as 'deleteSapiV1UserDataStream' but accepts an explicit configuration.
deleteSapiV1UserDataStreamWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | listenKey: User websocket listen key
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response DeleteSapiV1UserDataStreamResponse)
deleteSapiV1UserDataStreamWithConfiguration
  config
  listenKey =
    GHC.Base.fmap
      ( \response_3 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSapiV1UserDataStreamResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1UserDataStreamResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Data.Aeson.Types.Internal.Object
                                                        )
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1UserDataStreamResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_3
            )
            response_3
      )
      (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/sapi/v1/userDataStream") [Binance.Common.QueryParameter (Data.Text.pack "listenKey") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listenKey) (Data.Text.pack "form") GHC.Types.False])

-- | > DELETE /sapi/v1/userDataStream
--
-- The same as 'deleteSapiV1UserDataStream' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1UserDataStreamRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | listenKey: User websocket listen key
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1UserDataStreamRaw listenKey = GHC.Base.id (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/sapi/v1/userDataStream") [Binance.Common.QueryParameter (Data.Text.pack "listenKey") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listenKey) (Data.Text.pack "form") GHC.Types.False])

-- | > DELETE /sapi/v1/userDataStream
--
-- The same as 'deleteSapiV1UserDataStream' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1UserDataStreamWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | listenKey: User websocket listen key
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1UserDataStreamWithConfigurationRaw
  config
  listenKey = GHC.Base.id (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/sapi/v1/userDataStream") [Binance.Common.QueryParameter (Data.Text.pack "listenKey") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listenKey) (Data.Text.pack "form") GHC.Types.False])
