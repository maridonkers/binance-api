{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1SubAccountVirtualSubAccount
module Binance.Operations.PostSapiV1SubAccountVirtualSubAccount where

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

-- | > POST /sapi/v1/sub-account/virtualSubAccount
--
-- - This request will generate a virtual sub account under your master account.
-- - You need to enable \"trade\" option for the api key which requests this endpoint.
--
-- Weight(IP): 1
postSapiV1SubAccountVirtualSubAccount ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountVirtualSubAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountVirtualSubAccountResponse)
postSapiV1SubAccountVirtualSubAccount parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1SubAccountVirtualSubAccountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountVirtualSubAccountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1SubAccountVirtualSubAccountResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountVirtualSubAccountResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountVirtualSubAccountResponse401
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
        (Data.Text.pack "/sapi/v1/sub-account/virtualSubAccount")
        [ Binance.Common.QueryParameter (Data.Text.pack "subAccountString") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/virtualSubAccount.POST.parameters@ in the specification.
data PostSapiV1SubAccountVirtualSubAccountParameters = PostSapiV1SubAccountVirtualSubAccountParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1SubAccountVirtualSubAccountParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySubAccountString: Represents the parameter named \'subAccountString\'
    --
    -- Please input a string. We will create a virtual email using that string for you to register
    postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountVirtualSubAccountParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQuerySignature obj] : ["querySubAccountString" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQuerySignature obj] : ["querySubAccountString" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountVirtualSubAccountParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountVirtualSubAccountParameters" (\obj -> (((GHC.Base.pure PostSapiV1SubAccountVirtualSubAccountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySubAccountString")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1SubAccountVirtualSubAccountParameters' with all required fields.
mkPostSapiV1SubAccountVirtualSubAccountParameters ::
  -- | 'postSapiV1SubAccountVirtualSubAccountParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1SubAccountVirtualSubAccountParameters
mkPostSapiV1SubAccountVirtualSubAccountParameters postSapiV1SubAccountVirtualSubAccountParametersQuerySignature postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp =
  PostSapiV1SubAccountVirtualSubAccountParameters
    { postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1SubAccountVirtualSubAccountParametersQuerySignature = postSapiV1SubAccountVirtualSubAccountParametersQuerySignature,
      postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString = postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString,
      postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp = postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1SubAccountVirtualSubAccount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1SubAccountVirtualSubAccountResponseError' is used.
data PostSapiV1SubAccountVirtualSubAccountResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1SubAccountVirtualSubAccountResponseError GHC.Base.String
  | -- | Return the created virtual email
    PostSapiV1SubAccountVirtualSubAccountResponse200 PostSapiV1SubAccountVirtualSubAccountResponseBody200
  | -- | Bad Request
    PostSapiV1SubAccountVirtualSubAccountResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1SubAccountVirtualSubAccountResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/virtualSubAccount.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1SubAccountVirtualSubAccountResponseBody200 = PostSapiV1SubAccountVirtualSubAccountResponseBody200
  { -- | email
    postSapiV1SubAccountVirtualSubAccountResponseBody200Email :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountVirtualSubAccountResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountResponseBody200Email obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountVirtualSubAccountResponseBody200Email obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountVirtualSubAccountResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountVirtualSubAccountResponseBody200" (\obj -> GHC.Base.pure PostSapiV1SubAccountVirtualSubAccountResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email"))

-- | Create a new 'PostSapiV1SubAccountVirtualSubAccountResponseBody200' with all required fields.
mkPostSapiV1SubAccountVirtualSubAccountResponseBody200 ::
  -- | 'postSapiV1SubAccountVirtualSubAccountResponseBody200Email'
  Data.Text.Internal.Text ->
  PostSapiV1SubAccountVirtualSubAccountResponseBody200
mkPostSapiV1SubAccountVirtualSubAccountResponseBody200 postSapiV1SubAccountVirtualSubAccountResponseBody200Email = PostSapiV1SubAccountVirtualSubAccountResponseBody200 {postSapiV1SubAccountVirtualSubAccountResponseBody200Email = postSapiV1SubAccountVirtualSubAccountResponseBody200Email}

-- | > POST /sapi/v1/sub-account/virtualSubAccount
--
-- The same as 'postSapiV1SubAccountVirtualSubAccount' but accepts an explicit configuration.
postSapiV1SubAccountVirtualSubAccountWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountVirtualSubAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountVirtualSubAccountResponse)
postSapiV1SubAccountVirtualSubAccountWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1SubAccountVirtualSubAccountResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountVirtualSubAccountResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1SubAccountVirtualSubAccountResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountVirtualSubAccountResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountVirtualSubAccountResponse401
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
          (Data.Text.pack "/sapi/v1/sub-account/virtualSubAccount")
          [ Binance.Common.QueryParameter (Data.Text.pack "subAccountString") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/sub-account/virtualSubAccount
--
-- The same as 'postSapiV1SubAccountVirtualSubAccount' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountVirtualSubAccountRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountVirtualSubAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountVirtualSubAccountRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/sub-account/virtualSubAccount")
        [ Binance.Common.QueryParameter (Data.Text.pack "subAccountString") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/sub-account/virtualSubAccount
--
-- The same as 'postSapiV1SubAccountVirtualSubAccount' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountVirtualSubAccountWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountVirtualSubAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountVirtualSubAccountWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/sub-account/virtualSubAccount")
          [ Binance.Common.QueryParameter (Data.Text.pack "subAccountString") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySubAccountString parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountVirtualSubAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountVirtualSubAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
