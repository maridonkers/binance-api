{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1AlgoFuturesOpenOrders
module Binance.Operations.GetSapiV1AlgoFuturesOpenOrders where

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

-- | > GET /sapi/v1/algo/futures/openOrders
--
-- - You need to enable Futures Trading Permission for the api key which requests this endpoint.
-- - Base URL: https:\/\/api.binance.com
--
-- Weight(IP): 1
getSapiV1AlgoFuturesOpenOrders ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AlgoFuturesOpenOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1AlgoFuturesOpenOrdersResponse)
getSapiV1AlgoFuturesOpenOrders parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1AlgoFuturesOpenOrdersResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AlgoFuturesOpenOrdersResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1AlgoFuturesOpenOrdersResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AlgoFuturesOpenOrdersResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AlgoFuturesOpenOrdersResponse401
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
        (Data.Text.pack "/sapi/v1/algo/futures/openOrders")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/algo\/futures\/openOrders.GET.parameters@ in the specification.
data GetSapiV1AlgoFuturesOpenOrdersParameters = GetSapiV1AlgoFuturesOpenOrdersParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AlgoFuturesOpenOrdersParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AlgoFuturesOpenOrdersParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AlgoFuturesOpenOrdersParameters" (\obj -> ((GHC.Base.pure GetSapiV1AlgoFuturesOpenOrdersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1AlgoFuturesOpenOrdersParameters' with all required fields.
mkGetSapiV1AlgoFuturesOpenOrdersParameters ::
  -- | 'getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1AlgoFuturesOpenOrdersParameters
