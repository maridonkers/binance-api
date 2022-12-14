{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV2SubAccountFuturesPositionRisk
module Binance.Operations.GetSapiV2SubAccountFuturesPositionRisk where

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

-- | > GET /sapi/v2/sub-account/futures/positionRisk
--
-- Weight(IP): 1
getSapiV2SubAccountFuturesPositionRisk ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV2SubAccountFuturesPositionRiskResponse)
getSapiV2SubAccountFuturesPositionRisk parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV2SubAccountFuturesPositionRiskResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesPositionRiskResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesPositionRiskResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesPositionRiskResponse401
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
        (Data.Text.pack "/sapi/v2/sub-account/futures/positionRisk")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v2\/sub-account\/futures\/positionRisk.GET.parameters@ in the specification.
data GetSapiV2SubAccountFuturesPositionRiskParameters = GetSapiV2SubAccountFuturesPositionRiskParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryFuturesType: Represents the parameter named \'futuresType\'
    --
    -- * \`1\` - USDT Margined Futures
    -- * \`2\` - COIN Margined Futures
    getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType :: GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesPositionRiskParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail obj] : ["queryFuturesType" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail obj] : ["queryFuturesType" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesPositionRiskParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV2SubAccountFuturesPositionRiskParameters" (\obj -> ((((GHC.Base.pure GetSapiV2SubAccountFuturesPositionRiskParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFuturesType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV2SubAccountFuturesPositionRiskParameters' with all required fields.
mkGetSapiV2SubAccountFuturesPositionRiskParameters ::
  -- | 'getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType'
  GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType ->
  -- | 'getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV2SubAccountFuturesPositionRiskParameters
mkGetSapiV2SubAccountFuturesPositionRiskParameters getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp =
  GetSapiV2SubAccountFuturesPositionRiskParameters
    { getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail = getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail,
      getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType = getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType,
      getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature = getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature,
      getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp = getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v2\/sub-account\/futures\/positionRisk.GET.parameters.properties.queryFuturesType@ in the specification.
--
-- Represents the parameter named \'futuresType\'
--
-- * \`1\` - USDT Margined Futures
-- * \`2\` - COIN Margined Futures
data GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeTyped GHC.Int.Int32
  | -- | Represents the JSON value @1@
    GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum1
  | -- | Represents the JSON value @2@
    GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum2
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType where
  toJSON (GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeOther val) = val
  toJSON (GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum1) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0)
  toJSON (GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum2) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 2 0)

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0) -> GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum1
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 2 0) -> GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeEnum2
            | GHC.Base.otherwise -> GetSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesTypeOther val
      )

-- | Represents a response of the operation 'getSapiV2SubAccountFuturesPositionRisk'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV2SubAccountFuturesPositionRiskResponseError' is used.
data GetSapiV2SubAccountFuturesPositionRiskResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV2SubAccountFuturesPositionRiskResponseError GHC.Base.String
  | -- | USDT or COIN Margined Futures Position Risk
    GetSapiV2SubAccountFuturesPositionRiskResponse200 GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants
  | -- | Bad Request
    GetSapiV2SubAccountFuturesPositionRiskResponse400 Error
  | -- | Unauthorized Request
    GetSapiV2SubAccountFuturesPositionRiskResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the oneOf schema located at @paths.\/sapi\/v2\/sub-account\/futures\/positionRisk.GET.responses.200.content.application\/json.schema.oneOf@ in the specification.
data GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants
  = GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant1 SubAccountUSDTFuturesPositionRisk
  | GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant2 SubAccountCOINFuturesPositionRisk
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants where
  toJSON (GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant2 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants where
  parseJSON val = case (GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variant2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | > GET /sapi/v2/sub-account/futures/positionRisk
--
-- The same as 'getSapiV2SubAccountFuturesPositionRisk' but accepts an explicit configuration.
getSapiV2SubAccountFuturesPositionRiskWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV2SubAccountFuturesPositionRiskResponse)
getSapiV2SubAccountFuturesPositionRiskWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV2SubAccountFuturesPositionRiskResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesPositionRiskResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV2SubAccountFuturesPositionRiskResponseBody200Variants
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesPositionRiskResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesPositionRiskResponse401
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
          (Data.Text.pack "/sapi/v2/sub-account/futures/positionRisk")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v2/sub-account/futures/positionRisk
--
-- The same as 'getSapiV2SubAccountFuturesPositionRisk' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV2SubAccountFuturesPositionRiskRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV2SubAccountFuturesPositionRiskRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v2/sub-account/futures/positionRisk")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v2/sub-account/futures/positionRisk
--
-- The same as 'getSapiV2SubAccountFuturesPositionRisk' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV2SubAccountFuturesPositionRiskWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesPositionRiskParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV2SubAccountFuturesPositionRiskWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v2/sub-account/futures/positionRisk")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesPositionRiskParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesPositionRiskParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
