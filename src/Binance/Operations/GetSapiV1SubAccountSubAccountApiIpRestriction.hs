{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1SubAccountSubAccountApiIpRestriction
module Binance.Operations.GetSapiV1SubAccountSubAccountApiIpRestriction where

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

-- | > GET /sapi/v1/sub-account/subAccountApi/ipRestriction
--
-- Weight(UID): 3000
getSapiV1SubAccountSubAccountApiIpRestriction ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1SubAccountSubAccountApiIpRestrictionResponse)
getSapiV1SubAccountSubAccountApiIpRestriction parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1SubAccountSubAccountApiIpRestrictionResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountSubAccountApiIpRestrictionResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountSubAccountApiIpRestrictionResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1SubAccountSubAccountApiIpRestrictionResponse401
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
        (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/subAccountApi\/ipRestriction.GET.parameters@ in the specification.
data GetSapiV1SubAccountSubAccountApiIpRestrictionParameters = GetSapiV1SubAccountSubAccountApiIpRestrictionParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySubAccountApiKey: Represents the parameter named \'subAccountApiKey\'
    getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1SubAccountSubAccountApiIpRestrictionParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature obj] : ["querySubAccountApiKey" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature obj] : ["querySubAccountApiKey" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1SubAccountSubAccountApiIpRestrictionParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1SubAccountSubAccountApiIpRestrictionParameters" (\obj -> ((((GHC.Base.pure GetSapiV1SubAccountSubAccountApiIpRestrictionParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySubAccountApiKey")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1SubAccountSubAccountApiIpRestrictionParameters' with all required fields.
mkGetSapiV1SubAccountSubAccountApiIpRestrictionParameters ::
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters
mkGetSapiV1SubAccountSubAccountApiIpRestrictionParameters getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp =
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters
    { getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail = getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail,
      getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature = getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature,
      getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey = getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey,
      getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp = getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1SubAccountSubAccountApiIpRestriction'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1SubAccountSubAccountApiIpRestrictionResponseError' is used.
data GetSapiV1SubAccountSubAccountApiIpRestrictionResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1SubAccountSubAccountApiIpRestrictionResponseError GHC.Base.String
  | -- | IP Restriction information
    GetSapiV1SubAccountSubAccountApiIpRestrictionResponse200 GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
  | -- | Bad Request
    GetSapiV1SubAccountSubAccountApiIpRestrictionResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1SubAccountSubAccountApiIpRestrictionResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/subAccountApi\/ipRestriction.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 = GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
  { -- | apiKey
    getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey :: Data.Text.Internal.Text,
    -- | ipList
    getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList :: ([Data.Text.Internal.Text]),
    -- | ipRestrict
    getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict :: Data.Text.Internal.Text,
    -- | updateTime
    getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["apiKey" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey obj] : ["ipList" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList obj] : ["ipRestrict" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["apiKey" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey obj] : ["ipList" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList obj] : ["ipRestrict" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200" (\obj -> (((GHC.Base.pure GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "apiKey")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipList")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipRestrict")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updateTime"))

-- | Create a new 'GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200' with all required fields.
mkGetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 ::
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList'
  [Data.Text.Internal.Text] ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime'
  GHC.Int.Int64 ->
  GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
mkGetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200 getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime =
  GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
    { getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey = getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200ApiKey,
      getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList = getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpList,
      getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict = getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200IpRestrict,
      getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime = getSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200UpdateTime
    }

-- | > GET /sapi/v1/sub-account/subAccountApi/ipRestriction
--
-- The same as 'getSapiV1SubAccountSubAccountApiIpRestriction' but accepts an explicit configuration.
getSapiV1SubAccountSubAccountApiIpRestrictionWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1SubAccountSubAccountApiIpRestrictionResponse)
getSapiV1SubAccountSubAccountApiIpRestrictionWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1SubAccountSubAccountApiIpRestrictionResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountSubAccountApiIpRestrictionResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1SubAccountSubAccountApiIpRestrictionResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountSubAccountApiIpRestrictionResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1SubAccountSubAccountApiIpRestrictionResponse401
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
          (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/sub-account/subAccountApi/ipRestriction
--
-- The same as 'getSapiV1SubAccountSubAccountApiIpRestriction' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SubAccountSubAccountApiIpRestrictionRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SubAccountSubAccountApiIpRestrictionRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/sub-account/subAccountApi/ipRestriction
--
-- The same as 'getSapiV1SubAccountSubAccountApiIpRestriction' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1SubAccountSubAccountApiIpRestrictionWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1SubAccountSubAccountApiIpRestrictionParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1SubAccountSubAccountApiIpRestrictionWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1SubAccountSubAccountApiIpRestrictionParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