mkGetSapiV1AlgoFuturesOpenOrdersParameters getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp =
  GetSapiV1AlgoFuturesOpenOrdersParameters
    { getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature = getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature,
      getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp = getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1AlgoFuturesOpenOrders'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1AlgoFuturesOpenOrdersResponseError' is used.
data GetSapiV1AlgoFuturesOpenOrdersResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1AlgoFuturesOpenOrdersResponseError GHC.Base.String
  | -- | Open Algo Orders
    GetSapiV1AlgoFuturesOpenOrdersResponse200 GetSapiV1AlgoFuturesOpenOrdersResponseBody200
  | -- | Bad Request
    GetSapiV1AlgoFuturesOpenOrdersResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1AlgoFuturesOpenOrdersResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/algo\/futures\/openOrders.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1AlgoFuturesOpenOrdersResponseBody200 = GetSapiV1AlgoFuturesOpenOrdersResponseBody200
  { -- | orders
    getSapiV1AlgoFuturesOpenOrdersResponseBody200Orders :: (GHC.Maybe.Maybe ([GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders])),
    -- | total
    getSapiV1AlgoFuturesOpenOrdersResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AlgoFuturesOpenOrdersResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("orders" Data.Aeson.Types.ToJSON..=)) (getSapiV1AlgoFuturesOpenOrdersResponseBody200Orders obj) : ["total" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("orders" Data.Aeson.Types.ToJSON..=)) (getSapiV1AlgoFuturesOpenOrdersResponseBody200Orders obj) : ["total" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AlgoFuturesOpenOrdersResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AlgoFuturesOpenOrdersResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1AlgoFuturesOpenOrdersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "orders")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1AlgoFuturesOpenOrdersResponseBody200' with all required fields.
mkGetSapiV1AlgoFuturesOpenOrdersResponseBody200 ::
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1AlgoFuturesOpenOrdersResponseBody200
mkGetSapiV1AlgoFuturesOpenOrdersResponseBody200 getSapiV1AlgoFuturesOpenOrdersResponseBody200Total =
  GetSapiV1AlgoFuturesOpenOrdersResponseBody200
    { getSapiV1AlgoFuturesOpenOrdersResponseBody200Orders = GHC.Maybe.Nothing,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200Total = getSapiV1AlgoFuturesOpenOrdersResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/algo\/futures\/openOrders.GET.responses.200.content.application\/json.schema.properties.orders.items@ in the specification.
data GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders = GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders
  { -- | algoId
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId :: GHC.Int.Int64,
    -- | algoStatus
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus :: Data.Text.Internal.Text,
    -- | algoType
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType :: Data.Text.Internal.Text,
    -- | avgPrice
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice :: Data.Text.Internal.Text,
    -- | bookTime
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime :: GHC.Int.Int64,
    -- | clientAlgoId
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId :: Data.Text.Internal.Text,
    -- | endTime
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime :: GHC.Int.Int64,
    -- | executedAmt
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt :: Data.Text.Internal.Text,
    -- | executedQty
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty :: Data.Text.Internal.Text,
    -- | positionSide
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide :: Data.Text.Internal.Text,
    -- | side
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide :: Data.Text.Internal.Text,
    -- | symbol
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol :: Data.Text.Internal.Text,
    -- | totalQty
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty :: Data.Text.Internal.Text,
    -- | urgency
    getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["algoId" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId obj] : ["algoStatus" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus obj] : ["algoType" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType obj] : ["avgPrice" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice obj] : ["bookTime" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime obj] : ["clientAlgoId" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId obj] : ["endTime" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime obj] : ["executedAmt" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt obj] : ["executedQty" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty obj] : ["positionSide" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide obj] : ["side" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol obj] : ["totalQty" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty obj] : ["urgency" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["algoId" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId obj] : ["algoStatus" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus obj] : ["algoType" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType obj] : ["avgPrice" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice obj] : ["bookTime" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime obj] : ["clientAlgoId" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId obj] : ["endTime" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime obj] : ["executedAmt" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt obj] : ["executedQty" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty obj] : ["positionSide" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide obj] : ["side" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol obj] : ["totalQty" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty obj] : ["urgency" Data.Aeson.Types.ToJSON..= getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders" (\obj -> (((((((((((((GHC.Base.pure GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "algoId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "algoStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "algoType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "avgPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bookTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "clientAlgoId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "endTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "executedAmt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "executedQty")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionSide")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "side")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalQty")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "urgency"))

-- | Create a new 'GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders' with all required fields.
mkGetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders ::
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency'
  Data.Text.Internal.Text ->
  GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders
mkGetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency =
  GetSapiV1AlgoFuturesOpenOrdersResponseBody200Orders
    { getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoId,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoStatus,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAlgoType,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersAvgPrice,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersBookTime,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersClientAlgoId,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersEndTime,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedAmt,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersExecutedQty,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersPositionSide,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSide,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersSymbol,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersTotalQty,
      getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency = getSapiV1AlgoFuturesOpenOrdersResponseBody200OrdersUrgency
    }

-- | > GET /sapi/v1/algo/futures/openOrders
--
-- The same as 'getSapiV1AlgoFuturesOpenOrders' but accepts an explicit configuration.
getSapiV1AlgoFuturesOpenOrdersWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AlgoFuturesOpenOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1AlgoFuturesOpenOrdersResponse)
getSapiV1AlgoFuturesOpenOrdersWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1AlgoFuturesOpenOrdersResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AlgoFuturesOpenOrdersResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1AlgoFuturesOpenOrdersResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AlgoFuturesOpenOrdersResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AlgoFuturesOpenOrdersResponse401
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
          (Data.Text.pack "/sapi/v1/algo/futures/openOrders")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/algo/futures/openOrders
--
-- The same as 'getSapiV1AlgoFuturesOpenOrders' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AlgoFuturesOpenOrdersRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AlgoFuturesOpenOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AlgoFuturesOpenOrdersRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/algo/futures/openOrders")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/algo/futures/openOrders
--
-- The same as 'getSapiV1AlgoFuturesOpenOrders' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AlgoFuturesOpenOrdersWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AlgoFuturesOpenOrdersParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AlgoFuturesOpenOrdersWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/algo/futures/openOrders")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AlgoFuturesOpenOrdersParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AlgoFuturesOpenOrdersParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
