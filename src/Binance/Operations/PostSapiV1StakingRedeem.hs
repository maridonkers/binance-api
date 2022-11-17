{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1StakingRedeem
module Binance.Operations.PostSapiV1StakingRedeem where

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

-- | > POST /sapi/v1/staking/redeem
--
-- Redeem Staking product. Locked staking and Locked DeFI staking belong to early redemption, redeeming in advance will result in loss of interest that you have earned.
--
-- Weight(IP): 1
postSapiV1StakingRedeem ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1StakingRedeemParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1StakingRedeemResponse)
postSapiV1StakingRedeem parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1StakingRedeemResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1StakingRedeemResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1StakingRedeemResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1StakingRedeemResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1StakingRedeemResponse401
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
        (Data.Text.pack "/sapi/v1/staking/redeem")
        [ Binance.Common.QueryParameter (Data.Text.pack "product") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProduct parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "positionId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryPositionId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "productId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProductId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryAmount parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/staking\/redeem.POST.parameters@ in the specification.
data PostSapiV1StakingRedeemParameters = PostSapiV1StakingRedeemParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    --
    -- Mandatory if product is \`F_DEFI\`
    postSapiV1StakingRedeemParametersQueryAmount :: (GHC.Maybe.Maybe GHC.Types.Double),
    -- | queryPositionId: Represents the parameter named \'positionId\'
    --
    -- Mandatory if product is \`STAKING\` or \`L_DEFI\`
    postSapiV1StakingRedeemParametersQueryPositionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryProduct: Represents the parameter named \'product\'
    --
    -- * \`STAKING\` - for Locked Staking
    -- * \`F_DEFI\` - for flexible DeFi Staking
    -- * \`L_DEFI\` - for locked DeFi Staking
    postSapiV1StakingRedeemParametersQueryProduct :: Data.Text.Internal.Text,
    -- | queryProductId: Represents the parameter named \'productId\'
    postSapiV1StakingRedeemParametersQueryProductId :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1StakingRedeemParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1StakingRedeemParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1StakingRedeemParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1StakingRedeemParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAmount" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPositionId" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryPositionId obj) : ["queryProduct" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryProduct obj] : ["queryProductId" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryProductId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAmount" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPositionId" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryPositionId obj) : ["queryProduct" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryProduct obj] : ["queryProductId" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryProductId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1StakingRedeemParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1StakingRedeemParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1StakingRedeemParameters" (\obj -> ((((((GHC.Base.pure PostSapiV1StakingRedeemParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPositionId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryProduct")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryProductId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1StakingRedeemParameters' with all required fields.
mkPostSapiV1StakingRedeemParameters ::
  -- | 'postSapiV1StakingRedeemParametersQueryProduct'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1StakingRedeemParametersQueryProductId'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1StakingRedeemParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1StakingRedeemParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1StakingRedeemParameters
mkPostSapiV1StakingRedeemParameters postSapiV1StakingRedeemParametersQueryProduct postSapiV1StakingRedeemParametersQueryProductId postSapiV1StakingRedeemParametersQuerySignature postSapiV1StakingRedeemParametersQueryTimestamp =
  PostSapiV1StakingRedeemParameters
    { postSapiV1StakingRedeemParametersQueryAmount = GHC.Maybe.Nothing,
      postSapiV1StakingRedeemParametersQueryPositionId = GHC.Maybe.Nothing,
      postSapiV1StakingRedeemParametersQueryProduct = postSapiV1StakingRedeemParametersQueryProduct,
      postSapiV1StakingRedeemParametersQueryProductId = postSapiV1StakingRedeemParametersQueryProductId,
      postSapiV1StakingRedeemParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1StakingRedeemParametersQuerySignature = postSapiV1StakingRedeemParametersQuerySignature,
      postSapiV1StakingRedeemParametersQueryTimestamp = postSapiV1StakingRedeemParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1StakingRedeem'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1StakingRedeemResponseError' is used.
data PostSapiV1StakingRedeemResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1StakingRedeemResponseError GHC.Base.String
  | -- | Success.
    PostSapiV1StakingRedeemResponse200 PostSapiV1StakingRedeemResponseBody200
  | -- | Bad Request
    PostSapiV1StakingRedeemResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1StakingRedeemResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/staking\/redeem.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1StakingRedeemResponseBody200 = PostSapiV1StakingRedeemResponseBody200
  { -- | success
    postSapiV1StakingRedeemResponseBody200Success :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1StakingRedeemResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemResponseBody200Success obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= postSapiV1StakingRedeemResponseBody200Success obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1StakingRedeemResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1StakingRedeemResponseBody200" (\obj -> GHC.Base.pure PostSapiV1StakingRedeemResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success"))

-- | Create a new 'PostSapiV1StakingRedeemResponseBody200' with all required fields.
mkPostSapiV1StakingRedeemResponseBody200 ::
  -- | 'postSapiV1StakingRedeemResponseBody200Success'
  GHC.Types.Bool ->
  PostSapiV1StakingRedeemResponseBody200
mkPostSapiV1StakingRedeemResponseBody200 postSapiV1StakingRedeemResponseBody200Success = PostSapiV1StakingRedeemResponseBody200 {postSapiV1StakingRedeemResponseBody200Success = postSapiV1StakingRedeemResponseBody200Success}

-- | > POST /sapi/v1/staking/redeem
--
-- The same as 'postSapiV1StakingRedeem' but accepts an explicit configuration.
postSapiV1StakingRedeemWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1StakingRedeemParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1StakingRedeemResponse)
postSapiV1StakingRedeemWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1StakingRedeemResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1StakingRedeemResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1StakingRedeemResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1StakingRedeemResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1StakingRedeemResponse401
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
          (Data.Text.pack "/sapi/v1/staking/redeem")
          [ Binance.Common.QueryParameter (Data.Text.pack "product") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProduct parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "positionId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryPositionId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "productId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProductId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryAmount parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/staking/redeem
--
-- The same as 'postSapiV1StakingRedeem' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1StakingRedeemRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1StakingRedeemParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1StakingRedeemRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/staking/redeem")
        [ Binance.Common.QueryParameter (Data.Text.pack "product") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProduct parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "positionId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryPositionId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "productId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProductId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryAmount parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/staking/redeem
--
-- The same as 'postSapiV1StakingRedeem' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1StakingRedeemWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1StakingRedeemParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1StakingRedeemWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/staking/redeem")
          [ Binance.Common.QueryParameter (Data.Text.pack "product") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProduct parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "positionId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryPositionId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "productId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryProductId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryAmount parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1StakingRedeemParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1StakingRedeemParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
