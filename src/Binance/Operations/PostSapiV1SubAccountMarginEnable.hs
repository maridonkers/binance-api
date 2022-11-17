{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1SubAccountMarginEnable
module Binance.Operations.PostSapiV1SubAccountMarginEnable where

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

-- | > POST /sapi/v1/sub-account/margin/enable
--
-- Weight(IP): 1
postSapiV1SubAccountMarginEnable ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountMarginEnableParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountMarginEnableResponse)
postSapiV1SubAccountMarginEnable parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1SubAccountMarginEnableResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountMarginEnableResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1SubAccountMarginEnableResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountMarginEnableResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1SubAccountMarginEnableResponse401
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
        (Data.Text.pack "/sapi/v1/sub-account/margin/enable")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountMarginEnableParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/margin\/enable.POST.parameters@ in the specification.
data PostSapiV1SubAccountMarginEnableParameters = PostSapiV1SubAccountMarginEnableParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    postSapiV1SubAccountMarginEnableParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1SubAccountMarginEnableParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1SubAccountMarginEnableParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1SubAccountMarginEnableParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountMarginEnableParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountMarginEnableParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1SubAccountMarginEnableParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountMarginEnableParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountMarginEnableParameters" (\obj -> (((GHC.Base.pure PostSapiV1SubAccountMarginEnableParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1SubAccountMarginEnableParameters' with all required fields.
mkPostSapiV1SubAccountMarginEnableParameters ::
  -- | 'postSapiV1SubAccountMarginEnableParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountMarginEnableParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountMarginEnableParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1SubAccountMarginEnableParameters
mkPostSapiV1SubAccountMarginEnableParameters postSapiV1SubAccountMarginEnableParametersQueryEmail postSapiV1SubAccountMarginEnableParametersQuerySignature postSapiV1SubAccountMarginEnableParametersQueryTimestamp =
  PostSapiV1SubAccountMarginEnableParameters
    { postSapiV1SubAccountMarginEnableParametersQueryEmail = postSapiV1SubAccountMarginEnableParametersQueryEmail,
      postSapiV1SubAccountMarginEnableParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1SubAccountMarginEnableParametersQuerySignature = postSapiV1SubAccountMarginEnableParametersQuerySignature,
      postSapiV1SubAccountMarginEnableParametersQueryTimestamp = postSapiV1SubAccountMarginEnableParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1SubAccountMarginEnable'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1SubAccountMarginEnableResponseError' is used.
data PostSapiV1SubAccountMarginEnableResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1SubAccountMarginEnableResponseError GHC.Base.String
  | -- | Margin status
    PostSapiV1SubAccountMarginEnableResponse200 PostSapiV1SubAccountMarginEnableResponseBody200
  | -- | Bad Request
    PostSapiV1SubAccountMarginEnableResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1SubAccountMarginEnableResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/sub-account\/margin\/enable.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1SubAccountMarginEnableResponseBody200 = PostSapiV1SubAccountMarginEnableResponseBody200
  { -- | email
    postSapiV1SubAccountMarginEnableResponseBody200Email :: Data.Text.Internal.Text,
    -- | isMarginEnabled
    postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1SubAccountMarginEnableResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableResponseBody200Email obj] : ["isMarginEnabled" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["email" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableResponseBody200Email obj] : ["isMarginEnabled" Data.Aeson.Types.ToJSON..= postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1SubAccountMarginEnableResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1SubAccountMarginEnableResponseBody200" (\obj -> (GHC.Base.pure PostSapiV1SubAccountMarginEnableResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isMarginEnabled"))

-- | Create a new 'PostSapiV1SubAccountMarginEnableResponseBody200' with all required fields.
mkPostSapiV1SubAccountMarginEnableResponseBody200 ::
  -- | 'postSapiV1SubAccountMarginEnableResponseBody200Email'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled'
  GHC.Types.Bool ->
  PostSapiV1SubAccountMarginEnableResponseBody200
mkPostSapiV1SubAccountMarginEnableResponseBody200 postSapiV1SubAccountMarginEnableResponseBody200Email postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled =
  PostSapiV1SubAccountMarginEnableResponseBody200
    { postSapiV1SubAccountMarginEnableResponseBody200Email = postSapiV1SubAccountMarginEnableResponseBody200Email,
      postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled = postSapiV1SubAccountMarginEnableResponseBody200IsMarginEnabled
    }

-- | > POST /sapi/v1/sub-account/margin/enable
--
-- The same as 'postSapiV1SubAccountMarginEnable' but accepts an explicit configuration.
postSapiV1SubAccountMarginEnableWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountMarginEnableParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1SubAccountMarginEnableResponse)
postSapiV1SubAccountMarginEnableWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1SubAccountMarginEnableResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountMarginEnableResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1SubAccountMarginEnableResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountMarginEnableResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1SubAccountMarginEnableResponse401
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
          (Data.Text.pack "/sapi/v1/sub-account/margin/enable")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountMarginEnableParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/sub-account/margin/enable
--
-- The same as 'postSapiV1SubAccountMarginEnable' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountMarginEnableRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountMarginEnableParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountMarginEnableRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/sub-account/margin/enable")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountMarginEnableParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/sub-account/margin/enable
--
-- The same as 'postSapiV1SubAccountMarginEnable' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1SubAccountMarginEnableWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1SubAccountMarginEnableParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1SubAccountMarginEnableWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/sub-account/margin/enable")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1SubAccountMarginEnableParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1SubAccountMarginEnableParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
