{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV3AssetGetUserAsset
module Binance.Operations.PostSapiV3AssetGetUserAsset where

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

-- | > POST /sapi/v3/asset/getUserAsset
--
-- Get user assets, just for positive data.
--
-- Weight(IP): 5
postSapiV3AssetGetUserAsset ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV3AssetGetUserAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV3AssetGetUserAssetResponse)
postSapiV3AssetGetUserAsset parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV3AssetGetUserAssetResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV3AssetGetUserAssetResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([PostSapiV3AssetGetUserAssetResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV3AssetGetUserAssetResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV3AssetGetUserAssetResponse401
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
        (Data.Text.pack "/sapi/v3/asset/getUserAsset")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "needBtcValuation") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v3\/asset\/getUserAsset.POST.parameters@ in the specification.
data PostSapiV3AssetGetUserAssetParameters = PostSapiV3AssetGetUserAssetParameters
  { -- | queryAsset: Represents the parameter named \'asset\'
    postSapiV3AssetGetUserAssetParametersQueryAsset :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryNeedBtcValuation: Represents the parameter named \'needBtcValuation\'
    postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation :: (GHC.Maybe.Maybe PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV3AssetGetUserAssetParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV3AssetGetUserAssetParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV3AssetGetUserAssetParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV3AssetGetUserAssetParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNeedBtcValuation" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNeedBtcValuation" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV3AssetGetUserAssetParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV3AssetGetUserAssetParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV3AssetGetUserAssetParameters" (\obj -> ((((GHC.Base.pure PostSapiV3AssetGetUserAssetParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryNeedBtcValuation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV3AssetGetUserAssetParameters' with all required fields.
mkPostSapiV3AssetGetUserAssetParameters ::
  -- | 'postSapiV3AssetGetUserAssetParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV3AssetGetUserAssetParameters
mkPostSapiV3AssetGetUserAssetParameters postSapiV3AssetGetUserAssetParametersQuerySignature postSapiV3AssetGetUserAssetParametersQueryTimestamp =
  PostSapiV3AssetGetUserAssetParameters
    { postSapiV3AssetGetUserAssetParametersQueryAsset = GHC.Maybe.Nothing,
      postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation = GHC.Maybe.Nothing,
      postSapiV3AssetGetUserAssetParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV3AssetGetUserAssetParametersQuerySignature = postSapiV3AssetGetUserAssetParametersQuerySignature,
      postSapiV3AssetGetUserAssetParametersQueryTimestamp = postSapiV3AssetGetUserAssetParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v3\/asset\/getUserAsset.POST.parameters.properties.queryNeedBtcValuation@ in the specification.
--
-- Represents the parameter named \'needBtcValuation\'
data PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"true"@
    PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumTrue
  | -- | Represents the JSON value @"false"@
    PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumFalse
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation where
  toJSON (PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationOther val) = val
  toJSON (PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumTrue) = "true"
  toJSON (PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumFalse) = "false"

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "true" -> PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumTrue
            | val GHC.Classes.== "false" -> PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationEnumFalse
            | GHC.Base.otherwise -> PostSapiV3AssetGetUserAssetParametersQueryNeedBtcValuationOther val
      )

-- | Represents a response of the operation 'postSapiV3AssetGetUserAsset'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV3AssetGetUserAssetResponseError' is used.
data PostSapiV3AssetGetUserAssetResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV3AssetGetUserAssetResponseError GHC.Base.String
  | -- | User assets
    PostSapiV3AssetGetUserAssetResponse200 ([PostSapiV3AssetGetUserAssetResponseBody200])
  | -- | Bad Request
    PostSapiV3AssetGetUserAssetResponse400 Error
  | -- | Unauthorized Request
    PostSapiV3AssetGetUserAssetResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v3\/asset\/getUserAsset.POST.responses.200.content.application\/json.schema.items@ in the specification.
data PostSapiV3AssetGetUserAssetResponseBody200 = PostSapiV3AssetGetUserAssetResponseBody200
  { -- | asset
    postSapiV3AssetGetUserAssetResponseBody200Asset :: Data.Text.Internal.Text,
    -- | btcValuation
    postSapiV3AssetGetUserAssetResponseBody200BtcValuation :: Data.Text.Internal.Text,
    -- | free
    postSapiV3AssetGetUserAssetResponseBody200Free :: Data.Text.Internal.Text,
    -- | freeze
    postSapiV3AssetGetUserAssetResponseBody200Freeze :: Data.Text.Internal.Text,
    -- | ipoable
    postSapiV3AssetGetUserAssetResponseBody200Ipoable :: Data.Text.Internal.Text,
    -- | locked
    postSapiV3AssetGetUserAssetResponseBody200Locked :: Data.Text.Internal.Text,
    -- | withdrawing
    postSapiV3AssetGetUserAssetResponseBody200Withdrawing :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV3AssetGetUserAssetResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Asset obj] : ["btcValuation" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200BtcValuation obj] : ["free" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Free obj] : ["freeze" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Freeze obj] : ["ipoable" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Ipoable obj] : ["locked" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Locked obj] : ["withdrawing" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Withdrawing obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Asset obj] : ["btcValuation" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200BtcValuation obj] : ["free" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Free obj] : ["freeze" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Freeze obj] : ["ipoable" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Ipoable obj] : ["locked" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Locked obj] : ["withdrawing" Data.Aeson.Types.ToJSON..= postSapiV3AssetGetUserAssetResponseBody200Withdrawing obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV3AssetGetUserAssetResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV3AssetGetUserAssetResponseBody200" (\obj -> ((((((GHC.Base.pure PostSapiV3AssetGetUserAssetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "btcValuation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "free")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "freeze")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipoable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "locked")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "withdrawing"))

