{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1AccountEnableFastWithdrawSwitch
module Binance.Operations.PostSapiV1AccountEnableFastWithdrawSwitch where

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

-- | > POST /sapi/v1/account/enableFastWithdrawSwitch
--
-- - This request will enable fastwithdraw switch under your account. You need to enable \"trade\" option for the api key which requests this endpoint.
-- - When Fast Withdraw Switch is on, transferring funds to a Binance account will be done instantly. There is no on-chain transaction, no transaction ID and no withdrawal fee.
--
-- Weight(IP): 1
postSapiV1AccountEnableFastWithdrawSwitch ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1AccountEnableFastWithdrawSwitchParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1AccountEnableFastWithdrawSwitchResponse)
postSapiV1AccountEnableFastWithdrawSwitch parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1AccountEnableFastWithdrawSwitchResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1AccountEnableFastWithdrawSwitchResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Data.Aeson.Types.Internal.Object
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1AccountEnableFastWithdrawSwitchResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1AccountEnableFastWithdrawSwitchResponse401
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
        (Data.Text.pack "/sapi/v1/account/enableFastWithdrawSwitch")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/enableFastWithdrawSwitch.POST.parameters@ in the specification.
data PostSapiV1AccountEnableFastWithdrawSwitchParameters = PostSapiV1AccountEnableFastWithdrawSwitchParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1AccountEnableFastWithdrawSwitchParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1AccountEnableFastWithdrawSwitchParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1AccountEnableFastWithdrawSwitchParameters" (\obj -> ((GHC.Base.pure PostSapiV1AccountEnableFastWithdrawSwitchParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1AccountEnableFastWithdrawSwitchParameters' with all required fields.
mkPostSapiV1AccountEnableFastWithdrawSwitchParameters ::
  -- | 'postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1AccountEnableFastWithdrawSwitchParameters
mkPostSapiV1AccountEnableFastWithdrawSwitchParameters postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp =
  PostSapiV1AccountEnableFastWithdrawSwitchParameters
    { postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature = postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature,
      postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp = postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1AccountEnableFastWithdrawSwitch'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1AccountEnableFastWithdrawSwitchResponseError' is used.
data PostSapiV1AccountEnableFastWithdrawSwitchResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1AccountEnableFastWithdrawSwitchResponseError GHC.Base.String
  | -- | OK
    PostSapiV1AccountEnableFastWithdrawSwitchResponse200 Data.Aeson.Types.Internal.Object
  | -- | Bad Request
    PostSapiV1AccountEnableFastWithdrawSwitchResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1AccountEnableFastWithdrawSwitchResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > POST /sapi/v1/account/enableFastWithdrawSwitch
--
-- The same as 'postSapiV1AccountEnableFastWithdrawSwitch' but accepts an explicit configuration.
postSapiV1AccountEnableFastWithdrawSwitchWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1AccountEnableFastWithdrawSwitchParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1AccountEnableFastWithdrawSwitchResponse)
postSapiV1AccountEnableFastWithdrawSwitchWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1AccountEnableFastWithdrawSwitchResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1AccountEnableFastWithdrawSwitchResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Data.Aeson.Types.Internal.Object
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1AccountEnableFastWithdrawSwitchResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1AccountEnableFastWithdrawSwitchResponse401
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
          (Data.Text.pack "/sapi/v1/account/enableFastWithdrawSwitch")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/account/enableFastWithdrawSwitch
--
-- The same as 'postSapiV1AccountEnableFastWithdrawSwitch' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1AccountEnableFastWithdrawSwitchRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1AccountEnableFastWithdrawSwitchParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1AccountEnableFastWithdrawSwitchRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/account/enableFastWithdrawSwitch")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/account/enableFastWithdrawSwitch
--
-- The same as 'postSapiV1AccountEnableFastWithdrawSwitch' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1AccountEnableFastWithdrawSwitchWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1AccountEnableFastWithdrawSwitchParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1AccountEnableFastWithdrawSwitchWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/account/enableFastWithdrawSwitch")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1AccountEnableFastWithdrawSwitchParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1AccountEnableFastWithdrawSwitchParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
