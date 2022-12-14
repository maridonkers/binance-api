{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginAllOrders
module Binance.Operations.GetSapiV1MarginAllOrders where

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

-- | > GET /sapi/v1/margin/allOrders
--
-- - If \`orderId\` is set, it will get orders >= that orderId. Otherwise most recent orders are returned.
-- - For some historical orders \`cummulativeQuoteQty\` will be \< 0, meaning the data is not available at this time.
--
-- Weight(IP): 200
--
-- Request Limit: 60 times\/min per IP
getSapiV1MarginAllOrders ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginAllOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginAllOrdersResponse)
getSapiV1MarginAllOrders parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginAllOrdersResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginAllOrdersResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([MarginOrderDetail])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginAllOrdersResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginAllOrdersResponse401
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
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/allOrders")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/allOrders.GET.parameters@ in the specification.
data GetSapiV1MarginAllOrdersParameters = GetSapiV1MarginAllOrdersParameters
  { -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginAllOrdersParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryIsIsolated: Represents the parameter named \'isIsolated\'
    --
    -- * \`TRUE\` - For isolated margin
    -- * \`FALSE\` - Default, not for isolated margin
    getSapiV1MarginAllOrdersParametersQueryIsIsolated :: (GHC.Maybe.Maybe GetSapiV1MarginAllOrdersParametersQueryIsIsolated),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Default 500; max 1000.
    getSapiV1MarginAllOrdersParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryOrderId: Represents the parameter named \'orderId\'
    --
    -- Order id
    getSapiV1MarginAllOrdersParametersQueryOrderId :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginAllOrdersParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginAllOrdersParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginAllOrdersParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    getSapiV1MarginAllOrdersParametersQuerySymbol :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginAllOrdersParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginAllOrdersParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderId" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryStartTime obj) : ["querySymbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderId" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginAllOrdersParametersQueryStartTime obj) : ["querySymbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginAllOrdersParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginAllOrdersParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginAllOrdersParameters" (\obj -> ((((((((GHC.Base.pure GetSapiV1MarginAllOrdersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIsIsolated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1MarginAllOrdersParameters' with all required fields.
mkGetSapiV1MarginAllOrdersParameters ::
  -- | 'getSapiV1MarginAllOrdersParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginAllOrdersParametersQuerySymbol'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginAllOrdersParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginAllOrdersParameters
mkGetSapiV1MarginAllOrdersParameters getSapiV1MarginAllOrdersParametersQuerySignature getSapiV1MarginAllOrdersParametersQuerySymbol getSapiV1MarginAllOrdersParametersQueryTimestamp =
  GetSapiV1MarginAllOrdersParameters
    { getSapiV1MarginAllOrdersParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQueryIsIsolated = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQueryOrderId = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQuerySignature = getSapiV1MarginAllOrdersParametersQuerySignature,
      getSapiV1MarginAllOrdersParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1MarginAllOrdersParametersQuerySymbol = getSapiV1MarginAllOrdersParametersQuerySymbol,
      getSapiV1MarginAllOrdersParametersQueryTimestamp = getSapiV1MarginAllOrdersParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/margin\/allOrders.GET.parameters.properties.queryIsIsolated@ in the specification.
--
-- Represents the parameter named \'isIsolated\'
--
-- * \`TRUE\` - For isolated margin
-- * \`FALSE\` - Default, not for isolated margin
data GetSapiV1MarginAllOrdersParametersQueryIsIsolated
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV1MarginAllOrdersParametersQueryIsIsolatedOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV1MarginAllOrdersParametersQueryIsIsolatedTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"TRUE"@
    GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumTRUE
  | -- | Represents the JSON value @"FALSE"@
    GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumFALSE
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginAllOrdersParametersQueryIsIsolated where
  toJSON (GetSapiV1MarginAllOrdersParametersQueryIsIsolatedOther val) = val
  toJSON (GetSapiV1MarginAllOrdersParametersQueryIsIsolatedTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumTRUE) = "TRUE"
  toJSON (GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumFALSE) = "FALSE"

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginAllOrdersParametersQueryIsIsolated where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "TRUE" -> GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumTRUE
            | val GHC.Classes.== "FALSE" -> GetSapiV1MarginAllOrdersParametersQueryIsIsolatedEnumFALSE
            | GHC.Base.otherwise -> GetSapiV1MarginAllOrdersParametersQueryIsIsolatedOther val
      )

-- | Represents a response of the operation 'getSapiV1MarginAllOrders'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginAllOrdersResponseError' is used.
data GetSapiV1MarginAllOrdersResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginAllOrdersResponseError GHC.Base.String
  | -- | Margin order list
    GetSapiV1MarginAllOrdersResponse200 ([MarginOrderDetail])
  | -- | Bad Request
    GetSapiV1MarginAllOrdersResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginAllOrdersResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > GET /sapi/v1/margin/allOrders
--
-- The same as 'getSapiV1MarginAllOrders' but accepts an explicit configuration.
getSapiV1MarginAllOrdersWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginAllOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginAllOrdersResponse)
getSapiV1MarginAllOrdersWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginAllOrdersResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginAllOrdersResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([MarginOrderDetail])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginAllOrdersResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginAllOrdersResponse401
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
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/allOrders")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/allOrders
--
-- The same as 'getSapiV1MarginAllOrders' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginAllOrdersRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginAllOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginAllOrdersRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/allOrders")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/allOrders
--
-- The same as 'getSapiV1MarginAllOrders' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginAllOrdersWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginAllOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginAllOrdersWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/allOrders")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginAllOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginAllOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
