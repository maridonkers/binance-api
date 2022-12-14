{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV2SubAccountFuturesAccount
module Binance.Operations.GetSapiV2SubAccountFuturesAccount where

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

-- | > GET /sapi/v2/sub-account/futures/account
--
-- Weight(IP): 1
getSapiV2SubAccountFuturesAccount ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV2SubAccountFuturesAccountResponse)
getSapiV2SubAccountFuturesAccount parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV2SubAccountFuturesAccountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesAccountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV2SubAccountFuturesAccountResponseBody200Variants
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesAccountResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV2SubAccountFuturesAccountResponse401
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
        (Data.Text.pack "/sapi/v2/sub-account/futures/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v2\/sub-account\/futures\/account.GET.parameters@ in the specification.
data GetSapiV2SubAccountFuturesAccountParameters = GetSapiV2SubAccountFuturesAccountParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV2SubAccountFuturesAccountParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryFuturesType: Represents the parameter named \'futuresType\'
    --
    -- * \`1\` - USDT Margined Futures
    -- * \`2\` - COIN Margined Futures
    getSapiV2SubAccountFuturesAccountParametersQueryFuturesType :: GetSapiV2SubAccountFuturesAccountParametersQueryFuturesType,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV2SubAccountFuturesAccountParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV2SubAccountFuturesAccountParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesAccountParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryEmail obj] : ["queryFuturesType" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryFuturesType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryEmail obj] : ["queryFuturesType" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryFuturesType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV2SubAccountFuturesAccountParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesAccountParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV2SubAccountFuturesAccountParameters" (\obj -> ((((GHC.Base.pure GetSapiV2SubAccountFuturesAccountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFuturesType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV2SubAccountFuturesAccountParameters' with all required fields.
mkGetSapiV2SubAccountFuturesAccountParameters ::
  -- | 'getSapiV2SubAccountFuturesAccountParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV2SubAccountFuturesAccountParametersQueryFuturesType'
  GetSapiV2SubAccountFuturesAccountParametersQueryFuturesType ->
  -- | 'getSapiV2SubAccountFuturesAccountParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV2SubAccountFuturesAccountParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV2SubAccountFuturesAccountParameters
mkGetSapiV2SubAccountFuturesAccountParameters getSapiV2SubAccountFuturesAccountParametersQueryEmail getSapiV2SubAccountFuturesAccountParametersQueryFuturesType getSapiV2SubAccountFuturesAccountParametersQuerySignature getSapiV2SubAccountFuturesAccountParametersQueryTimestamp =
  GetSapiV2SubAccountFuturesAccountParameters
    { getSapiV2SubAccountFuturesAccountParametersQueryEmail = getSapiV2SubAccountFuturesAccountParametersQueryEmail,
      getSapiV2SubAccountFuturesAccountParametersQueryFuturesType = getSapiV2SubAccountFuturesAccountParametersQueryFuturesType,
      getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV2SubAccountFuturesAccountParametersQuerySignature = getSapiV2SubAccountFuturesAccountParametersQuerySignature,
      getSapiV2SubAccountFuturesAccountParametersQueryTimestamp = getSapiV2SubAccountFuturesAccountParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v2\/sub-account\/futures\/account.GET.parameters.properties.queryFuturesType@ in the specification.
--
-- Represents the parameter named \'futuresType\'
--
-- * \`1\` - USDT Margined Futures
-- * \`2\` - COIN Margined Futures
data GetSapiV2SubAccountFuturesAccountParametersQueryFuturesType
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeTyped GHC.Int.Int32
  | -- | Represents the JSON value @1@
    GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum1
  | -- | Represents the JSON value @2@
    GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum2
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesAccountParametersQueryFuturesType where
  toJSON (GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeOther val) = val
  toJSON (GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum1) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0)
  toJSON (GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum2) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 2 0)

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesAccountParametersQueryFuturesType where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0) -> GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum1
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 2 0) -> GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeEnum2
            | GHC.Base.otherwise -> GetSapiV2SubAccountFuturesAccountParametersQueryFuturesTypeOther val
      )

-- | Represents a response of the operation 'getSapiV2SubAccountFuturesAccount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV2SubAccountFuturesAccountResponseError' is used.
data GetSapiV2SubAccountFuturesAccountResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV2SubAccountFuturesAccountResponseError GHC.Base.String
  | -- | USDT or COIN Margined Futures Details
    GetSapiV2SubAccountFuturesAccountResponse200 GetSapiV2SubAccountFuturesAccountResponseBody200Variants
  | -- | Bad Request
    GetSapiV2SubAccountFuturesAccountResponse400 Error
  | -- | Unauthorized Request
    GetSapiV2SubAccountFuturesAccountResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the oneOf schema located at @paths.\/sapi\/v2\/sub-account\/futures\/account.GET.responses.200.content.application\/json.schema.oneOf@ in the specification.
data GetSapiV2SubAccountFuturesAccountResponseBody200Variants
  = GetSapiV2SubAccountFuturesAccountResponseBody200Variant1 SubAccountUSDTFuturesDetails
  | GetSapiV2SubAccountFuturesAccountResponseBody200Variant2 SubAccountCOINFuturesDetails
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV2SubAccountFuturesAccountResponseBody200Variants where
  toJSON (GetSapiV2SubAccountFuturesAccountResponseBody200Variant1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSapiV2SubAccountFuturesAccountResponseBody200Variant2 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV2SubAccountFuturesAccountResponseBody200Variants where
  parseJSON val = case (GetSapiV2SubAccountFuturesAccountResponseBody200Variant1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSapiV2SubAccountFuturesAccountResponseBody200Variant2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | > GET /sapi/v2/sub-account/futures/account
--
-- The same as 'getSapiV2SubAccountFuturesAccount' but accepts an explicit configuration.
getSapiV2SubAccountFuturesAccountWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV2SubAccountFuturesAccountResponse)
getSapiV2SubAccountFuturesAccountWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV2SubAccountFuturesAccountResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesAccountResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV2SubAccountFuturesAccountResponseBody200Variants
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesAccountResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV2SubAccountFuturesAccountResponse401
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
          (Data.Text.pack "/sapi/v2/sub-account/futures/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v2/sub-account/futures/account
--
-- The same as 'getSapiV2SubAccountFuturesAccount' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV2SubAccountFuturesAccountRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV2SubAccountFuturesAccountRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v2/sub-account/futures/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v2/sub-account/futures/account
--
-- The same as 'getSapiV2SubAccountFuturesAccount' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV2SubAccountFuturesAccountWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV2SubAccountFuturesAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV2SubAccountFuturesAccountWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v2/sub-account/futures/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "futuresType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryFuturesType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV2SubAccountFuturesAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV2SubAccountFuturesAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
