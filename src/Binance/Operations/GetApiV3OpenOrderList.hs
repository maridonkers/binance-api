{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApiV3OpenOrderList
module Binance.Operations.GetApiV3OpenOrderList where

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

-- | > GET /api/v3/openOrderList
--
-- Weight(IP): 3
getApiV3OpenOrderList ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OpenOrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetApiV3OpenOrderListResponse)
getApiV3OpenOrderList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3OpenOrderListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OpenOrderListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetApiV3OpenOrderListResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OpenOrderListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OpenOrderListResponse401
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
        (Data.Text.pack "/api/v3/openOrderList")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OpenOrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/api\/v3\/openOrderList.GET.parameters@ in the specification.
data GetApiV3OpenOrderListParameters = GetApiV3OpenOrderListParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getApiV3OpenOrderListParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getApiV3OpenOrderListParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getApiV3OpenOrderListParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OpenOrderListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getApiV3OpenOrderListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getApiV3OpenOrderListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OpenOrderListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OpenOrderListParameters" (\obj -> ((GHC.Base.pure GetApiV3OpenOrderListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetApiV3OpenOrderListParameters' with all required fields.
mkGetApiV3OpenOrderListParameters ::
  -- | 'getApiV3OpenOrderListParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetApiV3OpenOrderListParameters
