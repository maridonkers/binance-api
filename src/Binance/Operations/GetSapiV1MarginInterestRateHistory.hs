{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginInterestRateHistory
module Binance.Operations.GetSapiV1MarginInterestRateHistory where

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

-- | > GET /sapi/v1/margin/interestRateHistory
--
-- The max interval between startTime and endTime is 30 days.
--
-- Weight(IP): 1
getSapiV1MarginInterestRateHistory ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestRateHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginInterestRateHistoryResponse)
getSapiV1MarginInterestRateHistory parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginInterestRateHistoryResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestRateHistoryResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1MarginInterestRateHistoryResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestRateHistoryResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestRateHistoryResponse401
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
        (Data.Text.pack "/sapi/v1/margin/interestRateHistory")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/interestRateHistory.GET.parameters@ in the specification.
data GetSapiV1MarginInterestRateHistoryParameters = GetSapiV1MarginInterestRateHistoryParameters
  { -- | queryAsset: Represents the parameter named \'asset\'
    getSapiV1MarginInterestRateHistoryParametersQueryAsset :: Data.Text.Internal.Text,
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestRateHistoryParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginInterestRateHistoryParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestRateHistoryParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestRateHistoryParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryVipLevel: Represents the parameter named \'vipLevel\'
    --
    -- Defaults to user\'s vip level
    getSapiV1MarginInterestRateHistoryParametersQueryVipLevel :: (GHC.Maybe.Maybe GHC.Int.Int32)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginInterestRateHistoryParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAsset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryVipLevel obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAsset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVipLevel" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestRateHistoryParametersQueryVipLevel obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginInterestRateHistoryParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginInterestRateHistoryParameters" (\obj -> ((((((GHC.Base.pure GetSapiV1MarginInterestRateHistoryParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryVipLevel"))

-- | Create a new 'GetSapiV1MarginInterestRateHistoryParameters' with all required fields.
mkGetSapiV1MarginInterestRateHistoryParameters ::
  -- | 'getSapiV1MarginInterestRateHistoryParametersQueryAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestRateHistoryParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestRateHistoryParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginInterestRateHistoryParameters
mkGetSapiV1MarginInterestRateHistoryParameters getSapiV1MarginInterestRateHistoryParametersQueryAsset getSapiV1MarginInterestRateHistoryParametersQuerySignature getSapiV1MarginInterestRateHistoryParametersQueryTimestamp =
  GetSapiV1MarginInterestRateHistoryParameters
    { getSapiV1MarginInterestRateHistoryParametersQueryAsset = getSapiV1MarginInterestRateHistoryParametersQueryAsset,
      getSapiV1MarginInterestRateHistoryParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginInterestRateHistoryParametersQuerySignature = getSapiV1MarginInterestRateHistoryParametersQuerySignature,
      getSapiV1MarginInterestRateHistoryParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1MarginInterestRateHistoryParametersQueryTimestamp = getSapiV1MarginInterestRateHistoryParametersQueryTimestamp,
      getSapiV1MarginInterestRateHistoryParametersQueryVipLevel = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getSapiV1MarginInterestRateHistory'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginInterestRateHistoryResponseError' is used.
data GetSapiV1MarginInterestRateHistoryResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginInterestRateHistoryResponseError GHC.Base.String
  | -- | Margin Interest Rate History
    GetSapiV1MarginInterestRateHistoryResponse200 ([GetSapiV1MarginInterestRateHistoryResponseBody200])
  | -- | Bad Request
    GetSapiV1MarginInterestRateHistoryResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginInterestRateHistoryResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/interestRateHistory.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1MarginInterestRateHistoryResponseBody200 = GetSapiV1MarginInterestRateHistoryResponseBody200
  { -- | asset
    getSapiV1MarginInterestRateHistoryResponseBody200Asset :: Data.Text.Internal.Text,
    -- | dailyInterestRate
    getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate :: Data.Text.Internal.Text,
    -- | timestamp
    getSapiV1MarginInterestRateHistoryResponseBody200Timestamp :: GHC.Int.Int64,
    -- | vipLevel
    getSapiV1MarginInterestRateHistoryResponseBody200VipLevel :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginInterestRateHistoryResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200Asset obj] : ["dailyInterestRate" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate obj] : ["timestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200Timestamp obj] : ["vipLevel" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200VipLevel obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200Asset obj] : ["dailyInterestRate" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate obj] : ["timestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200Timestamp obj] : ["vipLevel" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestRateHistoryResponseBody200VipLevel obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginInterestRateHistoryResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginInterestRateHistoryResponseBody200" (\obj -> (((GHC.Base.pure GetSapiV1MarginInterestRateHistoryResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dailyInterestRate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "vipLevel"))

-- | Create a new 'GetSapiV1MarginInterestRateHistoryResponseBody200' with all required fields.
mkGetSapiV1MarginInterestRateHistoryResponseBody200 ::
  -- | 'getSapiV1MarginInterestRateHistoryResponseBody200Asset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestRateHistoryResponseBody200Timestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginInterestRateHistoryResponseBody200VipLevel'
  GHC.Int.Int32 ->
  GetSapiV1MarginInterestRateHistoryResponseBody200
mkGetSapiV1MarginInterestRateHistoryResponseBody200 getSapiV1MarginInterestRateHistoryResponseBody200Asset getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate getSapiV1MarginInterestRateHistoryResponseBody200Timestamp getSapiV1MarginInterestRateHistoryResponseBody200VipLevel =
  GetSapiV1MarginInterestRateHistoryResponseBody200
    { getSapiV1MarginInterestRateHistoryResponseBody200Asset = getSapiV1MarginInterestRateHistoryResponseBody200Asset,
      getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate = getSapiV1MarginInterestRateHistoryResponseBody200DailyInterestRate,
      getSapiV1MarginInterestRateHistoryResponseBody200Timestamp = getSapiV1MarginInterestRateHistoryResponseBody200Timestamp,
      getSapiV1MarginInterestRateHistoryResponseBody200VipLevel = getSapiV1MarginInterestRateHistoryResponseBody200VipLevel
    }

-- | > GET /sapi/v1/margin/interestRateHistory
--
-- The same as 'getSapiV1MarginInterestRateHistory' but accepts an explicit configuration.
getSapiV1MarginInterestRateHistoryWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestRateHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginInterestRateHistoryResponse)
getSapiV1MarginInterestRateHistoryWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginInterestRateHistoryResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestRateHistoryResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1MarginInterestRateHistoryResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestRateHistoryResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestRateHistoryResponse401
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
          (Data.Text.pack "/sapi/v1/margin/interestRateHistory")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/interestRateHistory
--
-- The same as 'getSapiV1MarginInterestRateHistory' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginInterestRateHistoryRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestRateHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginInterestRateHistoryRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/interestRateHistory")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/interestRateHistory
--
-- The same as 'getSapiV1MarginInterestRateHistory' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginInterestRateHistoryWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestRateHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginInterestRateHistoryWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/interestRateHistory")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "vipLevel") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryVipLevel parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestRateHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestRateHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )