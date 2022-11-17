{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1GiftcardCreateCode
module Binance.Operations.PostSapiV1GiftcardCreateCode where

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

-- | > POST /sapi/v1/giftcard/createCode
--
-- This API is for creating a Binance Code. To get started with, please make sure:
--
-- - You have a Binance account
-- - You have passed kyc
-- - You have a sufﬁcient balance in your Binance funding wallet
-- - You need Enable Withdrawals for the API Key which requests this endpoint.
--
-- Daily creation volume: 2 BTC \/ 24H Daily creation times: 200 Codes \/ 24H
--
-- Weight(IP): 1
postSapiV1GiftcardCreateCode ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1GiftcardCreateCodeParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1GiftcardCreateCodeResponse)
postSapiV1GiftcardCreateCode parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1GiftcardCreateCodeResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1GiftcardCreateCodeResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1GiftcardCreateCodeResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1GiftcardCreateCodeResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1GiftcardCreateCodeResponse401
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
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/giftcard/createCode")
        [ Binance.Common.QueryParameter (Data.Text.pack "token") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryToken parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1GiftcardCreateCodeParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/createCode.POST.parameters@ in the specification.
data PostSapiV1GiftcardCreateCodeParameters = PostSapiV1GiftcardCreateCodeParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    --
    -- The amount of the coin
    postSapiV1GiftcardCreateCodeParametersQueryAmount :: GHC.Types.Double,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1GiftcardCreateCodeParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1GiftcardCreateCodeParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1GiftcardCreateCodeParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryToken: Represents the parameter named \'token\'
    --
    -- The coin type contained in the Binance Code
    postSapiV1GiftcardCreateCodeParametersQueryToken :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1GiftcardCreateCodeParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1GiftcardCreateCodeParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryTimestamp obj] : ["queryToken" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryToken obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1GiftcardCreateCodeParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryTimestamp obj] : ["queryToken" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeParametersQueryToken obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1GiftcardCreateCodeParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1GiftcardCreateCodeParameters" (\obj -> ((((GHC.Base.pure PostSapiV1GiftcardCreateCodeParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryToken"))

-- | Create a new 'PostSapiV1GiftcardCreateCodeParameters' with all required fields.
mkPostSapiV1GiftcardCreateCodeParameters ::
  -- | 'postSapiV1GiftcardCreateCodeParametersQueryAmount'
  GHC.Types.Double ->
  -- | 'postSapiV1GiftcardCreateCodeParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1GiftcardCreateCodeParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'postSapiV1GiftcardCreateCodeParametersQueryToken'
  Data.Text.Internal.Text ->
  PostSapiV1GiftcardCreateCodeParameters
mkPostSapiV1GiftcardCreateCodeParameters postSapiV1GiftcardCreateCodeParametersQueryAmount postSapiV1GiftcardCreateCodeParametersQuerySignature postSapiV1GiftcardCreateCodeParametersQueryTimestamp postSapiV1GiftcardCreateCodeParametersQueryToken =
  PostSapiV1GiftcardCreateCodeParameters
    { postSapiV1GiftcardCreateCodeParametersQueryAmount = postSapiV1GiftcardCreateCodeParametersQueryAmount,
      postSapiV1GiftcardCreateCodeParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1GiftcardCreateCodeParametersQuerySignature = postSapiV1GiftcardCreateCodeParametersQuerySignature,
      postSapiV1GiftcardCreateCodeParametersQueryTimestamp = postSapiV1GiftcardCreateCodeParametersQueryTimestamp,
      postSapiV1GiftcardCreateCodeParametersQueryToken = postSapiV1GiftcardCreateCodeParametersQueryToken
    }

-- | Represents a response of the operation 'postSapiV1GiftcardCreateCode'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1GiftcardCreateCodeResponseError' is used.
data PostSapiV1GiftcardCreateCodeResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1GiftcardCreateCodeResponseError GHC.Base.String
  | -- | Code creation
    PostSapiV1GiftcardCreateCodeResponse200 PostSapiV1GiftcardCreateCodeResponseBody200
  | -- | Bad Request
    PostSapiV1GiftcardCreateCodeResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1GiftcardCreateCodeResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/createCode.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1GiftcardCreateCodeResponseBody200 = PostSapiV1GiftcardCreateCodeResponseBody200
  { -- | code
    postSapiV1GiftcardCreateCodeResponseBody200Code :: Data.Text.Internal.Text,
    -- | data
    postSapiV1GiftcardCreateCodeResponseBody200Data :: PostSapiV1GiftcardCreateCodeResponseBody200Data,
    -- | message
    postSapiV1GiftcardCreateCodeResponseBody200Message :: Data.Text.Internal.Text,
    -- | success
    postSapiV1GiftcardCreateCodeResponseBody200Success :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1GiftcardCreateCodeResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Success obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Data obj] : ["message" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Message obj] : ["success" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200Success obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1GiftcardCreateCodeResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1GiftcardCreateCodeResponseBody200" (\obj -> (((GHC.Base.pure PostSapiV1GiftcardCreateCodeResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success"))

