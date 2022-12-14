{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginRateLimitOrder
module Binance.Operations.GetSapiV1MarginRateLimitOrder where

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

-- | > GET /sapi/v1/margin/rateLimit/order
--
-- Displays the user\'s current margin order count usage for all intervals.
--
-- Weight(IP): 20
getSapiV1MarginRateLimitOrder ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginRateLimitOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginRateLimitOrderResponse)
getSapiV1MarginRateLimitOrder parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginRateLimitOrderResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginRateLimitOrderResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1MarginRateLimitOrderResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginRateLimitOrderResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginRateLimitOrderResponse401
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
        (Data.Text.pack "/sapi/v1/margin/rateLimit/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/rateLimit\/order.GET.parameters@ in the specification.
data GetSapiV1MarginRateLimitOrderParameters = GetSapiV1MarginRateLimitOrderParameters
  { -- | queryIsIsolated: Represents the parameter named \'isIsolated\'
    --
    -- * \`TRUE\` - For isolated margin
    -- * \`FALSE\` - Default, not for isolated margin
    getSapiV1MarginRateLimitOrderParametersQueryIsIsolated :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginRateLimitOrderParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginRateLimitOrderParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- isolated symbol, mandatory for isolated margin
    getSapiV1MarginRateLimitOrderParametersQuerySymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginRateLimitOrderParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginRateLimitOrderParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginRateLimitOrderParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginRateLimitOrderParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginRateLimitOrderParameters" (\obj -> ((((GHC.Base.pure GetSapiV1MarginRateLimitOrderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIsIsolated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1MarginRateLimitOrderParameters' with all required fields.
mkGetSapiV1MarginRateLimitOrderParameters ::
  -- | 'getSapiV1MarginRateLimitOrderParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginRateLimitOrderParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginRateLimitOrderParameters
mkGetSapiV1MarginRateLimitOrderParameters getSapiV1MarginRateLimitOrderParametersQuerySignature getSapiV1MarginRateLimitOrderParametersQueryTimestamp =
  GetSapiV1MarginRateLimitOrderParameters
    { getSapiV1MarginRateLimitOrderParametersQueryIsIsolated = GHC.Maybe.Nothing,
      getSapiV1MarginRateLimitOrderParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginRateLimitOrderParametersQuerySignature = getSapiV1MarginRateLimitOrderParametersQuerySignature,
      getSapiV1MarginRateLimitOrderParametersQuerySymbol = GHC.Maybe.Nothing,
      getSapiV1MarginRateLimitOrderParametersQueryTimestamp = getSapiV1MarginRateLimitOrderParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1MarginRateLimitOrder'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginRateLimitOrderResponseError' is used.
data GetSapiV1MarginRateLimitOrderResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginRateLimitOrderResponseError GHC.Base.String
  | -- | Usage.
    GetSapiV1MarginRateLimitOrderResponse200 ([GetSapiV1MarginRateLimitOrderResponseBody200])
  | -- | Bad Request
    GetSapiV1MarginRateLimitOrderResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginRateLimitOrderResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/rateLimit\/order.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1MarginRateLimitOrderResponseBody200 = GetSapiV1MarginRateLimitOrderResponseBody200
  { -- | count
    getSapiV1MarginRateLimitOrderResponseBody200Count :: GHC.Int.Int64,
    -- | interval
    getSapiV1MarginRateLimitOrderResponseBody200Interval :: Data.Text.Internal.Text,
    -- | intervalNum
    getSapiV1MarginRateLimitOrderResponseBody200IntervalNum :: GHC.Int.Int64,
    -- | limit
    getSapiV1MarginRateLimitOrderResponseBody200Limit :: GHC.Int.Int64,
    -- | rateLimitType
    getSapiV1MarginRateLimitOrderResponseBody200RateLimitType :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginRateLimitOrderResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["count" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Count obj] : ["interval" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Interval obj] : ["intervalNum" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200IntervalNum obj] : ["limit" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Limit obj] : ["rateLimitType" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200RateLimitType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["count" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Count obj] : ["interval" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Interval obj] : ["intervalNum" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200IntervalNum obj] : ["limit" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200Limit obj] : ["rateLimitType" Data.Aeson.Types.ToJSON..= getSapiV1MarginRateLimitOrderResponseBody200RateLimitType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginRateLimitOrderResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginRateLimitOrderResponseBody200" (\obj -> ((((GHC.Base.pure GetSapiV1MarginRateLimitOrderResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "intervalNum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "limit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rateLimitType"))

-- | Create a new 'GetSapiV1MarginRateLimitOrderResponseBody200' with all required fields.
mkGetSapiV1MarginRateLimitOrderResponseBody200 ::
  -- | 'getSapiV1MarginRateLimitOrderResponseBody200Count'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginRateLimitOrderResponseBody200Interval'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginRateLimitOrderResponseBody200IntervalNum'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginRateLimitOrderResponseBody200Limit'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginRateLimitOrderResponseBody200RateLimitType'
  Data.Text.Internal.Text ->
  GetSapiV1MarginRateLimitOrderResponseBody200
mkGetSapiV1MarginRateLimitOrderResponseBody200 getSapiV1MarginRateLimitOrderResponseBody200Count getSapiV1MarginRateLimitOrderResponseBody200Interval getSapiV1MarginRateLimitOrderResponseBody200IntervalNum getSapiV1MarginRateLimitOrderResponseBody200Limit getSapiV1MarginRateLimitOrderResponseBody200RateLimitType =
  GetSapiV1MarginRateLimitOrderResponseBody200
    { getSapiV1MarginRateLimitOrderResponseBody200Count = getSapiV1MarginRateLimitOrderResponseBody200Count,
      getSapiV1MarginRateLimitOrderResponseBody200Interval = getSapiV1MarginRateLimitOrderResponseBody200Interval,
      getSapiV1MarginRateLimitOrderResponseBody200IntervalNum = getSapiV1MarginRateLimitOrderResponseBody200IntervalNum,
      getSapiV1MarginRateLimitOrderResponseBody200Limit = getSapiV1MarginRateLimitOrderResponseBody200Limit,
      getSapiV1MarginRateLimitOrderResponseBody200RateLimitType = getSapiV1MarginRateLimitOrderResponseBody200RateLimitType
    }

-- | > GET /sapi/v1/margin/rateLimit/order
--
-- The same as 'getSapiV1MarginRateLimitOrder' but accepts an explicit configuration.
getSapiV1MarginRateLimitOrderWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginRateLimitOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginRateLimitOrderResponse)
getSapiV1MarginRateLimitOrderWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginRateLimitOrderResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginRateLimitOrderResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1MarginRateLimitOrderResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginRateLimitOrderResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginRateLimitOrderResponse401
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
          (Data.Text.pack "/sapi/v1/margin/rateLimit/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/rateLimit/order
--
-- The same as 'getSapiV1MarginRateLimitOrder' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginRateLimitOrderRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginRateLimitOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginRateLimitOrderRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/rateLimit/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/rateLimit/order
--
-- The same as 'getSapiV1MarginRateLimitOrder' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginRateLimitOrderWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginRateLimitOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginRateLimitOrderWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/rateLimit/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginRateLimitOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginRateLimitOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
