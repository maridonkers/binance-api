{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1SubAccountSubAccountApiIpRestrictionIpList
module Binance.Operations.PostSapiV1SubAccountSubAccountApiIpRestrictionIpList where

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

-- | > POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
--
-- Before the usage of this endpoint, please ensure \`POST \/sapi\/v1\/sub-account\/subAccountApi\/ipRestriction\` was used to enable the IP restriction.
--
-- Weight(UID): 3000
postSapiV1SubAccountSubAccountApiIpRestrictionIpList ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse)
postSapiV1SubAccountSubAccountApiIpRestrictionIpList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse401
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
        (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "ipAddress") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "thirdPartyName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/subAccountApi\/ipRestriction\/ipList.POST.parameters@ in the specification.
data PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters = PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryIpAddress: Represents the parameter named \'ipAddress\'
    --
    -- Can be added in batches, separated by commas
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySubAccountApiKey: Represents the parameter named \'subAccountApiKey\'
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey :: Data.Text.Internal.Text,
    -- | queryThirdPartyName: Represents the parameter named \'thirdPartyName\'
    --
    -- third party IP list name
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail obj] : ["queryIpAddress" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature obj] : ["querySubAccountApiKey" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryThirdPartyName" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail obj] : ["queryIpAddress" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature obj] : ["querySubAccountApiKey" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryThirdPartyName" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters" (\obj -> ((((((GHC.Base.pure PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryIpAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySubAccountApiKey")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryThirdPartyName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters' with all required fields.
mkPostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters ::
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters
mkPostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp =
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters
    { postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail = postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress = postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature = postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey = postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName = GHC.Maybe.Nothing,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp = postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1SubAccountSubAccountApiIpRestrictionIpList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseError' is used.
data PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseError GHC.Base.String
  | -- | Add IP information
    PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse200 PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
  | -- | Bad Request
    PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/subAccountApi\/ipRestriction\/ipList.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 = PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
  { -- | apiKey
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey :: Data.Text.Internal.Text,
    -- | ip
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip :: Data.Text.Internal.Text,
    -- | updateTime
    postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["apiKey" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey obj] : ["ip" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip obj] : ["updateTime" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["apiKey" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey obj] : ["ip" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip obj] : ["updateTime" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200" (\obj -> ((GHC.Base.pure PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "apiKey")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updateTime"))

-- | Create a new 'PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200' with all required fields.
mkPostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 ::
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime'
  GHC.Int.Int64 ->
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
mkPostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200 postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime =
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
    { postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey = postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200ApiKey,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip = postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200Ip,
      postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime = postSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200UpdateTime
    }

-- | > POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
--
-- The same as 'postSapiV1SubAccountSubAccountApiIpRestrictionIpList' but accepts an explicit configuration.
postSapiV1SubAccountSubAccountApiIpRestrictionIpListWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse)
postSapiV1SubAccountSubAccountApiIpRestrictionIpListWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountSubAccountApiIpRestrictionIpListResponse401
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
          (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "ipAddress") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "thirdPartyName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
--
-- The same as 'postSapiV1SubAccountSubAccountApiIpRestrictionIpList' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountSubAccountApiIpRestrictionIpListRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountSubAccountApiIpRestrictionIpListRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "ipAddress") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "thirdPartyName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
--
-- The same as 'postSapiV1SubAccountSubAccountApiIpRestrictionIpList' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountSubAccountApiIpRestrictionIpListWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountSubAccountApiIpRestrictionIpListParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountSubAccountApiIpRestrictionIpListWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "subAccountApiKey") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySubAccountApiKey parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "ipAddress") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryIpAddress parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "thirdPartyName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryThirdPartyName parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountSubAccountApiIpRestrictionIpListParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )