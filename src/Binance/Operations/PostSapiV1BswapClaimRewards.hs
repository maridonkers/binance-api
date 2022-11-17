{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1BswapClaimRewards
module Binance.Operations.PostSapiV1BswapClaimRewards where

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

-- | > POST /sapi/v1/bswap/claimRewards
--
-- Claim swap rewards or liquidity rewards
--
-- Weight(UID): 1000
postSapiV1BswapClaimRewards ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1BswapClaimRewardsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1BswapClaimRewardsResponse)
postSapiV1BswapClaimRewards parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1BswapClaimRewardsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1BswapClaimRewardsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1BswapClaimRewardsResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1BswapClaimRewardsResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1BswapClaimRewardsResponse401
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
        (Data.Text.pack "/sapi/v1/bswap/claimRewards")
        [ Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/bswap\/claimRewards.POST.parameters@ in the specification.
data PostSapiV1BswapClaimRewardsParameters = PostSapiV1BswapClaimRewardsParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1BswapClaimRewardsParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1BswapClaimRewardsParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1BswapClaimRewardsParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryType: Represents the parameter named \'type\'
    --
    -- 0: Swap rewards, 1: Liquidity rewards, default to 0
    postSapiV1BswapClaimRewardsParametersQueryType :: (GHC.Maybe.Maybe GHC.Int.Int32)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1BswapClaimRewardsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1BswapClaimRewardsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (postSapiV1BswapClaimRewardsParametersQueryType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1BswapClaimRewardsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (postSapiV1BswapClaimRewardsParametersQueryType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1BswapClaimRewardsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1BswapClaimRewardsParameters" (\obj -> (((GHC.Base.pure PostSapiV1BswapClaimRewardsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryType"))

-- | Create a new 'PostSapiV1BswapClaimRewardsParameters' with all required fields.
mkPostSapiV1BswapClaimRewardsParameters ::
  -- | 'postSapiV1BswapClaimRewardsParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1BswapClaimRewardsParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1BswapClaimRewardsParameters
mkPostSapiV1BswapClaimRewardsParameters postSapiV1BswapClaimRewardsParametersQuerySignature postSapiV1BswapClaimRewardsParametersQueryTimestamp =
  PostSapiV1BswapClaimRewardsParameters
    { postSapiV1BswapClaimRewardsParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1BswapClaimRewardsParametersQuerySignature = postSapiV1BswapClaimRewardsParametersQuerySignature,
      postSapiV1BswapClaimRewardsParametersQueryTimestamp = postSapiV1BswapClaimRewardsParametersQueryTimestamp,
      postSapiV1BswapClaimRewardsParametersQueryType = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postSapiV1BswapClaimRewards'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1BswapClaimRewardsResponseError' is used.
data PostSapiV1BswapClaimRewardsResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1BswapClaimRewardsResponseError GHC.Base.String
  | -- | Result of claim
    PostSapiV1BswapClaimRewardsResponse200 PostSapiV1BswapClaimRewardsResponseBody200
  | -- | Bad Request
    PostSapiV1BswapClaimRewardsResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1BswapClaimRewardsResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/bswap\/claimRewards.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1BswapClaimRewardsResponseBody200 = PostSapiV1BswapClaimRewardsResponseBody200
  { -- | success
    postSapiV1BswapClaimRewardsResponseBody200Success :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1BswapClaimRewardsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsResponseBody200Success obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= postSapiV1BswapClaimRewardsResponseBody200Success obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1BswapClaimRewardsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1BswapClaimRewardsResponseBody200" (\obj -> GHC.Base.pure PostSapiV1BswapClaimRewardsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success"))

-- | Create a new 'PostSapiV1BswapClaimRewardsResponseBody200' with all required fields.
mkPostSapiV1BswapClaimRewardsResponseBody200 ::
  -- | 'postSapiV1BswapClaimRewardsResponseBody200Success'
  GHC.Types.Bool ->
  PostSapiV1BswapClaimRewardsResponseBody200
mkPostSapiV1BswapClaimRewardsResponseBody200 postSapiV1BswapClaimRewardsResponseBody200Success = PostSapiV1BswapClaimRewardsResponseBody200 {postSapiV1BswapClaimRewardsResponseBody200Success = postSapiV1BswapClaimRewardsResponseBody200Success}

-- | > POST /sapi/v1/bswap/claimRewards
--
-- The same as 'postSapiV1BswapClaimRewards' but accepts an explicit configuration.
postSapiV1BswapClaimRewardsWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1BswapClaimRewardsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1BswapClaimRewardsResponse)
postSapiV1BswapClaimRewardsWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1BswapClaimRewardsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1BswapClaimRewardsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1BswapClaimRewardsResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1BswapClaimRewardsResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1BswapClaimRewardsResponse401
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
          (Data.Text.pack "/sapi/v1/bswap/claimRewards")
          [ Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/bswap/claimRewards
--
-- The same as 'postSapiV1BswapClaimRewards' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1BswapClaimRewardsRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1BswapClaimRewardsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1BswapClaimRewardsRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/bswap/claimRewards")
        [ Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/bswap/claimRewards
--
-- The same as 'postSapiV1BswapClaimRewards' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1BswapClaimRewardsWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1BswapClaimRewardsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1BswapClaimRewardsWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/bswap/claimRewards")
          [ Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1BswapClaimRewardsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1BswapClaimRewardsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
