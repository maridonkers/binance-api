{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1SubAccountFuturesPositionRisk
module Binance.Operations.GetSapiV1SubAccountFuturesPositionRisk where

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

-- | > GET /sapi/v1/sub-account/futures/positionRisk
--
-- Weight(IP): 10
getSapiV1SubAccountFuturesPositionRisk ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1SubAccountFuturesPositionRiskResponse)
getSapiV1SubAccountFuturesPositionRisk parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1SubAccountFuturesPositionRiskResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountFuturesPositionRiskResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1SubAccountFuturesPositionRiskResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountFuturesPositionRiskResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountFuturesPositionRiskResponse401
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
        (Data.Text.pack "/sapi/v1/sub-account/futures/positionRisk")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/futures\/positionRisk.GET.parameters@ in the specification.
data GetSapiV1SubAccountFuturesPositionRiskParameters = GetSapiV1SubAccountFuturesPositionRiskParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1SubAccountFuturesPositionRiskParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1SubAccountFuturesPositionRiskParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1SubAccountFuturesPositionRiskParameters" (\obj -> (((GHC.Base.pure GetSapiV1SubAccountFuturesPositionRiskParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1SubAccountFuturesPositionRiskParameters' with all required fields.
mkGetSapiV1SubAccountFuturesPositionRiskParameters ::
  -- | 'getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1SubAccountFuturesPositionRiskParameters
mkGetSapiV1SubAccountFuturesPositionRiskParameters getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp =
  GetSapiV1SubAccountFuturesPositionRiskParameters
    { getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail = getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail,
      getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature = getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature,
      getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp = getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1SubAccountFuturesPositionRisk'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1SubAccountFuturesPositionRiskResponseError' is used.
data GetSapiV1SubAccountFuturesPositionRiskResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1SubAccountFuturesPositionRiskResponseError GHC.Base.String
  | -- | Futures account summary
    GetSapiV1SubAccountFuturesPositionRiskResponse200 ([GetSapiV1SubAccountFuturesPositionRiskResponseBody200])
  | -- | Bad Request
    GetSapiV1SubAccountFuturesPositionRiskResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1SubAccountFuturesPositionRiskResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/futures\/positionRisk.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1SubAccountFuturesPositionRiskResponseBody200 = GetSapiV1SubAccountFuturesPositionRiskResponseBody200
  { -- | entryPrice
    getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice :: Data.Text.Internal.Text,
    -- | leverage: current initial leverage
    getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage :: Data.Text.Internal.Text,
    -- | liquidationPrice
    getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice :: Data.Text.Internal.Text,
    -- | markPrice
    getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice :: Data.Text.Internal.Text,
    -- | maxNotional: notional value limit of current initial leverage
    getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional :: Data.Text.Internal.Text,
    -- | positionAmount
    getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount :: Data.Text.Internal.Text,
    -- | symbol
    getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol :: Data.Text.Internal.Text,
    -- | unrealizedProfit
    getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1SubAccountFuturesPositionRiskResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice obj] : ["leverage" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage obj] : ["liquidationPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice obj] : ["markPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice obj] : ["maxNotional" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["entryPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice obj] : ["leverage" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage obj] : ["liquidationPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice obj] : ["markPrice" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice obj] : ["maxNotional" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional obj] : ["positionAmount" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol obj] : ["unrealizedProfit" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1SubAccountFuturesPositionRiskResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1SubAccountFuturesPositionRiskResponseBody200" (\obj -> (((((((GHC.Base.pure GetSapiV1SubAccountFuturesPositionRiskResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entryPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "leverage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "liquidationPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "markPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "maxNotional")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unrealizedProfit"))

-- | Create a new 'GetSapiV1SubAccountFuturesPositionRiskResponseBody200' with all required fields.
mkGetSapiV1SubAccountFuturesPositionRiskResponseBody200 ::
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit'
  Data.Text.Internal.Text ->
  GetSapiV1SubAccountFuturesPositionRiskResponseBody200
mkGetSapiV1SubAccountFuturesPositionRiskResponseBody200 getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit =
  GetSapiV1SubAccountFuturesPositionRiskResponseBody200
    { getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice = getSapiV1SubAccountFuturesPositionRiskResponseBody200EntryPrice,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage = getSapiV1SubAccountFuturesPositionRiskResponseBody200Leverage,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice = getSapiV1SubAccountFuturesPositionRiskResponseBody200LiquidationPrice,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice = getSapiV1SubAccountFuturesPositionRiskResponseBody200MarkPrice,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional = getSapiV1SubAccountFuturesPositionRiskResponseBody200MaxNotional,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount = getSapiV1SubAccountFuturesPositionRiskResponseBody200PositionAmount,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol = getSapiV1SubAccountFuturesPositionRiskResponseBody200Symbol,
      getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit = getSapiV1SubAccountFuturesPositionRiskResponseBody200UnrealizedProfit
    }

-- | > GET /sapi/v1/sub-account/futures/positionRisk
--
-- The same as 'getSapiV1SubAccountFuturesPositionRisk' but accepts an explicit configuration.
getSapiV1SubAccountFuturesPositionRiskWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1SubAccountFuturesPositionRiskResponse)
getSapiV1SubAccountFuturesPositionRiskWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1SubAccountFuturesPositionRiskResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountFuturesPositionRiskResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1SubAccountFuturesPositionRiskResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountFuturesPositionRiskResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountFuturesPositionRiskResponse401
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
          (Data.Text.pack "/sapi/v1/sub-account/futures/positionRisk")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/sub-account/futures/positionRisk
--
-- The same as 'getSapiV1SubAccountFuturesPositionRisk' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SubAccountFuturesPositionRiskRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SubAccountFuturesPositionRiskRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/sub-account/futures/positionRisk")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/sub-account/futures/positionRisk
--
-- The same as 'getSapiV1SubAccountFuturesPositionRisk' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SubAccountFuturesPositionRiskWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SubAccountFuturesPositionRiskWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/sub-account/futures/positionRisk")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
