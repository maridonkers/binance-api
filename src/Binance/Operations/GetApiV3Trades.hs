{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApiV3Trades
module Binance.Operations.GetApiV3Trades where

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

-- | > GET /api/v3/trades
--
-- Get recent trades.
--
-- Weight(IP): 1
getApiV3Trades ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TradesParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetApiV3TradesResponse)
getApiV3Trades parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3TradesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TradesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([Trade])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TradesResponse400
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
        (Data.Text.pack "/api/v3/trades")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3TradesParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TradesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/api\/v3\/trades.GET.parameters@ in the specification.
data GetApiV3TradesParameters = GetApiV3TradesParameters
  { -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Default 500; max 1000.
    getApiV3TradesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    getApiV3TradesParametersQuerySymbol :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3TradesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getApiV3TradesParametersQueryLimit obj) : ["querySymbol" Data.Aeson.Types.ToJSON..= getApiV3TradesParametersQuerySymbol obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getApiV3TradesParametersQueryLimit obj) : ["querySymbol" Data.Aeson.Types.ToJSON..= getApiV3TradesParametersQuerySymbol obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3TradesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3TradesParameters" (\obj -> (GHC.Base.pure GetApiV3TradesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySymbol"))

-- | Create a new 'GetApiV3TradesParameters' with all required fields.
mkGetApiV3TradesParameters ::
  -- | 'getApiV3TradesParametersQuerySymbol'
  Data.Text.Internal.Text ->
  GetApiV3TradesParameters
mkGetApiV3TradesParameters getApiV3TradesParametersQuerySymbol =
  GetApiV3TradesParameters
    { getApiV3TradesParametersQueryLimit = GHC.Maybe.Nothing,
      getApiV3TradesParametersQuerySymbol = getApiV3TradesParametersQuerySymbol
    }

-- | Represents a response of the operation 'getApiV3Trades'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApiV3TradesResponseError' is used.
data GetApiV3TradesResponse
  = -- | Means either no matching case available or a parse error
    GetApiV3TradesResponseError GHC.Base.String
  | -- | Trade list
    GetApiV3TradesResponse200 ([Trade])
  | -- | Bad Request
    GetApiV3TradesResponse400 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > GET /api/v3/trades
--
-- The same as 'getApiV3Trades' but accepts an explicit configuration.
getApiV3TradesWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TradesParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetApiV3TradesResponse)
getApiV3TradesWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_3 ->
          GHC.Base.fmap
            ( Data.Either.either GetApiV3TradesResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3TradesResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([Trade])
                                                        )
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3TradesResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_3
            )
            response_3
      )
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/api/v3/trades")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3TradesParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TradesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /api/v3/trades
--
-- The same as 'getApiV3Trades' but returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TradesRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TradesParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TradesRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/api/v3/trades")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3TradesParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TradesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /api/v3/trades
--
-- The same as 'getApiV3Trades' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TradesWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TradesParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TradesWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/api/v3/trades")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getApiV3TradesParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TradesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False
          ]
      )