-- | Create a new 'PostSapiV1GiftcardCreateCodeResponseBody200' with all required fields.
mkPostSapiV1GiftcardCreateCodeResponseBody200 ::
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200Code'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200Data'
  PostSapiV1GiftcardCreateCodeResponseBody200Data ->
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200Message'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200Success'
  GHC.Types.Bool ->
  PostSapiV1GiftcardCreateCodeResponseBody200
mkPostSapiV1GiftcardCreateCodeResponseBody200 postSapiV1GiftcardCreateCodeResponseBody200Code postSapiV1GiftcardCreateCodeResponseBody200Data postSapiV1GiftcardCreateCodeResponseBody200Message postSapiV1GiftcardCreateCodeResponseBody200Success =
  PostSapiV1GiftcardCreateCodeResponseBody200
    { postSapiV1GiftcardCreateCodeResponseBody200Code = postSapiV1GiftcardCreateCodeResponseBody200Code,
      postSapiV1GiftcardCreateCodeResponseBody200Data = postSapiV1GiftcardCreateCodeResponseBody200Data,
      postSapiV1GiftcardCreateCodeResponseBody200Message = postSapiV1GiftcardCreateCodeResponseBody200Message,
      postSapiV1GiftcardCreateCodeResponseBody200Success = postSapiV1GiftcardCreateCodeResponseBody200Success
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/giftcard\/createCode.POST.responses.200.content.application\/json.schema.properties.data@ in the specification.
data PostSapiV1GiftcardCreateCodeResponseBody200Data = PostSapiV1GiftcardCreateCodeResponseBody200Data
  { -- | code
    postSapiV1GiftcardCreateCodeResponseBody200DataCode :: Data.Text.Internal.Text,
    -- | referenceNo
    postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1GiftcardCreateCodeResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200DataCode obj] : ["referenceNo" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200DataCode obj] : ["referenceNo" Data.Aeson.Types.ToJSON..= postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1GiftcardCreateCodeResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1GiftcardCreateCodeResponseBody200Data" (\obj -> (GHC.Base.pure PostSapiV1GiftcardCreateCodeResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "referenceNo"))

-- | Create a new 'PostSapiV1GiftcardCreateCodeResponseBody200Data' with all required fields.
mkPostSapiV1GiftcardCreateCodeResponseBody200Data ::
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200DataCode'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo'
  Data.Text.Internal.Text ->
  PostSapiV1GiftcardCreateCodeResponseBody200Data
mkPostSapiV1GiftcardCreateCodeResponseBody200Data postSapiV1GiftcardCreateCodeResponseBody200DataCode postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo =
  PostSapiV1GiftcardCreateCodeResponseBody200Data
    { postSapiV1GiftcardCreateCodeResponseBody200DataCode = postSapiV1GiftcardCreateCodeResponseBody200DataCode,
      postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo = postSapiV1GiftcardCreateCodeResponseBody200DataReferenceNo
    }

-- | > POST /sapi/v1/giftcard/createCode
--
-- The same as 'postSapiV1GiftcardCreateCode' but accepts an explicit configuration.
postSapiV1GiftcardCreateCodeWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1GiftcardCreateCodeParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1GiftcardCreateCodeResponse)
postSapiV1GiftcardCreateCodeWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1GiftcardCreateCodeResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1GiftcardCreateCodeResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1GiftcardCreateCodeResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1GiftcardCreateCodeResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1GiftcardCreateCodeResponse401
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
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/giftcard/createCode")
          [ Binance.Common.QueryParameter (Data.Text.pack "token") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryToken parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1GiftcardCreateCodeParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/giftcard/createCode
--
-- The same as 'postSapiV1GiftcardCreateCode' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1GiftcardCreateCodeRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1GiftcardCreateCodeParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1GiftcardCreateCodeRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/giftcard/createCode")
        [ Binance.Common.QueryParameter (Data.Text.pack "token") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryToken parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1GiftcardCreateCodeParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/giftcard/createCode
--
-- The same as 'postSapiV1GiftcardCreateCode' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1GiftcardCreateCodeWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1GiftcardCreateCodeParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1GiftcardCreateCodeWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/giftcard/createCode")
          [ Binance.Common.QueryParameter (Data.Text.pack "token") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryToken parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1GiftcardCreateCodeParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1GiftcardCreateCodeParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
