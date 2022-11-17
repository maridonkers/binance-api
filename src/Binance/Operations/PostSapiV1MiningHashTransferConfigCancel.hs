{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1MiningHashTransferConfigCancel
module Binance.Operations.PostSapiV1MiningHashTransferConfigCancel where

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

-- | > POST /sapi/v1/mining/hash-transfer/config/cancel
--
-- Weight(IP): 5
postSapiV1MiningHashTransferConfigCancel ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MiningHashTransferConfigCancelParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1MiningHashTransferConfigCancelResponse)
postSapiV1MiningHashTransferConfigCancel parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1MiningHashTransferConfigCancelResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MiningHashTransferConfigCancelResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1MiningHashTransferConfigCancelResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MiningHashTransferConfigCancelResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MiningHashTransferConfigCancelResponse401
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
        (Data.Text.pack "/sapi/v1/mining/hash-transfer/config/cancel")
        [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/config\/cancel.POST.parameters@ in the specification.
data PostSapiV1MiningHashTransferConfigCancelParameters = PostSapiV1MiningHashTransferConfigCancelParameters
  { -- | queryConfigId: Represents the parameter named \'configId\'
    --
    -- Mining ID
    postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1MiningHashTransferConfigCancelParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryUserName: Represents the parameter named \'userName\'
    --
    -- Mining Account
    postSapiV1MiningHashTransferConfigCancelParametersQueryUserName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1MiningHashTransferConfigCancelParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryConfigId" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryUserName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryConfigId" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelParametersQueryUserName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1MiningHashTransferConfigCancelParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1MiningHashTransferConfigCancelParameters" (\obj -> ((((GHC.Base.pure PostSapiV1MiningHashTransferConfigCancelParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryConfigId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryUserName"))

-- | Create a new 'PostSapiV1MiningHashTransferConfigCancelParameters' with all required fields.
mkPostSapiV1MiningHashTransferConfigCancelParameters ::
  -- | 'postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1MiningHashTransferConfigCancelParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'postSapiV1MiningHashTransferConfigCancelParametersQueryUserName'
  Data.Text.Internal.Text ->
  PostSapiV1MiningHashTransferConfigCancelParameters
mkPostSapiV1MiningHashTransferConfigCancelParameters postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId postSapiV1MiningHashTransferConfigCancelParametersQuerySignature postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp postSapiV1MiningHashTransferConfigCancelParametersQueryUserName =
  PostSapiV1MiningHashTransferConfigCancelParameters
    { postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId = postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId,
      postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1MiningHashTransferConfigCancelParametersQuerySignature = postSapiV1MiningHashTransferConfigCancelParametersQuerySignature,
      postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp = postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp,
      postSapiV1MiningHashTransferConfigCancelParametersQueryUserName = postSapiV1MiningHashTransferConfigCancelParametersQueryUserName
    }

-- | Represents a response of the operation 'postSapiV1MiningHashTransferConfigCancel'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1MiningHashTransferConfigCancelResponseError' is used.
data PostSapiV1MiningHashTransferConfigCancelResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1MiningHashTransferConfigCancelResponseError GHC.Base.String
  | -- | Success flag
    PostSapiV1MiningHashTransferConfigCancelResponse200 PostSapiV1MiningHashTransferConfigCancelResponseBody200
  | -- | Bad Request
    PostSapiV1MiningHashTransferConfigCancelResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1MiningHashTransferConfigCancelResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/config\/cancel.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1MiningHashTransferConfigCancelResponseBody200 = PostSapiV1MiningHashTransferConfigCancelResponseBody200
  { -- | code
    postSapiV1MiningHashTransferConfigCancelResponseBody200Code :: GHC.Int.Int64,
    -- | data
    postSapiV1MiningHashTransferConfigCancelResponseBody200Data :: GHC.Types.Bool,
    -- | msg
    postSapiV1MiningHashTransferConfigCancelResponseBody200Msg :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1MiningHashTransferConfigCancelResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Msg obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= postSapiV1MiningHashTransferConfigCancelResponseBody200Msg obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1MiningHashTransferConfigCancelResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1MiningHashTransferConfigCancelResponseBody200" (\obj -> ((GHC.Base.pure PostSapiV1MiningHashTransferConfigCancelResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg"))

-- | Create a new 'PostSapiV1MiningHashTransferConfigCancelResponseBody200' with all required fields.
mkPostSapiV1MiningHashTransferConfigCancelResponseBody200 ::
  -- | 'postSapiV1MiningHashTransferConfigCancelResponseBody200Code'
  GHC.Int.Int64 ->
  -- | 'postSapiV1MiningHashTransferConfigCancelResponseBody200Data'
  GHC.Types.Bool ->
  -- | 'postSapiV1MiningHashTransferConfigCancelResponseBody200Msg'
  Data.Text.Internal.Text ->
  PostSapiV1MiningHashTransferConfigCancelResponseBody200
mkPostSapiV1MiningHashTransferConfigCancelResponseBody200 postSapiV1MiningHashTransferConfigCancelResponseBody200Code postSapiV1MiningHashTransferConfigCancelResponseBody200Data postSapiV1MiningHashTransferConfigCancelResponseBody200Msg =
  PostSapiV1MiningHashTransferConfigCancelResponseBody200
    { postSapiV1MiningHashTransferConfigCancelResponseBody200Code = postSapiV1MiningHashTransferConfigCancelResponseBody200Code,
      postSapiV1MiningHashTransferConfigCancelResponseBody200Data = postSapiV1MiningHashTransferConfigCancelResponseBody200Data,
      postSapiV1MiningHashTransferConfigCancelResponseBody200Msg = postSapiV1MiningHashTransferConfigCancelResponseBody200Msg
    }

-- | > POST /sapi/v1/mining/hash-transfer/config/cancel
--
-- The same as 'postSapiV1MiningHashTransferConfigCancel' but accepts an explicit configuration.
postSapiV1MiningHashTransferConfigCancelWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MiningHashTransferConfigCancelParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1MiningHashTransferConfigCancelResponse)
postSapiV1MiningHashTransferConfigCancelWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1MiningHashTransferConfigCancelResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MiningHashTransferConfigCancelResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1MiningHashTransferConfigCancelResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MiningHashTransferConfigCancelResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MiningHashTransferConfigCancelResponse401
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
          (Data.Text.pack "/sapi/v1/mining/hash-transfer/config/cancel")
          [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/mining/hash-transfer/config/cancel
--
-- The same as 'postSapiV1MiningHashTransferConfigCancel' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1MiningHashTransferConfigCancelRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MiningHashTransferConfigCancelParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1MiningHashTransferConfigCancelRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/mining/hash-transfer/config/cancel")
        [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/mining/hash-transfer/config/cancel
--
-- The same as 'postSapiV1MiningHashTransferConfigCancel' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1MiningHashTransferConfigCancelWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MiningHashTransferConfigCancelParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1MiningHashTransferConfigCancelWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/mining/hash-transfer/config/cancel")
          [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MiningHashTransferConfigCancelParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MiningHashTransferConfigCancelParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )