{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1GiftcardVerify
module Binance.Operations.GetSapiV1GiftcardVerify where

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

-- | > GET /sapi/v1/giftcard/verify
--
-- This API is for verifying whether the Binance Code is valid or not by entering Binance Code or reference number.
--
-- Please note that if you enter the wrong binance code 5 times within an hour, you will no longer be able to verify any binance code for that hour.
--
-- Weight(IP): 1
getSapiV1GiftcardVerify ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1GiftcardVerifyParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1GiftcardVerifyResponse)
getSapiV1GiftcardVerify parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1GiftcardVerifyResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1GiftcardVerifyResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1GiftcardVerifyResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1GiftcardVerifyResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1GiftcardVerifyResponse401
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
        (Data.Text.pack "/sapi/v1/giftcard/verify")
        [ Binance.Common.QueryParameter (Data.Text.pack "referenceNo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryReferenceNo parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1GiftcardVerifyParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/verify.GET.parameters@ in the specification.
data GetSapiV1GiftcardVerifyParameters = GetSapiV1GiftcardVerifyParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1GiftcardVerifyParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryReferenceNo: Represents the parameter named \'referenceNo\'
    --
    -- reference number
    getSapiV1GiftcardVerifyParametersQueryReferenceNo :: Data.Text.Internal.Text,
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1GiftcardVerifyParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1GiftcardVerifyParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1GiftcardVerifyParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1GiftcardVerifyParametersQueryRecvWindow obj) : ["queryReferenceNo" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQueryReferenceNo obj] : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1GiftcardVerifyParametersQueryRecvWindow obj) : ["queryReferenceNo" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQueryReferenceNo obj] : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1GiftcardVerifyParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1GiftcardVerifyParameters" (\obj -> (((GHC.Base.pure GetSapiV1GiftcardVerifyParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryReferenceNo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1GiftcardVerifyParameters' with all required fields.
mkGetSapiV1GiftcardVerifyParameters ::
  -- | 'getSapiV1GiftcardVerifyParametersQueryReferenceNo'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1GiftcardVerifyParameters
mkGetSapiV1GiftcardVerifyParameters getSapiV1GiftcardVerifyParametersQueryReferenceNo getSapiV1GiftcardVerifyParametersQuerySignature getSapiV1GiftcardVerifyParametersQueryTimestamp =
  GetSapiV1GiftcardVerifyParameters
    { getSapiV1GiftcardVerifyParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1GiftcardVerifyParametersQueryReferenceNo = getSapiV1GiftcardVerifyParametersQueryReferenceNo,
      getSapiV1GiftcardVerifyParametersQuerySignature = getSapiV1GiftcardVerifyParametersQuerySignature,
      getSapiV1GiftcardVerifyParametersQueryTimestamp = getSapiV1GiftcardVerifyParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1GiftcardVerify'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1GiftcardVerifyResponseError' is used.
data GetSapiV1GiftcardVerifyResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1GiftcardVerifyResponseError GHC.Base.String
  | -- | Code Verification
    GetSapiV1GiftcardVerifyResponse200 GetSapiV1GiftcardVerifyResponseBody200
  | -- | Bad Request
    GetSapiV1GiftcardVerifyResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1GiftcardVerifyResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/verify.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1GiftcardVerifyResponseBody200 = GetSapiV1GiftcardVerifyResponseBody200
  { -- | code
    getSapiV1GiftcardVerifyResponseBody200Code :: Data.Text.Internal.Text,
    -- | data
    getSapiV1GiftcardVerifyResponseBody200Data :: GetSapiV1GiftcardVerifyResponseBody200Data,
    -- | message
    getSapiV1GiftcardVerifyResponseBody200Message :: Data.Text.Internal.Text,
    -- | success
    getSapiV1GiftcardVerifyResponseBody200Success :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1GiftcardVerifyResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Success obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200Success obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1GiftcardVerifyResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1GiftcardVerifyResponseBody200" (\obj -> (((GHC.Base.pure GetSapiV1GiftcardVerifyResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success"))

-- | Create a new 'GetSapiV1GiftcardVerifyResponseBody200' with all required fields.
mkGetSapiV1GiftcardVerifyResponseBody200 ::
  -- | 'getSapiV1GiftcardVerifyResponseBody200Code'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyResponseBody200Data'
  GetSapiV1GiftcardVerifyResponseBody200Data ->
  -- | 'getSapiV1GiftcardVerifyResponseBody200Message'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyResponseBody200Success'
  GHC.Types.Bool ->
  GetSapiV1GiftcardVerifyResponseBody200
