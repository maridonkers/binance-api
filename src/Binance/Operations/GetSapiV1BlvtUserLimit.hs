{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1BlvtUserLimit
module Binance.Operations.GetSapiV1BlvtUserLimit where

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

-- | > GET /sapi/v1/blvt/userLimit
--
-- Weight(IP): 1
getSapiV1BlvtUserLimit ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1BlvtUserLimitParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1BlvtUserLimitResponse)
getSapiV1BlvtUserLimit parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1BlvtUserLimitResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1BlvtUserLimitResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1BlvtUserLimitResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1BlvtUserLimitResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1BlvtUserLimitResponse401
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
        (Data.Text.pack "/sapi/v1/blvt/userLimit")
        [ Binance.Common.QueryParameter (Data.Text.pack "tokenName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryTokenName parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/blvt\/userLimit.GET.parameters@ in the specification.
data GetSapiV1BlvtUserLimitParameters = GetSapiV1BlvtUserLimitParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1BlvtUserLimitParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1BlvtUserLimitParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1BlvtUserLimitParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryTokenName: Represents the parameter named \'tokenName\'
    --
    -- BTCDOWN, BTCUP
    getSapiV1BlvtUserLimitParametersQueryTokenName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1BlvtUserLimitParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1BlvtUserLimitParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTokenName" Data.Aeson.Types.ToJSON..=)) (getSapiV1BlvtUserLimitParametersQueryTokenName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1BlvtUserLimitParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTokenName" Data.Aeson.Types.ToJSON..=)) (getSapiV1BlvtUserLimitParametersQueryTokenName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1BlvtUserLimitParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1BlvtUserLimitParameters" (\obj -> (((GHC.Base.pure GetSapiV1BlvtUserLimitParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryTokenName"))

-- | Create a new 'GetSapiV1BlvtUserLimitParameters' with all required fields.
mkGetSapiV1BlvtUserLimitParameters ::
  -- | 'getSapiV1BlvtUserLimitParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1BlvtUserLimitParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1BlvtUserLimitParameters
mkGetSapiV1BlvtUserLimitParameters getSapiV1BlvtUserLimitParametersQuerySignature getSapiV1BlvtUserLimitParametersQueryTimestamp =
  GetSapiV1BlvtUserLimitParameters
    { getSapiV1BlvtUserLimitParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1BlvtUserLimitParametersQuerySignature = getSapiV1BlvtUserLimitParametersQuerySignature,
      getSapiV1BlvtUserLimitParametersQueryTimestamp = getSapiV1BlvtUserLimitParametersQueryTimestamp,
      getSapiV1BlvtUserLimitParametersQueryTokenName = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getSapiV1BlvtUserLimit'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1BlvtUserLimitResponseError' is used.
data GetSapiV1BlvtUserLimitResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1BlvtUserLimitResponseError GHC.Base.String
  | -- | List of token limits
    GetSapiV1BlvtUserLimitResponse200 ([GetSapiV1BlvtUserLimitResponseBody200])
  | -- | Bad Request
    GetSapiV1BlvtUserLimitResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1BlvtUserLimitResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/blvt\/userLimit.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1BlvtUserLimitResponseBody200 = GetSapiV1BlvtUserLimitResponseBody200
  { -- | tokenName
    getSapiV1BlvtUserLimitResponseBody200TokenName :: Data.Text.Internal.Text,
    -- | userDailyTotalPurchaseLimit: USDT
    getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit :: Data.Text.Internal.Text,
    -- | userDailyTotalRedeemLimit: USDT
    getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1BlvtUserLimitResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tokenName" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200TokenName obj] : ["userDailyTotalPurchaseLimit" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit obj] : ["userDailyTotalRedeemLimit" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tokenName" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200TokenName obj] : ["userDailyTotalPurchaseLimit" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit obj] : ["userDailyTotalRedeemLimit" Data.Aeson.Types.ToJSON..= getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1BlvtUserLimitResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1BlvtUserLimitResponseBody200" (\obj -> ((GHC.Base.pure GetSapiV1BlvtUserLimitResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tokenName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "userDailyTotalPurchaseLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "userDailyTotalRedeemLimit"))

-- | Create a new 'GetSapiV1BlvtUserLimitResponseBody200' with all required fields.
mkGetSapiV1BlvtUserLimitResponseBody200 ::
  -- | 'getSapiV1BlvtUserLimitResponseBody200TokenName'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit'
  Data.Text.Internal.Text ->
  GetSapiV1BlvtUserLimitResponseBody200
mkGetSapiV1BlvtUserLimitResponseBody200 getSapiV1BlvtUserLimitResponseBody200TokenName getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit =
  GetSapiV1BlvtUserLimitResponseBody200
    { getSapiV1BlvtUserLimitResponseBody200TokenName = getSapiV1BlvtUserLimitResponseBody200TokenName,
      getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit = getSapiV1BlvtUserLimitResponseBody200UserDailyTotalPurchaseLimit,
      getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit = getSapiV1BlvtUserLimitResponseBody200UserDailyTotalRedeemLimit
    }

-- | > GET /sapi/v1/blvt/userLimit
--
-- The same as 'getSapiV1BlvtUserLimit' but accepts an explicit configuration.
getSapiV1BlvtUserLimitWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1BlvtUserLimitParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1BlvtUserLimitResponse)
getSapiV1BlvtUserLimitWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1BlvtUserLimitResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1BlvtUserLimitResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1BlvtUserLimitResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1BlvtUserLimitResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1BlvtUserLimitResponse401
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
          (Data.Text.pack "/sapi/v1/blvt/userLimit")
          [ Binance.Common.QueryParameter (Data.Text.pack "tokenName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryTokenName parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/blvt/userLimit
--
-- The same as 'getSapiV1BlvtUserLimit' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1BlvtUserLimitRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1BlvtUserLimitParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1BlvtUserLimitRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/blvt/userLimit")
        [ Binance.Common.QueryParameter (Data.Text.pack "tokenName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryTokenName parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/blvt/userLimit
--
-- The same as 'getSapiV1BlvtUserLimit' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1BlvtUserLimitWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1BlvtUserLimitParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1BlvtUserLimitWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/blvt/userLimit")
          [ Binance.Common.QueryParameter (Data.Text.pack "tokenName") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryTokenName parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1BlvtUserLimitParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1BlvtUserLimitParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
