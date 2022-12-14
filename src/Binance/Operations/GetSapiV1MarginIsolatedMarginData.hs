{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginIsolatedMarginData
module Binance.Operations.GetSapiV1MarginIsolatedMarginData where

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

-- | > GET /sapi/v1/margin/isolatedMarginData
--
-- Get isolated margin fee data collection with any vip level or user\'s current specific data as https:\/\/www.binance.com\/en\/margin-fee
--
-- Weight(IP): 1 when a single is specified; 10 when the symbol parameter is omitted
getSapiV1MarginIsolatedMarginData ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginIsolatedMarginDataParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginIsolatedMarginDataResponse)
getSapiV1MarginIsolatedMarginData parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginIsolatedMarginDataResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginIsolatedMarginDataResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1MarginIsolatedMarginDataResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginIsolatedMarginDataResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginIsolatedMarginDataResponse401
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
        (Data.Text.pack "/sapi/v1/margin/isolatedMarginData")
        [ Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/isolatedMarginData.GET.parameters@ in the specification.
data GetSapiV1MarginIsolatedMarginDataParameters = GetSapiV1MarginIsolatedMarginDataParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginIsolatedMarginDataParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    getSapiV1MarginIsolatedMarginDataParametersQuerySymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryVipLevel: Represents the parameter named \'vipLevel\'
    --
    -- Defaults to user\'s vip level
    getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel :: (GHC.Maybe.Maybe GHC.Int.Int32)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginIsolatedMarginDataParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginIsolatedMarginDataParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginIsolatedMarginDataParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginIsolatedMarginDataParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginIsolatedMarginDataParameters" (\obj -> ((((GHC.Base.pure GetSapiV1MarginIsolatedMarginDataParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryVipLevel"))

-- | Create a new 'GetSapiV1MarginIsolatedMarginDataParameters' with all required fields.
mkGetSapiV1MarginIsolatedMarginDataParameters ::
  -- | 'getSapiV1MarginIsolatedMarginDataParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginIsolatedMarginDataParameters
mkGetSapiV1MarginIsolatedMarginDataParameters getSapiV1MarginIsolatedMarginDataParametersQuerySignature getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp =
  GetSapiV1MarginIsolatedMarginDataParameters
    { getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataParametersQuerySignature = getSapiV1MarginIsolatedMarginDataParametersQuerySignature,
      getSapiV1MarginIsolatedMarginDataParametersQuerySymbol = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp = getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp,
      getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getSapiV1MarginIsolatedMarginData'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginIsolatedMarginDataResponseError' is used.
data GetSapiV1MarginIsolatedMarginDataResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginIsolatedMarginDataResponseError GHC.Base.String
  | -- | Isolated Margin Fee Data
    GetSapiV1MarginIsolatedMarginDataResponse200 ([GetSapiV1MarginIsolatedMarginDataResponseBody200])
  | -- | Bad Request
    GetSapiV1MarginIsolatedMarginDataResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginIsolatedMarginDataResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/isolatedMarginData.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1MarginIsolatedMarginDataResponseBody200 = GetSapiV1MarginIsolatedMarginDataResponseBody200
  { -- | data
    getSapiV1MarginIsolatedMarginDataResponseBody200Data :: (GHC.Maybe.Maybe ([GetSapiV1MarginIsolatedMarginDataResponseBody200Data])),
    -- | leverage
    getSapiV1MarginIsolatedMarginDataResponseBody200Leverage :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | symbol
    getSapiV1MarginIsolatedMarginDataResponseBody200Symbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | vipLevel
    getSapiV1MarginIsolatedMarginDataResponseBody200VipLevel :: (GHC.Maybe.Maybe GHC.Int.Int32)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginIsolatedMarginDataResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Data obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("leverage" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Leverage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("symbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Symbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200VipLevel obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Data obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("leverage" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Leverage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("symbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200Symbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200VipLevel obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginIsolatedMarginDataResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginIsolatedMarginDataResponseBody200" (\obj -> (((GHC.Base.pure GetSapiV1MarginIsolatedMarginDataResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "leverage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "vipLevel"))

-- | Create a new 'GetSapiV1MarginIsolatedMarginDataResponseBody200' with all required fields.
mkGetSapiV1MarginIsolatedMarginDataResponseBody200 :: GetSapiV1MarginIsolatedMarginDataResponseBody200
mkGetSapiV1MarginIsolatedMarginDataResponseBody200 =
  GetSapiV1MarginIsolatedMarginDataResponseBody200
    { getSapiV1MarginIsolatedMarginDataResponseBody200Data = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataResponseBody200Leverage = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataResponseBody200Symbol = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataResponseBody200VipLevel = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/isolatedMarginData.GET.responses.200.content.application\/json.schema.items.properties.data.items@ in the specification.
data GetSapiV1MarginIsolatedMarginDataResponseBody200Data = GetSapiV1MarginIsolatedMarginDataResponseBody200Data
  { -- | borrowLimit
    getSapiV1MarginIsolatedMarginDataResponseBody200DataBorrowLimit :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | coin
    getSapiV1MarginIsolatedMarginDataResponseBody200DataCoin :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | dailyInterest
    getSapiV1MarginIsolatedMarginDataResponseBody200DataDailyInterest :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginIsolatedMarginDataResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("borrowLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataBorrowLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coin" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dailyInterest" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataDailyInterest obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("borrowLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataBorrowLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coin" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dailyInterest" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginIsolatedMarginDataResponseBody200DataDailyInterest obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginIsolatedMarginDataResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginIsolatedMarginDataResponseBody200Data" (\obj -> ((GHC.Base.pure GetSapiV1MarginIsolatedMarginDataResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "borrowLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dailyInterest"))

-- | Create a new 'GetSapiV1MarginIsolatedMarginDataResponseBody200Data' with all required fields.
mkGetSapiV1MarginIsolatedMarginDataResponseBody200Data :: GetSapiV1MarginIsolatedMarginDataResponseBody200Data
mkGetSapiV1MarginIsolatedMarginDataResponseBody200Data =
  GetSapiV1MarginIsolatedMarginDataResponseBody200Data
    { getSapiV1MarginIsolatedMarginDataResponseBody200DataBorrowLimit = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataResponseBody200DataCoin = GHC.Maybe.Nothing,
      getSapiV1MarginIsolatedMarginDataResponseBody200DataDailyInterest = GHC.Maybe.Nothing
    }

-- | > GET /sapi/v1/margin/isolatedMarginData
--
-- The same as 'getSapiV1MarginIsolatedMarginData' but accepts an explicit configuration.
getSapiV1MarginIsolatedMarginDataWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginIsolatedMarginDataParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginIsolatedMarginDataResponse)
getSapiV1MarginIsolatedMarginDataWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginIsolatedMarginDataResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginIsolatedMarginDataResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1MarginIsolatedMarginDataResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginIsolatedMarginDataResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginIsolatedMarginDataResponse401
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
          (Data.Text.pack "/sapi/v1/margin/isolatedMarginData")
          [ Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/isolatedMarginData
--
-- The same as 'getSapiV1MarginIsolatedMarginData' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginIsolatedMarginDataRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginIsolatedMarginDataParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginIsolatedMarginDataRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/isolatedMarginData")
        [ Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/isolatedMarginData
--
-- The same as 'getSapiV1MarginIsolatedMarginData' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginIsolatedMarginDataWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginIsolatedMarginDataParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginIsolatedMarginDataWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/isolatedMarginData")
          [ Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginIsolatedMarginDataParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginIsolatedMarginDataParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