-- | Create a new 'PostSapiV3AssetGetUserAssetResponseBody200' with all required fields.
mkPostSapiV3AssetGetUserAssetResponseBody200 ::
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Asset'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200BtcValuation'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Free'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Freeze'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Ipoable'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Locked'
  Data.Text.Internal.Text ->
  -- | 'postSapiV3AssetGetUserAssetResponseBody200Withdrawing'
  Data.Text.Internal.Text ->
  PostSapiV3AssetGetUserAssetResponseBody200
mkPostSapiV3AssetGetUserAssetResponseBody200 postSapiV3AssetGetUserAssetResponseBody200Asset postSapiV3AssetGetUserAssetResponseBody200BtcValuation postSapiV3AssetGetUserAssetResponseBody200Free postSapiV3AssetGetUserAssetResponseBody200Freeze postSapiV3AssetGetUserAssetResponseBody200Ipoable postSapiV3AssetGetUserAssetResponseBody200Locked postSapiV3AssetGetUserAssetResponseBody200Withdrawing =
  PostSapiV3AssetGetUserAssetResponseBody200
    { postSapiV3AssetGetUserAssetResponseBody200Asset = postSapiV3AssetGetUserAssetResponseBody200Asset,
      postSapiV3AssetGetUserAssetResponseBody200BtcValuation = postSapiV3AssetGetUserAssetResponseBody200BtcValuation,
      postSapiV3AssetGetUserAssetResponseBody200Free = postSapiV3AssetGetUserAssetResponseBody200Free,
      postSapiV3AssetGetUserAssetResponseBody200Freeze = postSapiV3AssetGetUserAssetResponseBody200Freeze,
      postSapiV3AssetGetUserAssetResponseBody200Ipoable = postSapiV3AssetGetUserAssetResponseBody200Ipoable,
      postSapiV3AssetGetUserAssetResponseBody200Locked = postSapiV3AssetGetUserAssetResponseBody200Locked,
      postSapiV3AssetGetUserAssetResponseBody200Withdrawing = postSapiV3AssetGetUserAssetResponseBody200Withdrawing
    }

-- | > POST /sapi/v3/asset/getUserAsset
--
-- The same as 'postSapiV3AssetGetUserAsset' but accepts an explicit configuration.
postSapiV3AssetGetUserAssetWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV3AssetGetUserAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV3AssetGetUserAssetResponse)
postSapiV3AssetGetUserAssetWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV3AssetGetUserAssetResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV3AssetGetUserAssetResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([PostSapiV3AssetGetUserAssetResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV3AssetGetUserAssetResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV3AssetGetUserAssetResponse401
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
          (Data.Text.pack "/sapi/v3/asset/getUserAsset")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "needBtcValuation") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v3/asset/getUserAsset
--
-- The same as 'postSapiV3AssetGetUserAsset' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV3AssetGetUserAssetRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV3AssetGetUserAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV3AssetGetUserAssetRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v3/asset/getUserAsset")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "needBtcValuation") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v3/asset/getUserAsset
--
-- The same as 'postSapiV3AssetGetUserAsset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV3AssetGetUserAssetWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV3AssetGetUserAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV3AssetGetUserAssetWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v3/asset/getUserAsset")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "needBtcValuation") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryNeedBtcValuation parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV3AssetGetUserAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV3AssetGetUserAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )