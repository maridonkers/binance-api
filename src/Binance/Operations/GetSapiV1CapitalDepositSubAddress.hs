{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1CapitalDepositSubAddress
module Binance.Operations.GetSapiV1CapitalDepositSubAddress where

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

-- | > GET /sapi/v1/capital/deposit/subAddress
--
-- Fetch sub-account deposit address
--
-- Weight(IP): 1
getSapiV1CapitalDepositSubAddress ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubAddressParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositSubAddressResponse)
getSapiV1CapitalDepositSubAddress parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1CapitalDepositSubAddressResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubAddressResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1CapitalDepositSubAddressResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubAddressResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubAddressResponse401
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
        (Data.Text.pack "/sapi/v1/capital/deposit/subAddress")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryCoin parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "network") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryNetwork parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/subAddress.GET.parameters@ in the specification.
data GetSapiV1CapitalDepositSubAddressParameters = GetSapiV1CapitalDepositSubAddressParameters
  { -- | queryCoin: Represents the parameter named \'coin\'
    --
    -- Coin name
    getSapiV1CapitalDepositSubAddressParametersQueryCoin :: Data.Text.Internal.Text,
    -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV1CapitalDepositSubAddressParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryNetwork: Represents the parameter named \'network\'
    getSapiV1CapitalDepositSubAddressParametersQueryNetwork :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1CapitalDepositSubAddressParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositSubAddressParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositSubAddressParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryCoin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryCoin obj] : ["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNetwork" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubAddressParametersQueryNetwork obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryCoin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryCoin obj] : ["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNetwork" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubAddressParametersQueryNetwork obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositSubAddressParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositSubAddressParameters" (\obj -> (((((GHC.Base.pure GetSapiV1CapitalDepositSubAddressParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryNetwork")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1CapitalDepositSubAddressParameters' with all required fields.
mkGetSapiV1CapitalDepositSubAddressParameters ::
  -- | 'getSapiV1CapitalDepositSubAddressParametersQueryCoin'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1CapitalDepositSubAddressParameters
mkGetSapiV1CapitalDepositSubAddressParameters getSapiV1CapitalDepositSubAddressParametersQueryCoin getSapiV1CapitalDepositSubAddressParametersQueryEmail getSapiV1CapitalDepositSubAddressParametersQuerySignature getSapiV1CapitalDepositSubAddressParametersQueryTimestamp =
  GetSapiV1CapitalDepositSubAddressParameters
    { getSapiV1CapitalDepositSubAddressParametersQueryCoin = getSapiV1CapitalDepositSubAddressParametersQueryCoin,
      getSapiV1CapitalDepositSubAddressParametersQueryEmail = getSapiV1CapitalDepositSubAddressParametersQueryEmail,
      getSapiV1CapitalDepositSubAddressParametersQueryNetwork = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubAddressParametersQuerySignature = getSapiV1CapitalDepositSubAddressParametersQuerySignature,
      getSapiV1CapitalDepositSubAddressParametersQueryTimestamp = getSapiV1CapitalDepositSubAddressParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1CapitalDepositSubAddress'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1CapitalDepositSubAddressResponseError' is used.
data GetSapiV1CapitalDepositSubAddressResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1CapitalDepositSubAddressResponseError GHC.Base.String
  | -- | Deposit address info
    GetSapiV1CapitalDepositSubAddressResponse200 GetSapiV1CapitalDepositSubAddressResponseBody200
  | -- | Bad Request
    GetSapiV1CapitalDepositSubAddressResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1CapitalDepositSubAddressResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/subAddress.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1CapitalDepositSubAddressResponseBody200 = GetSapiV1CapitalDepositSubAddressResponseBody200
  { -- | address
    getSapiV1CapitalDepositSubAddressResponseBody200Address :: Data.Text.Internal.Text,
    -- | coin
    getSapiV1CapitalDepositSubAddressResponseBody200Coin :: Data.Text.Internal.Text,
    -- | tag
    getSapiV1CapitalDepositSubAddressResponseBody200Tag :: Data.Text.Internal.Text,
    -- | url
    getSapiV1CapitalDepositSubAddressResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositSubAddressResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Address obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Coin obj] : ["tag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Tag obj] : ["url" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Url obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Address obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Coin obj] : ["tag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Tag obj] : ["url" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubAddressResponseBody200Url obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositSubAddressResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositSubAddressResponseBody200" (\obj -> (((GHC.Base.pure GetSapiV1CapitalDepositSubAddressResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tag")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetSapiV1CapitalDepositSubAddressResponseBody200' with all required fields.
mkGetSapiV1CapitalDepositSubAddressResponseBody200 ::
  -- | 'getSapiV1CapitalDepositSubAddressResponseBody200Address'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressResponseBody200Coin'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressResponseBody200Tag'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubAddressResponseBody200Url'
  Data.Text.Internal.Text ->
  GetSapiV1CapitalDepositSubAddressResponseBody200
mkGetSapiV1CapitalDepositSubAddressResponseBody200 getSapiV1CapitalDepositSubAddressResponseBody200Address getSapiV1CapitalDepositSubAddressResponseBody200Coin getSapiV1CapitalDepositSubAddressResponseBody200Tag getSapiV1CapitalDepositSubAddressResponseBody200Url =
  GetSapiV1CapitalDepositSubAddressResponseBody200
    { getSapiV1CapitalDepositSubAddressResponseBody200Address = getSapiV1CapitalDepositSubAddressResponseBody200Address,
      getSapiV1CapitalDepositSubAddressResponseBody200Coin = getSapiV1CapitalDepositSubAddressResponseBody200Coin,
      getSapiV1CapitalDepositSubAddressResponseBody200Tag = getSapiV1CapitalDepositSubAddressResponseBody200Tag,
      getSapiV1CapitalDepositSubAddressResponseBody200Url = getSapiV1CapitalDepositSubAddressResponseBody200Url
    }

-- | > GET /sapi/v1/capital/deposit/subAddress
--
-- The same as 'getSapiV1CapitalDepositSubAddress' but accepts an explicit configuration.
getSapiV1CapitalDepositSubAddressWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubAddressParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositSubAddressResponse)
getSapiV1CapitalDepositSubAddressWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1CapitalDepositSubAddressResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubAddressResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1CapitalDepositSubAddressResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubAddressResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubAddressResponse401
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
          (Data.Text.pack "/sapi/v1/capital/deposit/subAddress")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryCoin parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "network") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryNetwork parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/capital/deposit/subAddress
--
-- The same as 'getSapiV1CapitalDepositSubAddress' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositSubAddressRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubAddressParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositSubAddressRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/capital/deposit/subAddress")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryCoin parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "network") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryNetwork parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/capital/deposit/subAddress
--
-- The same as 'getSapiV1CapitalDepositSubAddress' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositSubAddressWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubAddressParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositSubAddressWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/capital/deposit/subAddress")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryCoin parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "network") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryNetwork parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubAddressParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubAddressParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