mkGetSapiV1GiftcardVerifyResponseBody200 getSapiV1GiftcardVerifyResponseBody200Code getSapiV1GiftcardVerifyResponseBody200Data getSapiV1GiftcardVerifyResponseBody200Message getSapiV1GiftcardVerifyResponseBody200Success =
  GetSapiV1GiftcardVerifyResponseBody200
    { getSapiV1GiftcardVerifyResponseBody200Code = getSapiV1GiftcardVerifyResponseBody200Code,
      getSapiV1GiftcardVerifyResponseBody200Data = getSapiV1GiftcardVerifyResponseBody200Data,
      getSapiV1GiftcardVerifyResponseBody200Message = getSapiV1GiftcardVerifyResponseBody200Message,
      getSapiV1GiftcardVerifyResponseBody200Success = getSapiV1GiftcardVerifyResponseBody200Success
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/verify.GET.responses.200.content.application\/json.schema.properties.data@ in the specification.
data GetSapiV1GiftcardVerifyResponseBody200Data = GetSapiV1GiftcardVerifyResponseBody200Data
  { -- | amount
    getSapiV1GiftcardVerifyResponseBody200DataAmount :: Data.Text.Internal.Text,
    -- | token
    getSapiV1GiftcardVerifyResponseBody200DataToken :: Data.Text.Internal.Text,
    -- | valid
    getSapiV1GiftcardVerifyResponseBody200DataValid :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1GiftcardVerifyResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataAmount obj] : ["token" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataToken obj] : ["valid" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataValid obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataAmount obj] : ["token" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataToken obj] : ["valid" Data.Aeson.Types.ToJSON..= getSapiV1GiftcardVerifyResponseBody200DataValid obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1GiftcardVerifyResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1GiftcardVerifyResponseBody200Data" (\obj -> ((GHC.Base.pure GetSapiV1GiftcardVerifyResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "valid"))

-- | Create a new 'GetSapiV1GiftcardVerifyResponseBody200Data' with all required fields.
mkGetSapiV1GiftcardVerifyResponseBody200Data ::
  -- | 'getSapiV1GiftcardVerifyResponseBody200DataAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyResponseBody200DataToken'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1GiftcardVerifyResponseBody200DataValid'
  GHC.Types.Bool ->
  GetSapiV1GiftcardVerifyResponseBody200Data
mkGetSapiV1GiftcardVerifyResponseBody200Data getSapiV1GiftcardVerifyResponseBody200DataAmount getSapiV1GiftcardVerifyResponseBody200DataToken getSapiV1GiftcardVerifyResponseBody200DataValid =
  GetSapiV1GiftcardVerifyResponseBody200Data
    { getSapiV1GiftcardVerifyResponseBody200DataAmount = getSapiV1GiftcardVerifyResponseBody200DataAmount,
      getSapiV1GiftcardVerifyResponseBody200DataToken = getSapiV1GiftcardVerifyResponseBody200DataToken,
      getSapiV1GiftcardVerifyResponseBody200DataValid = getSapiV1GiftcardVerifyResponseBody200DataValid
    }

-- | > GET /sapi/v1/giftcard/verify
--
-- The same as 'getSapiV1GiftcardVerify' but accepts an explicit configuration.
getSapiV1GiftcardVerifyWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1GiftcardVerifyParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1GiftcardVerifyResponse)
getSapiV1GiftcardVerifyWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1GiftcardVerifyResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1GiftcardVerifyResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1GiftcardVerifyResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1GiftcardVerifyResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1GiftcardVerifyResponse401
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
          (Data.Text.pack "/sapi/v1/giftcard/verify")
          [ Binance.Common.QueryParameter (Data.Text.pack "referenceNo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryReferenceNo parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1GiftcardVerifyParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/giftcard/verify
--
-- The same as 'getSapiV1GiftcardVerify' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1GiftcardVerifyRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1GiftcardVerifyParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1GiftcardVerifyRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/giftcard/verify")
        [ Binance.Common.QueryParameter (Data.Text.pack "referenceNo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryReferenceNo parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1GiftcardVerifyParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/giftcard/verify
--
-- The same as 'getSapiV1GiftcardVerify' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1GiftcardVerifyWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1GiftcardVerifyParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1GiftcardVerifyWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/giftcard/verify")
          [ Binance.Common.QueryParameter (Data.Text.pack "referenceNo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryReferenceNo parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1GiftcardVerifyParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1GiftcardVerifyParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
