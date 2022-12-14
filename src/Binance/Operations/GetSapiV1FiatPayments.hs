{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1FiatPayments
module Binance.Operations.GetSapiV1FiatPayments where

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

-- | > GET /sapi/v1/fiat/payments
--
-- - If beginTime and endTime are not sent, the recent 30-day data will be returned.
--
-- Weight(IP): 1
getSapiV1FiatPayments ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FiatPaymentsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1FiatPaymentsResponse)
getSapiV1FiatPayments parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1FiatPaymentsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FiatPaymentsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1FiatPaymentsResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FiatPaymentsResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FiatPaymentsResponse401
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
        (Data.Text.pack "/sapi/v1/fiat/payments")
        [ Binance.Common.QueryParameter (Data.Text.pack "transactionType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTransactionType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "beginTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryBeginTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "rows") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRows parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/fiat\/payments.GET.parameters@ in the specification.
data GetSapiV1FiatPaymentsParameters = GetSapiV1FiatPaymentsParameters
  { -- | queryBeginTime: Represents the parameter named \'beginTime\'
    getSapiV1FiatPaymentsParametersQueryBeginTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1FiatPaymentsParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- Default 1
    getSapiV1FiatPaymentsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1FiatPaymentsParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryRows: Represents the parameter named \'rows\'
    --
    -- Default 100, max 500
    getSapiV1FiatPaymentsParametersQueryRows :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1FiatPaymentsParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1FiatPaymentsParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryTransactionType: Represents the parameter named \'transactionType\'
    --
    -- * \`0\` - deposit
    -- * \`1\` - withdraw
    getSapiV1FiatPaymentsParametersQueryTransactionType :: GetSapiV1FiatPaymentsParametersQueryTransactionType
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FiatPaymentsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBeginTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryBeginTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryRecvWindow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRows" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryRows obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQueryTimestamp obj] : ["queryTransactionType" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQueryTransactionType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBeginTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryBeginTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryRecvWindow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRows" Data.Aeson.Types.ToJSON..=)) (getSapiV1FiatPaymentsParametersQueryRows obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQueryTimestamp obj] : ["queryTransactionType" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsParametersQueryTransactionType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FiatPaymentsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FiatPaymentsParameters" (\obj -> (((((((GHC.Base.pure GetSapiV1FiatPaymentsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBeginTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTransactionType"))

-- | Create a new 'GetSapiV1FiatPaymentsParameters' with all required fields.
mkGetSapiV1FiatPaymentsParameters ::
  -- | 'getSapiV1FiatPaymentsParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1FiatPaymentsParametersQueryTransactionType'
  GetSapiV1FiatPaymentsParametersQueryTransactionType ->
  GetSapiV1FiatPaymentsParameters
mkGetSapiV1FiatPaymentsParameters getSapiV1FiatPaymentsParametersQuerySignature getSapiV1FiatPaymentsParametersQueryTimestamp getSapiV1FiatPaymentsParametersQueryTransactionType =
  GetSapiV1FiatPaymentsParameters
    { getSapiV1FiatPaymentsParametersQueryBeginTime = GHC.Maybe.Nothing,
      getSapiV1FiatPaymentsParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1FiatPaymentsParametersQueryPage = GHC.Maybe.Nothing,
      getSapiV1FiatPaymentsParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1FiatPaymentsParametersQueryRows = GHC.Maybe.Nothing,
      getSapiV1FiatPaymentsParametersQuerySignature = getSapiV1FiatPaymentsParametersQuerySignature,
      getSapiV1FiatPaymentsParametersQueryTimestamp = getSapiV1FiatPaymentsParametersQueryTimestamp,
      getSapiV1FiatPaymentsParametersQueryTransactionType = getSapiV1FiatPaymentsParametersQueryTransactionType
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/fiat\/payments.GET.parameters.properties.queryTransactionType@ in the specification.
--
-- Represents the parameter named \'transactionType\'
--
-- * \`0\` - deposit
-- * \`1\` - withdraw
data GetSapiV1FiatPaymentsParametersQueryTransactionType
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV1FiatPaymentsParametersQueryTransactionTypeOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV1FiatPaymentsParametersQueryTransactionTypeTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"0"@
    GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum0
  | -- | Represents the JSON value @"1"@
    GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FiatPaymentsParametersQueryTransactionType where
  toJSON (GetSapiV1FiatPaymentsParametersQueryTransactionTypeOther val) = val
  toJSON (GetSapiV1FiatPaymentsParametersQueryTransactionTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum0) = "0"
  toJSON (GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum1) = "1"

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FiatPaymentsParametersQueryTransactionType where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "0" -> GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum0
            | val GHC.Classes.== "1" -> GetSapiV1FiatPaymentsParametersQueryTransactionTypeEnum1
            | GHC.Base.otherwise -> GetSapiV1FiatPaymentsParametersQueryTransactionTypeOther val
      )

-- | Represents a response of the operation 'getSapiV1FiatPayments'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1FiatPaymentsResponseError' is used.
data GetSapiV1FiatPaymentsResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1FiatPaymentsResponseError GHC.Base.String
  | -- | History of fiat payments
    GetSapiV1FiatPaymentsResponse200 GetSapiV1FiatPaymentsResponseBody200
  | -- | Bad Request
    GetSapiV1FiatPaymentsResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1FiatPaymentsResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/fiat\/payments.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1FiatPaymentsResponseBody200 = GetSapiV1FiatPaymentsResponseBody200
  { -- | code
    getSapiV1FiatPaymentsResponseBody200Code :: Data.Text.Internal.Text,
    -- | data
    getSapiV1FiatPaymentsResponseBody200Data :: ([GetSapiV1FiatPaymentsResponseBody200Data]),
    -- | message
    getSapiV1FiatPaymentsResponseBody200Message :: Data.Text.Internal.Text,
    -- | success
    getSapiV1FiatPaymentsResponseBody200Success :: GHC.Types.Bool,
    -- | total
    getSapiV1FiatPaymentsResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FiatPaymentsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Success obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Success obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FiatPaymentsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FiatPaymentsResponseBody200" (\obj -> ((((GHC.Base.pure GetSapiV1FiatPaymentsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1FiatPaymentsResponseBody200' with all required fields.
mkGetSapiV1FiatPaymentsResponseBody200 ::
  -- | 'getSapiV1FiatPaymentsResponseBody200Code'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200Data'
  [GetSapiV1FiatPaymentsResponseBody200Data] ->
  -- | 'getSapiV1FiatPaymentsResponseBody200Message'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200Success'
  GHC.Types.Bool ->
  -- | 'getSapiV1FiatPaymentsResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1FiatPaymentsResponseBody200
mkGetSapiV1FiatPaymentsResponseBody200 getSapiV1FiatPaymentsResponseBody200Code getSapiV1FiatPaymentsResponseBody200Data getSapiV1FiatPaymentsResponseBody200Message getSapiV1FiatPaymentsResponseBody200Success getSapiV1FiatPaymentsResponseBody200Total =
  GetSapiV1FiatPaymentsResponseBody200
    { getSapiV1FiatPaymentsResponseBody200Code = getSapiV1FiatPaymentsResponseBody200Code,
      getSapiV1FiatPaymentsResponseBody200Data = getSapiV1FiatPaymentsResponseBody200Data,
      getSapiV1FiatPaymentsResponseBody200Message = getSapiV1FiatPaymentsResponseBody200Message,
      getSapiV1FiatPaymentsResponseBody200Success = getSapiV1FiatPaymentsResponseBody200Success,
      getSapiV1FiatPaymentsResponseBody200Total = getSapiV1FiatPaymentsResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/fiat\/payments.GET.responses.200.content.application\/json.schema.properties.data.items@ in the specification.
data GetSapiV1FiatPaymentsResponseBody200Data = GetSapiV1FiatPaymentsResponseBody200Data
  { -- | createTime
    getSapiV1FiatPaymentsResponseBody200DataCreateTime :: GHC.Int.Int64,
    -- | cryptoCurrency: Crypto token
    getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency :: Data.Text.Internal.Text,
    -- | fiatCurrency: Fiat token
    getSapiV1FiatPaymentsResponseBody200DataFiatCurrency :: Data.Text.Internal.Text,
    -- | obtainAmount: Crypto trade amount
    getSapiV1FiatPaymentsResponseBody200DataObtainAmount :: Data.Text.Internal.Text,
    -- | orderNo
    getSapiV1FiatPaymentsResponseBody200DataOrderNo :: Data.Text.Internal.Text,
    -- | price
    getSapiV1FiatPaymentsResponseBody200DataPrice :: Data.Text.Internal.Text,
    -- | sourceAmount: Fiat trade amount
    getSapiV1FiatPaymentsResponseBody200DataSourceAmount :: Data.Text.Internal.Text,
    -- | status: Processing, Completed, Failed, Refunded
    getSapiV1FiatPaymentsResponseBody200DataStatus :: Data.Text.Internal.Text,
    -- | totalFee: Trade fee
    getSapiV1FiatPaymentsResponseBody200DataTotalFee :: Data.Text.Internal.Text,
    -- | updateTime
    getSapiV1FiatPaymentsResponseBody200DataUpdateTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FiatPaymentsResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["createTime" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataCreateTime obj] : ["cryptoCurrency" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency obj] : ["fiatCurrency" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataFiatCurrency obj] : ["obtainAmount" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataObtainAmount obj] : ["orderNo" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataOrderNo obj] : ["price" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataPrice obj] : ["sourceAmount" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataSourceAmount obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataStatus obj] : ["totalFee" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataTotalFee obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataUpdateTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["createTime" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataCreateTime obj] : ["cryptoCurrency" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency obj] : ["fiatCurrency" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataFiatCurrency obj] : ["obtainAmount" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataObtainAmount obj] : ["orderNo" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataOrderNo obj] : ["price" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataPrice obj] : ["sourceAmount" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataSourceAmount obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataStatus obj] : ["totalFee" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataTotalFee obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1FiatPaymentsResponseBody200DataUpdateTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FiatPaymentsResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FiatPaymentsResponseBody200Data" (\obj -> (((((((((GHC.Base.pure GetSapiV1FiatPaymentsResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "createTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cryptoCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fiatCurrency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "obtainAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "orderNo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sourceAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalFee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updateTime"))

-- | Create a new 'GetSapiV1FiatPaymentsResponseBody200Data' with all required fields.
mkGetSapiV1FiatPaymentsResponseBody200Data ::
  -- | 'getSapiV1FiatPaymentsResponseBody200DataCreateTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataFiatCurrency'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataObtainAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataOrderNo'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataPrice'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataSourceAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataStatus'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataTotalFee'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FiatPaymentsResponseBody200DataUpdateTime'
  GHC.Int.Int64 ->
  GetSapiV1FiatPaymentsResponseBody200Data
mkGetSapiV1FiatPaymentsResponseBody200Data getSapiV1FiatPaymentsResponseBody200DataCreateTime getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency getSapiV1FiatPaymentsResponseBody200DataFiatCurrency getSapiV1FiatPaymentsResponseBody200DataObtainAmount getSapiV1FiatPaymentsResponseBody200DataOrderNo getSapiV1FiatPaymentsResponseBody200DataPrice getSapiV1FiatPaymentsResponseBody200DataSourceAmount getSapiV1FiatPaymentsResponseBody200DataStatus getSapiV1FiatPaymentsResponseBody200DataTotalFee getSapiV1FiatPaymentsResponseBody200DataUpdateTime =
  GetSapiV1FiatPaymentsResponseBody200Data
    { getSapiV1FiatPaymentsResponseBody200DataCreateTime = getSapiV1FiatPaymentsResponseBody200DataCreateTime,
      getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency = getSapiV1FiatPaymentsResponseBody200DataCryptoCurrency,
      getSapiV1FiatPaymentsResponseBody200DataFiatCurrency = getSapiV1FiatPaymentsResponseBody200DataFiatCurrency,
      getSapiV1FiatPaymentsResponseBody200DataObtainAmount = getSapiV1FiatPaymentsResponseBody200DataObtainAmount,
      getSapiV1FiatPaymentsResponseBody200DataOrderNo = getSapiV1FiatPaymentsResponseBody200DataOrderNo,
      getSapiV1FiatPaymentsResponseBody200DataPrice = getSapiV1FiatPaymentsResponseBody200DataPrice,
      getSapiV1FiatPaymentsResponseBody200DataSourceAmount = getSapiV1FiatPaymentsResponseBody200DataSourceAmount,
      getSapiV1FiatPaymentsResponseBody200DataStatus = getSapiV1FiatPaymentsResponseBody200DataStatus,
      getSapiV1FiatPaymentsResponseBody200DataTotalFee = getSapiV1FiatPaymentsResponseBody200DataTotalFee,
      getSapiV1FiatPaymentsResponseBody200DataUpdateTime = getSapiV1FiatPaymentsResponseBody200DataUpdateTime
    }

-- | > GET /sapi/v1/fiat/payments
--
-- The same as 'getSapiV1FiatPayments' but accepts an explicit configuration.
getSapiV1FiatPaymentsWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FiatPaymentsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1FiatPaymentsResponse)
getSapiV1FiatPaymentsWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1FiatPaymentsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FiatPaymentsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1FiatPaymentsResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FiatPaymentsResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FiatPaymentsResponse401
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
          (Data.Text.pack "/sapi/v1/fiat/payments")
          [ Binance.Common.QueryParameter (Data.Text.pack "transactionType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTransactionType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "beginTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryBeginTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "rows") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRows parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/fiat/payments
--
-- The same as 'getSapiV1FiatPayments' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1FiatPaymentsRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FiatPaymentsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1FiatPaymentsRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/fiat/payments")
        [ Binance.Common.QueryParameter (Data.Text.pack "transactionType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTransactionType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "beginTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryBeginTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "rows") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRows parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/fiat/payments
--
-- The same as 'getSapiV1FiatPayments' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1FiatPaymentsWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FiatPaymentsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1FiatPaymentsWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/fiat/payments")
          [ Binance.Common.QueryParameter (Data.Text.pack "transactionType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTransactionType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "beginTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryBeginTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "rows") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRows parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FiatPaymentsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FiatPaymentsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
