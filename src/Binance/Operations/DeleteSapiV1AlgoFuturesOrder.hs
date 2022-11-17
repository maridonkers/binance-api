{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSapiV1AlgoFuturesOrder
module Binance.Operations.DeleteSapiV1AlgoFuturesOrder where

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

-- | > DELETE /sapi/v1/algo/futures/order
--
-- Cancel an active order.
-- - You need to enable Futures Trading Permission for the api key which requests this endpoint.
-- - Base URL: https:\/\/api.binance.com
--
-- Weight(IP): 1
deleteSapiV1AlgoFuturesOrder ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1AlgoFuturesOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSapiV1AlgoFuturesOrderResponse)
deleteSapiV1AlgoFuturesOrder parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteSapiV1AlgoFuturesOrderResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1AlgoFuturesOrderResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            DeleteSapiV1AlgoFuturesOrderResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1AlgoFuturesOrderResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1AlgoFuturesOrderResponse401
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
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
        (Data.Text.pack "/sapi/v1/algo/futures/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "algoId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/algo\/futures\/order.DELETE.parameters@ in the specification.
data DeleteSapiV1AlgoFuturesOrderParameters = DeleteSapiV1AlgoFuturesOrderParameters
  { -- | queryAlgoId: Represents the parameter named \'algoId\'
    --
    -- Eg. 14511
    deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId :: GHC.Int.Int64,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    deleteSapiV1AlgoFuturesOrderParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1AlgoFuturesOrderParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAlgoId" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAlgoId" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1AlgoFuturesOrderParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSapiV1AlgoFuturesOrderParameters" (\obj -> (((GHC.Base.pure DeleteSapiV1AlgoFuturesOrderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAlgoId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'DeleteSapiV1AlgoFuturesOrderParameters' with all required fields.
mkDeleteSapiV1AlgoFuturesOrderParameters ::
  -- | 'deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId'
  GHC.Int.Int64 ->
  -- | 'deleteSapiV1AlgoFuturesOrderParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp'
  GHC.Int.Int64 ->
  DeleteSapiV1AlgoFuturesOrderParameters
mkDeleteSapiV1AlgoFuturesOrderParameters deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId deleteSapiV1AlgoFuturesOrderParametersQuerySignature deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp =
  DeleteSapiV1AlgoFuturesOrderParameters
    { deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId = deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId,
      deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow = GHC.Maybe.Nothing,
      deleteSapiV1AlgoFuturesOrderParametersQuerySignature = deleteSapiV1AlgoFuturesOrderParametersQuerySignature,
      deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp = deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp
    }

-- | Represents a response of the operation 'deleteSapiV1AlgoFuturesOrder'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSapiV1AlgoFuturesOrderResponseError' is used.
data DeleteSapiV1AlgoFuturesOrderResponse
  = -- | Means either no matching case available or a parse error
    DeleteSapiV1AlgoFuturesOrderResponseError GHC.Base.String
  | -- | Cancelled order
    DeleteSapiV1AlgoFuturesOrderResponse200 DeleteSapiV1AlgoFuturesOrderResponseBody200
  | -- | Bad Request
    DeleteSapiV1AlgoFuturesOrderResponse400 Error
  | -- | Unauthorized Request
    DeleteSapiV1AlgoFuturesOrderResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/algo\/futures\/order.DELETE.responses.200.content.application\/json.schema@ in the specification.
data DeleteSapiV1AlgoFuturesOrderResponseBody200 = DeleteSapiV1AlgoFuturesOrderResponseBody200
  { -- | algoId
    deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId :: GHC.Int.Int64,
    -- | code
    deleteSapiV1AlgoFuturesOrderResponseBody200Code :: GHC.Int.Int64,
    -- | msg
    deleteSapiV1AlgoFuturesOrderResponseBody200Msg :: Data.Text.Internal.Text,
    -- | success
    deleteSapiV1AlgoFuturesOrderResponseBody200Success :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1AlgoFuturesOrderResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["algoId" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId obj] : ["code" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Code obj] : ["msg" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Msg obj] : ["success" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Success obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["algoId" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId obj] : ["code" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Code obj] : ["msg" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Msg obj] : ["success" Data.Aeson.Types.ToJSON..= deleteSapiV1AlgoFuturesOrderResponseBody200Success obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1AlgoFuturesOrderResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSapiV1AlgoFuturesOrderResponseBody200" (\obj -> (((GHC.Base.pure DeleteSapiV1AlgoFuturesOrderResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "algoId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success"))

-- | Create a new 'DeleteSapiV1AlgoFuturesOrderResponseBody200' with all required fields.
mkDeleteSapiV1AlgoFuturesOrderResponseBody200 ::
  -- | 'deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId'
  GHC.Int.Int64 ->
  -- | 'deleteSapiV1AlgoFuturesOrderResponseBody200Code'
  GHC.Int.Int64 ->
  -- | 'deleteSapiV1AlgoFuturesOrderResponseBody200Msg'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1AlgoFuturesOrderResponseBody200Success'
  GHC.Types.Bool ->
  DeleteSapiV1AlgoFuturesOrderResponseBody200
mkDeleteSapiV1AlgoFuturesOrderResponseBody200 deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId deleteSapiV1AlgoFuturesOrderResponseBody200Code deleteSapiV1AlgoFuturesOrderResponseBody200Msg deleteSapiV1AlgoFuturesOrderResponseBody200Success =
  DeleteSapiV1AlgoFuturesOrderResponseBody200
    { deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId = deleteSapiV1AlgoFuturesOrderResponseBody200AlgoId,
      deleteSapiV1AlgoFuturesOrderResponseBody200Code = deleteSapiV1AlgoFuturesOrderResponseBody200Code,
      deleteSapiV1AlgoFuturesOrderResponseBody200Msg = deleteSapiV1AlgoFuturesOrderResponseBody200Msg,
      deleteSapiV1AlgoFuturesOrderResponseBody200Success = deleteSapiV1AlgoFuturesOrderResponseBody200Success
    }

-- | > DELETE /sapi/v1/algo/futures/order
--
-- The same as 'deleteSapiV1AlgoFuturesOrder' but accepts an explicit configuration.
deleteSapiV1AlgoFuturesOrderWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1AlgoFuturesOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response DeleteSapiV1AlgoFuturesOrderResponse)
deleteSapiV1AlgoFuturesOrderWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSapiV1AlgoFuturesOrderResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1AlgoFuturesOrderResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              DeleteSapiV1AlgoFuturesOrderResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1AlgoFuturesOrderResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1AlgoFuturesOrderResponse401
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_4
            )
            response_4
      )
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
          (Data.Text.pack "/sapi/v1/algo/futures/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "algoId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > DELETE /sapi/v1/algo/futures/order
--
-- The same as 'deleteSapiV1AlgoFuturesOrder' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1AlgoFuturesOrderRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1AlgoFuturesOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1AlgoFuturesOrderRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
        (Data.Text.pack "/sapi/v1/algo/futures/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "algoId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > DELETE /sapi/v1/algo/futures/order
--
-- The same as 'deleteSapiV1AlgoFuturesOrder' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1AlgoFuturesOrderWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1AlgoFuturesOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1AlgoFuturesOrderWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
          (Data.Text.pack "/sapi/v1/algo/futures/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "algoId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryAlgoId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1AlgoFuturesOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1AlgoFuturesOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )