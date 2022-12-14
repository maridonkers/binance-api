{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApiV3OrderList
module Binance.Operations.GetApiV3OrderList where

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

-- | > GET /api/v3/orderList
--
-- Retrieves a specific OCO based on provided optional parameters
--
-- Weight(IP): 2
getApiV3OrderList ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetApiV3OrderListResponse)
getApiV3OrderList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3OrderListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OrderListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetApiV3OrderListResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OrderListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3OrderListResponse401
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
        (Data.Text.pack "/api/v3/orderList")
        [ Binance.Common.QueryParameter (Data.Text.pack "orderListId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrderListId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/api\/v3\/orderList.GET.parameters@ in the specification.
data GetApiV3OrderListParameters = GetApiV3OrderListParameters
  { -- | queryOrderListId: Represents the parameter named \'orderListId\'
    --
    -- Order list id
    getApiV3OrderListParametersQueryOrderListId :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryOrigClientOrderId: Represents the parameter named \'origClientOrderId\'
    --
    -- Order id from client
    getApiV3OrderListParametersQueryOrigClientOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getApiV3OrderListParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getApiV3OrderListParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getApiV3OrderListParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OrderListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderListId" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryOrderListId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrigClientOrderId" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryOrigClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getApiV3OrderListParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getApiV3OrderListParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderListId" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryOrderListId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrigClientOrderId" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryOrigClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getApiV3OrderListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getApiV3OrderListParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getApiV3OrderListParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OrderListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OrderListParameters" (\obj -> ((((GHC.Base.pure GetApiV3OrderListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrderListId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrigClientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetApiV3OrderListParameters' with all required fields.
mkGetApiV3OrderListParameters ::
  -- | 'getApiV3OrderListParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetApiV3OrderListParameters
mkGetApiV3OrderListParameters getApiV3OrderListParametersQuerySignature getApiV3OrderListParametersQueryTimestamp =
  GetApiV3OrderListParameters
    { getApiV3OrderListParametersQueryOrderListId = GHC.Maybe.Nothing,
      getApiV3OrderListParametersQueryOrigClientOrderId = GHC.Maybe.Nothing,
      getApiV3OrderListParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getApiV3OrderListParametersQuerySignature = getApiV3OrderListParametersQuerySignature,
      getApiV3OrderListParametersQueryTimestamp = getApiV3OrderListParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getApiV3OrderList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApiV3OrderListResponseError' is used.
data GetApiV3OrderListResponse
  = -- | Means either no matching case available or a parse error
    GetApiV3OrderListResponseError GHC.Base.String
  | -- | OCO details
    GetApiV3OrderListResponse200 GetApiV3OrderListResponseBody200
  | -- | Bad Request
    GetApiV3OrderListResponse400 Error
  | -- | Unauthorized Request
    GetApiV3OrderListResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/api\/v3\/orderList.GET.responses.200.content.application\/json.schema@ in the specification.
data GetApiV3OrderListResponseBody200 = GetApiV3OrderListResponseBody200
  { -- | contingencyType
    getApiV3OrderListResponseBody200ContingencyType :: Data.Text.Internal.Text,
    -- | listClientOrderId
    getApiV3OrderListResponseBody200ListClientOrderId :: Data.Text.Internal.Text,
    -- | listOrderStatus
    getApiV3OrderListResponseBody200ListOrderStatus :: Data.Text.Internal.Text,
    -- | listStatusType
    getApiV3OrderListResponseBody200ListStatusType :: Data.Text.Internal.Text,
    -- | orderListId
    getApiV3OrderListResponseBody200OrderListId :: GHC.Int.Int64,
    -- | orders
    getApiV3OrderListResponseBody200Orders :: ([GetApiV3OrderListResponseBody200Orders]),
    -- | symbol
    getApiV3OrderListResponseBody200Symbol :: Data.Text.Internal.Text,
    -- | transactionTime
    getApiV3OrderListResponseBody200TransactionTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OrderListResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["contingencyType" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ContingencyType obj] : ["listClientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListClientOrderId obj] : ["listOrderStatus" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListOrderStatus obj] : ["listStatusType" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListStatusType obj] : ["orderListId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrderListId obj] : ["orders" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200Orders obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200Symbol obj] : ["transactionTime" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200TransactionTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["contingencyType" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ContingencyType obj] : ["listClientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListClientOrderId obj] : ["listOrderStatus" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListOrderStatus obj] : ["listStatusType" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200ListStatusType obj] : ["orderListId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrderListId obj] : ["orders" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200Orders obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200Symbol obj] : ["transactionTime" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200TransactionTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OrderListResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OrderListResponseBody200" (\obj -> (((((((GHC.Base.pure GetApiV3OrderListResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "contingencyType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listClientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listOrderStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listStatusType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orderListId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orders")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transactionTime"))

-- | Create a new 'GetApiV3OrderListResponseBody200' with all required fields.
mkGetApiV3OrderListResponseBody200 ::
  -- | 'getApiV3OrderListResponseBody200ContingencyType'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200ListClientOrderId'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200ListOrderStatus'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200ListStatusType'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200OrderListId'
  GHC.Int.Int64 ->
  -- | 'getApiV3OrderListResponseBody200Orders'
  [GetApiV3OrderListResponseBody200Orders] ->
  -- | 'getApiV3OrderListResponseBody200Symbol'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200TransactionTime'
  GHC.Int.Int64 ->
  GetApiV3OrderListResponseBody200
mkGetApiV3OrderListResponseBody200 getApiV3OrderListResponseBody200ContingencyType getApiV3OrderListResponseBody200ListClientOrderId getApiV3OrderListResponseBody200ListOrderStatus getApiV3OrderListResponseBody200ListStatusType getApiV3OrderListResponseBody200OrderListId getApiV3OrderListResponseBody200Orders getApiV3OrderListResponseBody200Symbol getApiV3OrderListResponseBody200TransactionTime =
  GetApiV3OrderListResponseBody200
    { getApiV3OrderListResponseBody200ContingencyType = getApiV3OrderListResponseBody200ContingencyType,
      getApiV3OrderListResponseBody200ListClientOrderId = getApiV3OrderListResponseBody200ListClientOrderId,
      getApiV3OrderListResponseBody200ListOrderStatus = getApiV3OrderListResponseBody200ListOrderStatus,
      getApiV3OrderListResponseBody200ListStatusType = getApiV3OrderListResponseBody200ListStatusType,
      getApiV3OrderListResponseBody200OrderListId = getApiV3OrderListResponseBody200OrderListId,
      getApiV3OrderListResponseBody200Orders = getApiV3OrderListResponseBody200Orders,
      getApiV3OrderListResponseBody200Symbol = getApiV3OrderListResponseBody200Symbol,
      getApiV3OrderListResponseBody200TransactionTime = getApiV3OrderListResponseBody200TransactionTime
    }

-- | Defines the object schema located at @paths.\/api\/v3\/orderList.GET.responses.200.content.application\/json.schema.properties.orders.items@ in the specification.
data GetApiV3OrderListResponseBody200Orders = GetApiV3OrderListResponseBody200Orders
  { -- | clientOrderId
    getApiV3OrderListResponseBody200OrdersClientOrderId :: Data.Text.Internal.Text,
    -- | orderId
    getApiV3OrderListResponseBody200OrdersOrderId :: GHC.Int.Int64,
    -- | symbol
    getApiV3OrderListResponseBody200OrdersSymbol :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3OrderListResponseBody200Orders where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["clientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersClientOrderId obj] : ["orderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersOrderId obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersSymbol obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["clientOrderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersClientOrderId obj] : ["orderId" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersOrderId obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3OrderListResponseBody200OrdersSymbol obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3OrderListResponseBody200Orders where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3OrderListResponseBody200Orders" (\obj -> ((GHC.Base.pure GetApiV3OrderListResponseBody200Orders GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "clientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol"))

-- | Create a new 'GetApiV3OrderListResponseBody200Orders' with all required fields.
mkGetApiV3OrderListResponseBody200Orders ::
  -- | 'getApiV3OrderListResponseBody200OrdersClientOrderId'
  Data.Text.Internal.Text ->
  -- | 'getApiV3OrderListResponseBody200OrdersOrderId'
  GHC.Int.Int64 ->
  -- | 'getApiV3OrderListResponseBody200OrdersSymbol'
  Data.Text.Internal.Text ->
  GetApiV3OrderListResponseBody200Orders
mkGetApiV3OrderListResponseBody200Orders getApiV3OrderListResponseBody200OrdersClientOrderId getApiV3OrderListResponseBody200OrdersOrderId getApiV3OrderListResponseBody200OrdersSymbol =
  GetApiV3OrderListResponseBody200Orders
    { getApiV3OrderListResponseBody200OrdersClientOrderId = getApiV3OrderListResponseBody200OrdersClientOrderId,
      getApiV3OrderListResponseBody200OrdersOrderId = getApiV3OrderListResponseBody200OrdersOrderId,
      getApiV3OrderListResponseBody200OrdersSymbol = getApiV3OrderListResponseBody200OrdersSymbol
    }

-- | > GET /api/v3/orderList
--
-- The same as 'getApiV3OrderList' but accepts an explicit configuration.
getApiV3OrderListWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetApiV3OrderListResponse)
getApiV3OrderListWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetApiV3OrderListResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OrderListResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetApiV3OrderListResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OrderListResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3OrderListResponse401
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
          (Data.Text.pack "/api/v3/orderList")
          [ Binance.Common.QueryParameter (Data.Text.pack "orderListId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrderListId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /api/v3/orderList
--
-- The same as 'getApiV3OrderList' but returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3OrderListRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3OrderListRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/api/v3/orderList")
        [ Binance.Common.QueryParameter (Data.Text.pack "orderListId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrderListId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /api/v3/orderList
--
-- The same as 'getApiV3OrderList' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3OrderListWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3OrderListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3OrderListWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/api/v3/orderList")
          [ Binance.Common.QueryParameter (Data.Text.pack "orderListId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrderListId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3OrderListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3OrderListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
