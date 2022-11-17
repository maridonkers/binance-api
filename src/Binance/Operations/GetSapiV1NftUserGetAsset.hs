{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1NftUserGetAsset
module Binance.Operations.GetSapiV1NftUserGetAsset where

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

-- | > GET /sapi/v1/nft/user/getAsset
--
-- Weight(UID): 3000
getSapiV1NftUserGetAsset ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1NftUserGetAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1NftUserGetAssetResponse)
getSapiV1NftUserGetAsset parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1NftUserGetAssetResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1NftUserGetAssetResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1NftUserGetAssetResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1NftUserGetAssetResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1NftUserGetAssetResponse401
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
        (Data.Text.pack "/sapi/v1/nft/user/getAsset")
        [ Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/nft\/user\/getAsset.GET.parameters@ in the specification.
data GetSapiV1NftUserGetAssetParameters = GetSapiV1NftUserGetAssetParameters
  { -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Default 50, Max 50
    getSapiV1NftUserGetAssetParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- Default 1
    getSapiV1NftUserGetAssetParametersQueryPage :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1NftUserGetAssetParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1NftUserGetAssetParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1NftUserGetAssetParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1NftUserGetAssetParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1NftUserGetAssetParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1NftUserGetAssetParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1NftUserGetAssetParameters" (\obj -> ((((GHC.Base.pure GetSapiV1NftUserGetAssetParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1NftUserGetAssetParameters' with all required fields.
mkGetSapiV1NftUserGetAssetParameters ::
  -- | 'getSapiV1NftUserGetAssetParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1NftUserGetAssetParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1NftUserGetAssetParameters
mkGetSapiV1NftUserGetAssetParameters getSapiV1NftUserGetAssetParametersQuerySignature getSapiV1NftUserGetAssetParametersQueryTimestamp =
  GetSapiV1NftUserGetAssetParameters
    { getSapiV1NftUserGetAssetParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1NftUserGetAssetParametersQueryPage = GHC.Maybe.Nothing,
      getSapiV1NftUserGetAssetParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1NftUserGetAssetParametersQuerySignature = getSapiV1NftUserGetAssetParametersQuerySignature,
      getSapiV1NftUserGetAssetParametersQueryTimestamp = getSapiV1NftUserGetAssetParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1NftUserGetAsset'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1NftUserGetAssetResponseError' is used.
data GetSapiV1NftUserGetAssetResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1NftUserGetAssetResponseError GHC.Base.String
  | -- | Asset Information
    GetSapiV1NftUserGetAssetResponse200 GetSapiV1NftUserGetAssetResponseBody200
  | -- | Bad Request
    GetSapiV1NftUserGetAssetResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1NftUserGetAssetResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/nft\/user\/getAsset.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1NftUserGetAssetResponseBody200 = GetSapiV1NftUserGetAssetResponseBody200
  { -- | list
    getSapiV1NftUserGetAssetResponseBody200List :: ([GetSapiV1NftUserGetAssetResponseBody200List]),
    -- | total
    getSapiV1NftUserGetAssetResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1NftUserGetAssetResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["list" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200List obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["list" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200List obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1NftUserGetAssetResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1NftUserGetAssetResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1NftUserGetAssetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "list")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1NftUserGetAssetResponseBody200' with all required fields.
mkGetSapiV1NftUserGetAssetResponseBody200 ::
  -- | 'getSapiV1NftUserGetAssetResponseBody200List'
  [GetSapiV1NftUserGetAssetResponseBody200List] ->
  -- | 'getSapiV1NftUserGetAssetResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1NftUserGetAssetResponseBody200
mkGetSapiV1NftUserGetAssetResponseBody200 getSapiV1NftUserGetAssetResponseBody200List getSapiV1NftUserGetAssetResponseBody200Total =
  GetSapiV1NftUserGetAssetResponseBody200
    { getSapiV1NftUserGetAssetResponseBody200List = getSapiV1NftUserGetAssetResponseBody200List,
      getSapiV1NftUserGetAssetResponseBody200Total = getSapiV1NftUserGetAssetResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/nft\/user\/getAsset.GET.responses.200.content.application\/json.schema.properties.list.items@ in the specification.
data GetSapiV1NftUserGetAssetResponseBody200List = GetSapiV1NftUserGetAssetResponseBody200List
  { -- | contractAddress
    getSapiV1NftUserGetAssetResponseBody200ListContractAddress :: Data.Text.Internal.Text,
    -- | network
    getSapiV1NftUserGetAssetResponseBody200ListNetwork :: Data.Text.Internal.Text,
    -- | tokenId
    getSapiV1NftUserGetAssetResponseBody200ListTokenId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1NftUserGetAssetResponseBody200List where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["contractAddress" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListContractAddress obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListNetwork obj] : ["tokenId" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListTokenId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["contractAddress" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListContractAddress obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListNetwork obj] : ["tokenId" Data.Aeson.Types.ToJSON..= getSapiV1NftUserGetAssetResponseBody200ListTokenId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1NftUserGetAssetResponseBody200List where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1NftUserGetAssetResponseBody200List" (\obj -> ((GHC.Base.pure GetSapiV1NftUserGetAssetResponseBody200List GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "contractAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tokenId"))

-- | Create a new 'GetSapiV1NftUserGetAssetResponseBody200List' with all required fields.
mkGetSapiV1NftUserGetAssetResponseBody200List ::
  -- | 'getSapiV1NftUserGetAssetResponseBody200ListContractAddress'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1NftUserGetAssetResponseBody200ListNetwork'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1NftUserGetAssetResponseBody200ListTokenId'
  Data.Text.Internal.Text ->
  GetSapiV1NftUserGetAssetResponseBody200List
mkGetSapiV1NftUserGetAssetResponseBody200List getSapiV1NftUserGetAssetResponseBody200ListContractAddress getSapiV1NftUserGetAssetResponseBody200ListNetwork getSapiV1NftUserGetAssetResponseBody200ListTokenId =
  GetSapiV1NftUserGetAssetResponseBody200List
    { getSapiV1NftUserGetAssetResponseBody200ListContractAddress = getSapiV1NftUserGetAssetResponseBody200ListContractAddress,
      getSapiV1NftUserGetAssetResponseBody200ListNetwork = getSapiV1NftUserGetAssetResponseBody200ListNetwork,
      getSapiV1NftUserGetAssetResponseBody200ListTokenId = getSapiV1NftUserGetAssetResponseBody200ListTokenId
    }

-- | > GET /sapi/v1/nft/user/getAsset
--
-- The same as 'getSapiV1NftUserGetAsset' but accepts an explicit configuration.
getSapiV1NftUserGetAssetWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1NftUserGetAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1NftUserGetAssetResponse)
getSapiV1NftUserGetAssetWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1NftUserGetAssetResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1NftUserGetAssetResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1NftUserGetAssetResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1NftUserGetAssetResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1NftUserGetAssetResponse401
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
          (Data.Text.pack "/sapi/v1/nft/user/getAsset")
          [ Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/nft/user/getAsset
--
-- The same as 'getSapiV1NftUserGetAsset' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1NftUserGetAssetRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1NftUserGetAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1NftUserGetAssetRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/nft/user/getAsset")
        [ Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/nft/user/getAsset
--
-- The same as 'getSapiV1NftUserGetAsset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1NftUserGetAssetWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1NftUserGetAssetParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1NftUserGetAssetWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/nft/user/getAsset")
          [ Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1NftUserGetAssetParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1NftUserGetAssetParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