mkGetApiV3OpenOrderListParameters getApiV3OpenOrderListParametersQuerySignature getApiV3OpenOrderListParametersQueryTimestamp =
  GetApiV3OpenOrderListParameters
    { getApiV3OpenOrderListParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getApiV3OpenOrderListParametersQuerySignature = getApiV3OpenOrderListParametersQuerySignature,
      getApiV3OpenOrderListParametersQueryTimestamp = getApiV3OpenOrderListParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getApiV3OpenOrderList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApiV3OpenOrderListResponseError' is used.
data GetApiV3OpenOrderListResponse
  = -- | Means either no matching case available or a parse error
    GetApiV3OpenOrderListResponseError GHC.Base.String
  | -- | List of OCO orders
    GetApiV3OpenOrderListResponse200 ([GetApiV3OpenOrderListResponseBody200])
  | -- | Bad Request
    GetApiV3OpenOrderListResponse400 Error
  | -- | Unauthorized Request
    GetApiV3OpenOrderListResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/api\/v3\/openOrderList.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetApiV3OpenOrderListResponseBody200 = GetApiV3OpenOrderListResponseBody200
  { -- | contingencyType
    getApiV3OpenOrderListResponseBody200ContingencyType :: Data.Text.Internal.Text,
    -- | listClientOrderId
    getApiV3OpenOrderListResponseBody200ListClientOrderId :: Data.Text.Internal.Text,
    -- | listOrderStatus
    getApiV3OpenOrderListResponseBody200ListOrderStatus :: Data.Text.Internal.Text,
    -- | listStatusType
    getApiV3OpenOrderListResponseBody200ListStatusType :: Data.Text.Internal.Text,
    -- | orderListId
    getApiV3OpenOrderListResponseBody200OrderListId :: GHC.Int.Int64,
    -- | orders
    getApiV3OpenOrderListResponseBody200Orders :: ([GetApiV3OpenOrderListResponseBody200Orders]),
    -- | symbol
    getApiV3OpenOrderListResponseBody200Symbol :: Data.Text.Internal.Text,
    -- | transactionTime
    getApiV3OpenOrderListResponseBody200TransactionTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OpenOrderListResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["contingencyType" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ContingencyType obj] : ["listClientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListClientOrderId obj] : ["listOrderStatus" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListOrderStatus obj] : ["listStatusType" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListStatusType obj] : ["orderListId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrderListId obj] : ["orders" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200Orders obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200Symbol obj] : ["transactionTime" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200TransactionTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["contingencyType" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ContingencyType obj] : ["listClientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListClientOrderId obj] : ["listOrderStatus" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListOrderStatus obj] : ["listStatusType" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200ListStatusType obj] : ["orderListId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrderListId obj] : ["orders" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200Orders obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200Symbol obj] : ["transactionTime" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200TransactionTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OpenOrderListResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OpenOrderListResponseBody200" (\obj -> (((((((GHC.Base.pure GetApiV3OpenOrderListResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "contingencyType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listClientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listOrderStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listStatusType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orderListId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orders")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transactionTime"))

-- | Create a new 'GetApiV3OpenOrderListResponseBody200' with all required fields.
mkGetApiV3OpenOrderListResponseBody200 ::
  -- | 'getApiV3OpenOrderListResponseBody200ContingencyType'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200ListClientOrderId'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200ListOrderStatus'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200ListStatusType'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200OrderListId'
  GHC.Int.Int64 ->
  -- | 'getApiV3OpenOrderListResponseBody200Orders'
  [GetApiV3OpenOrderListResponseBody200Orders] ->
  -- | 'getApiV3OpenOrderListResponseBody200Symbol'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200TransactionTime'
  GHC.Int.Int64 ->
  GetApiV3OpenOrderListResponseBody200
mkGetApiV3OpenOrderListResponseBody200 getApiV3OpenOrderListResponseBody200ContingencyType getApiV3OpenOrderListResponseBody200ListClientOrderId getApiV3OpenOrderListResponseBody200ListOrderStatus getApiV3OpenOrderListResponseBody200ListStatusType getApiV3OpenOrderListResponseBody200OrderListId getApiV3OpenOrderListResponseBody200Orders getApiV3OpenOrderListResponseBody200Symbol getApiV3OpenOrderListResponseBody200TransactionTime =
  GetApiV3OpenOrderListResponseBody200
    { getApiV3OpenOrderListResponseBody200ContingencyType = getApiV3OpenOrderListResponseBody200ContingencyType,
      getApiV3OpenOrderListResponseBody200ListClientOrderId = getApiV3OpenOrderListResponseBody200ListClientOrderId,
      getApiV3OpenOrderListResponseBody200ListOrderStatus = getApiV3OpenOrderListResponseBody200ListOrderStatus,
      getApiV3OpenOrderListResponseBody200ListStatusType = getApiV3OpenOrderListResponseBody200ListStatusType,
      getApiV3OpenOrderListResponseBody200OrderListId = getApiV3OpenOrderListResponseBody200OrderListId,
      getApiV3OpenOrderListResponseBody200Orders = getApiV3OpenOrderListResponseBody200Orders,
      getApiV3OpenOrderListResponseBody200Symbol = getApiV3OpenOrderListResponseBody200Symbol,
      getApiV3OpenOrderListResponseBody200TransactionTime = getApiV3OpenOrderListResponseBody200TransactionTime
    }

-- | Defines the object schema located at @paths.\/api\/v3\/openOrderList.GET.responses.200.content.application\/json.schema.items.properties.orders.items@ in the specification.
data GetApiV3OpenOrderListResponseBody200Orders = GetApiV3OpenOrderListResponseBody200Orders
  { -- | clientOrderId
    getApiV3OpenOrderListResponseBody200OrdersClientOrderId :: Data.Text.Internal.Text,
    -- | orderId
    getApiV3OpenOrderListResponseBody200OrdersOrderId :: GHC.Int.Int64,
    -- | symbol
    getApiV3OpenOrderListResponseBody200OrdersSymbol :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OpenOrderListResponseBody200Orders where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["clientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersClientOrderId obj] : ["orderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersOrderId obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersSymbol obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["clientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersClientOrderId obj] : ["orderId" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersOrderId obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OpenOrderListResponseBody200OrdersSymbol obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OpenOrderListResponseBody200Orders where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OpenOrderListResponseBody200Orders" (\obj -> ((GHC.Base.pure GetApiV3OpenOrderListResponseBody200Orders GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "clientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol"))

-- | Create a new 'GetApiV3OpenOrderListResponseBody200Orders' with all required fields.
mkGetApiV3OpenOrderListResponseBody200Orders ::
  -- | 'getApiV3OpenOrderListResponseBody200OrdersClientOrderId'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OpenOrderListResponseBody200OrdersOrderId'
  GHC.Int.Int64 ->
  -- | 'getApiV3OpenOrderListResponseBody200OrdersSymbol'
  Data.Text.Internal.Text ->
  GetApiV3OpenOrderListResponseBody200Orders
mkGetApiV3OpenOrderListResponseBody200Orders getApiV3OpenOrderListResponseBody200OrdersClientOrderId getApiV3OpenOrderListResponseBody200OrdersOrderId getApiV3OpenOrderListResponseBody200OrdersSymbol =
  GetApiV3OpenOrderListResponseBody200Orders
    { getApiV3OpenOrderListResponseBody200OrdersClientOrderId = getApiV3OpenOrderListResponseBody200OrdersClientOrderId,
      getApiV3OpenOrderListResponseBody200OrdersOrderId = getApiV3OpenOrderListResponseBody200OrdersOrderId,
      getApiV3OpenOrderListResponseBody200OrdersSymbol = getApiV3OpenOrderListResponseBody200OrdersSymbol
    }

-- | > GET /api/v3/openOrderList
--
-- The same as 'getApiV3OpenOrderList' but accepts an explicit configuration.
getApiV3OpenOrderListWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OpenOrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetApiV3OpenOrderListResponse)
getApiV3OpenOrderListWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetApiV3OpenOrderListResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OpenOrderListResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetApiV3OpenOrderListResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OpenOrderListResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OpenOrderListResponse401
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
          (Data.Text.pack "/api/v3/openOrderList")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OpenOrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /api/v3/openOrderList
--
-- The same as 'getApiV3OpenOrderList' but returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3OpenOrderListRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OpenOrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3OpenOrderListRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/api/v3/openOrderList")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OpenOrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /api/v3/openOrderList
--
-- The same as 'getApiV3OpenOrderList' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3OpenOrderListWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OpenOrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3OpenOrderListWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/api/v3/openOrderList")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OpenOrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OpenOrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )