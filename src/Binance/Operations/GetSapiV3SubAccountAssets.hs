{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV3SubAccountAssets
module Binance.Operations.GetSapiV3SubAccountAssets where

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

-- | > GET /sapi/v3/sub-account/assets
--
-- Fetch sub-account assets
--
-- Weight(IP): 1
getSapiV3SubAccountAssets ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV3SubAccountAssetsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV3SubAccountAssetsResponse)
getSapiV3SubAccountAssets parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV3SubAccountAssetsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV3SubAccountAssetsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV3SubAccountAssetsResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV3SubAccountAssetsResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV3SubAccountAssetsResponse401
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
        (Data.Text.pack "/sapi/v3/sub-account/assets")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV3SubAccountAssetsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v3\/sub-account\/assets.GET.parameters@ in the specification.
data GetSapiV3SubAccountAssetsParameters = GetSapiV3SubAccountAssetsParameters
  { -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV3SubAccountAssetsParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV3SubAccountAssetsParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV3SubAccountAssetsParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV3SubAccountAssetsParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV3SubAccountAssetsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV3SubAccountAssetsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV3SubAccountAssetsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV3SubAccountAssetsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV3SubAccountAssetsParameters" (\obj -> (((GHC.Base.pure GetSapiV3SubAccountAssetsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV3SubAccountAssetsParameters' with all required fields.
mkGetSapiV3SubAccountAssetsParameters ::
  -- | 'getSapiV3SubAccountAssetsParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV3SubAccountAssetsParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV3SubAccountAssetsParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV3SubAccountAssetsParameters
mkGetSapiV3SubAccountAssetsParameters getSapiV3SubAccountAssetsParametersQueryEmail getSapiV3SubAccountAssetsParametersQuerySignature getSapiV3SubAccountAssetsParametersQueryTimestamp =
  GetSapiV3SubAccountAssetsParameters
    { getSapiV3SubAccountAssetsParametersQueryEmail = getSapiV3SubAccountAssetsParametersQueryEmail,
      getSapiV3SubAccountAssetsParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV3SubAccountAssetsParametersQuerySignature = getSapiV3SubAccountAssetsParametersQuerySignature,
      getSapiV3SubAccountAssetsParametersQueryTimestamp = getSapiV3SubAccountAssetsParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV3SubAccountAssets'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV3SubAccountAssetsResponseError' is used.
data GetSapiV3SubAccountAssetsResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV3SubAccountAssetsResponseError GHC.Base.String
  | -- | List of assets balances
    GetSapiV3SubAccountAssetsResponse200 GetSapiV3SubAccountAssetsResponseBody200
  | -- | Bad Request
    GetSapiV3SubAccountAssetsResponse400 Error
  | -- | Unauthorized Request
    GetSapiV3SubAccountAssetsResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v3\/sub-account\/assets.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV3SubAccountAssetsResponseBody200 = GetSapiV3SubAccountAssetsResponseBody200
  { -- | balances
    getSapiV3SubAccountAssetsResponseBody200Balances :: ([GetSapiV3SubAccountAssetsResponseBody200Balances])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV3SubAccountAssetsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["balances" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200Balances obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["balances" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200Balances obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV3SubAccountAssetsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV3SubAccountAssetsResponseBody200" (\obj -> GHC.Base.pure GetSapiV3SubAccountAssetsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "balances"))

-- | Create a new 'GetSapiV3SubAccountAssetsResponseBody200' with all required fields.
mkGetSapiV3SubAccountAssetsResponseBody200 ::
  -- | 'getSapiV3SubAccountAssetsResponseBody200Balances'
  [GetSapiV3SubAccountAssetsResponseBody200Balances] ->
  GetSapiV3SubAccountAssetsResponseBody200
mkGetSapiV3SubAccountAssetsResponseBody200 getSapiV3SubAccountAssetsResponseBody200Balances = GetSapiV3SubAccountAssetsResponseBody200 {getSapiV3SubAccountAssetsResponseBody200Balances = getSapiV3SubAccountAssetsResponseBody200Balances}

-- | Defines the object schema located at @paths.\/sapi\/v3\/sub-account\/assets.GET.responses.200.content.application\/json.schema.properties.balances.items@ in the specification.
data GetSapiV3SubAccountAssetsResponseBody200Balances = GetSapiV3SubAccountAssetsResponseBody200Balances
  { -- | asset
    getSapiV3SubAccountAssetsResponseBody200BalancesAsset :: Data.Text.Internal.Text,
    -- | free
    getSapiV3SubAccountAssetsResponseBody200BalancesFree :: GHC.Int.Int64,
    -- | locked
    getSapiV3SubAccountAssetsResponseBody200BalancesLocked :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV3SubAccountAssetsResponseBody200Balances where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesAsset obj] : ["free" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesFree obj] : ["locked" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesLocked obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesAsset obj] : ["free" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesFree obj] : ["locked" Data.Aeson.Types.ToJSON..= getSapiV3SubAccountAssetsResponseBody200BalancesLocked obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV3SubAccountAssetsResponseBody200Balances where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV3SubAccountAssetsResponseBody200Balances" (\obj -> ((GHC.Base.pure GetSapiV3SubAccountAssetsResponseBody200Balances GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "free")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "locked"))

-- | Create a new 'GetSapiV3SubAccountAssetsResponseBody200Balances' with all required fields.
mkGetSapiV3SubAccountAssetsResponseBody200Balances ::
  -- | 'getSapiV3SubAccountAssetsResponseBody200BalancesAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV3SubAccountAssetsResponseBody200BalancesFree'
  GHC.Int.Int64 ->
  -- | 'getSapiV3SubAccountAssetsResponseBody200BalancesLocked'
  GHC.Int.Int64 ->
  GetSapiV3SubAccountAssetsResponseBody200Balances
mkGetSapiV3SubAccountAssetsResponseBody200Balances getSapiV3SubAccountAssetsResponseBody200BalancesAsset getSapiV3SubAccountAssetsResponseBody200BalancesFree getSapiV3SubAccountAssetsResponseBody200BalancesLocked =
  GetSapiV3SubAccountAssetsResponseBody200Balances
    { getSapiV3SubAccountAssetsResponseBody200BalancesAsset = getSapiV3SubAccountAssetsResponseBody200BalancesAsset,
      getSapiV3SubAccountAssetsResponseBody200BalancesFree = getSapiV3SubAccountAssetsResponseBody200BalancesFree,
      getSapiV3SubAccountAssetsResponseBody200BalancesLocked = getSapiV3SubAccountAssetsResponseBody200BalancesLocked
    }

-- | > GET /sapi/v3/sub-account/assets
--
-- The same as 'getSapiV3SubAccountAssets' but accepts an explicit configuration.
getSapiV3SubAccountAssetsWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV3SubAccountAssetsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV3SubAccountAssetsResponse)
getSapiV3SubAccountAssetsWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV3SubAccountAssetsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV3SubAccountAssetsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV3SubAccountAssetsResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV3SubAccountAssetsResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV3SubAccountAssetsResponse401
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
          (Data.Text.pack "/sapi/v3/sub-account/assets")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV3SubAccountAssetsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v3/sub-account/assets
--
-- The same as 'getSapiV3SubAccountAssets' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV3SubAccountAssetsRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV3SubAccountAssetsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV3SubAccountAssetsRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v3/sub-account/assets")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV3SubAccountAssetsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v3/sub-account/assets
--
-- The same as 'getSapiV3SubAccountAssets' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV3SubAccountAssetsWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV3SubAccountAssetsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV3SubAccountAssetsWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v3/sub-account/assets")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV3SubAccountAssetsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV3SubAccountAssetsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )