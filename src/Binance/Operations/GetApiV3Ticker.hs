{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApiV3Ticker
module Binance.Operations.GetApiV3Ticker where

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

-- | > GET /api/v3/ticker
--
-- The window used to compute statistics is typically slightly wider than requested windowSize.
--
-- openTime for \/api\/v3\/ticker always starts on a minute, while the closeTime is the current time of the request. As such, the effective window might be up to 1 minute wider than requested.
--
-- E.g. If the closeTime is 1641287867099 (January 04, 2022 09:17:47:099 UTC) , and the windowSize is 1d. the openTime will be: 1641201420000 (January 3, 2022, 09:17:00 UTC)
--
-- Weight(IP): 2 for each requested symbol regardless of windowSize.
--
-- The weight for this request will cap at 100 once the number of symbols in the request is more than 50.
getApiV3Ticker ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TickerParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetApiV3TickerResponse)
getApiV3Ticker parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApiV3TickerResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TickerResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetApiV3TickerResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApiV3TickerResponse400
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
        (Data.Text.pack "/api/v3/ticker")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbols") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbols parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "windowSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryWindowSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/api\/v3\/ticker.GET.parameters@ in the specification.
data GetApiV3TickerParameters = GetApiV3TickerParameters
  { -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    getApiV3TickerParametersQuerySymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySymbols: Represents the parameter named \'symbols\'
    getApiV3TickerParametersQuerySymbols :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryType: Represents the parameter named \'type\'
    --
    -- Supported values: FULL or MINI.
    -- If none provided, the default is FULL
    getApiV3TickerParametersQueryType :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryWindowSize: Represents the parameter named \'windowSize\'
    --
    -- Defaults to 1d if no parameter provided.
    -- Supported windowSize values:
    -- 1m,2m....59m for minutes
    -- 1h, 2h....23h - for hours
    -- 1d...7d - for days.
    --
    -- Units cannot be combined (e.g. 1d2h is not allowed)
    getApiV3TickerParametersQueryWindowSize :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3TickerParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQuerySymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbols" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQuerySymbols obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQueryType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryWindowSize" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQueryWindowSize obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQuerySymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbols" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQuerySymbols obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQueryType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryWindowSize" Data.Aeson.Types.ToJSON..=)) (getApiV3TickerParametersQueryWindowSize obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3TickerParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3TickerParameters" (\obj -> (((GHC.Base.pure GetApiV3TickerParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySymbols")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryWindowSize"))

-- | Create a new 'GetApiV3TickerParameters' with all required fields.
mkGetApiV3TickerParameters :: GetApiV3TickerParameters
mkGetApiV3TickerParameters =
  GetApiV3TickerParameters
    { getApiV3TickerParametersQuerySymbol = GHC.Maybe.Nothing,
      getApiV3TickerParametersQuerySymbols = GHC.Maybe.Nothing,
      getApiV3TickerParametersQueryType = GHC.Maybe.Nothing,
      getApiV3TickerParametersQueryWindowSize = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getApiV3Ticker'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApiV3TickerResponseError' is used.
data GetApiV3TickerResponse
  = -- | Means either no matching case available or a parse error
    GetApiV3TickerResponseError GHC.Base.String
  | -- | Rolling price ticker
    GetApiV3TickerResponse200 GetApiV3TickerResponseBody200
  | -- | Bad Request
    GetApiV3TickerResponse400 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/api\/v3\/ticker.GET.responses.200.content.application\/json.schema@ in the specification.
data GetApiV3TickerResponseBody200 = GetApiV3TickerResponseBody200
  { -- | closeTime
    getApiV3TickerResponseBody200CloseTime :: GHC.Int.Int64,
    -- | count
    getApiV3TickerResponseBody200Count :: GHC.Int.Int64,
    -- | firstId
    getApiV3TickerResponseBody200FirstId :: GHC.Int.Int64,
    -- | highPrice
    getApiV3TickerResponseBody200HighPrice :: Data.Text.Internal.Text,
    -- | lastId
    getApiV3TickerResponseBody200LastId :: GHC.Int.Int64,
    -- | lastPrice
    getApiV3TickerResponseBody200LastPrice :: Data.Text.Internal.Text,
    -- | lowPrice
    getApiV3TickerResponseBody200LowPrice :: Data.Text.Internal.Text,
    -- | openPrice
    getApiV3TickerResponseBody200OpenPrice :: Data.Text.Internal.Text,
    -- | openTime
    getApiV3TickerResponseBody200OpenTime :: GHC.Int.Int64,
    -- | priceChange
    getApiV3TickerResponseBody200PriceChange :: Data.Text.Internal.Text,
    -- | priceChangePercent
    getApiV3TickerResponseBody200PriceChangePercent :: Data.Text.Internal.Text,
    -- | quoteVolume
    getApiV3TickerResponseBody200QuoteVolume :: Data.Text.Internal.Text,
    -- | symbol
    getApiV3TickerResponseBody200Symbol :: Data.Text.Internal.Text,
    -- | volume
    getApiV3TickerResponseBody200Volume :: Data.Text.Internal.Text,
    -- | weightedAvgPrice
    getApiV3TickerResponseBody200WeightedAvgPrice :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApiV3TickerResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["closeTime" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200CloseTime obj] : ["count" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Count obj] : ["firstId" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200FirstId obj] : ["highPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200HighPrice obj] : ["lastId" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LastId obj] : ["lastPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LastPrice obj] : ["lowPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LowPrice obj] : ["openPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200OpenPrice obj] : ["openTime" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200OpenTime obj] : ["priceChange" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200PriceChange obj] : ["priceChangePercent" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200PriceChangePercent obj] : ["quoteVolume" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200QuoteVolume obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Symbol obj] : ["volume" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Volume obj] : ["weightedAvgPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200WeightedAvgPrice obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["closeTime" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200CloseTime obj] : ["count" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Count obj] : ["firstId" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200FirstId obj] : ["highPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200HighPrice obj] : ["lastId" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LastId obj] : ["lastPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LastPrice obj] : ["lowPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200LowPrice obj] : ["openPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200OpenPrice obj] : ["openTime" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200OpenTime obj] : ["priceChange" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200PriceChange obj] : ["priceChangePercent" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200PriceChangePercent obj] : ["quoteVolume" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200QuoteVolume obj] : ["symbol" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Symbol obj] : ["volume" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200Volume obj] : ["weightedAvgPrice" Data.Aeson.Types.ToJSON..= getApiV3TickerResponseBody200WeightedAvgPrice obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetApiV3TickerResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApiV3TickerResponseBody200" (\obj -> ((((((((((((((GHC.Base.pure GetApiV3TickerResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "closeTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "firstId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "highPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "lastId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "lastPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "lowPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "openPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "openTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "priceChange")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "priceChangePercent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quoteVolume")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "volume")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weightedAvgPrice"))

-- | Create a new 'GetApiV3TickerResponseBody200' with all required fields.
mkGetApiV3TickerResponseBody200 ::
  -- | 'getApiV3TickerResponseBody200CloseTime'
  GHC.Int.Int64 ->
  -- | 'getApiV3TickerResponseBody200Count'
  GHC.Int.Int64 ->
  -- | 'getApiV3TickerResponseBody200FirstId'
  GHC.Int.Int64 ->
  -- | 'getApiV3TickerResponseBody200HighPrice'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200LastId'
  GHC.Int.Int64 ->
  -- | 'getApiV3TickerResponseBody200LastPrice'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200LowPrice'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200OpenPrice'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200OpenTime'
  GHC.Int.Int64 ->
  -- | 'getApiV3TickerResponseBody200PriceChange'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200PriceChangePercent'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200QuoteVolume'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200Symbol'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200Volume'
  Data.Text.Internal.Text ->
  -- | 'getApiV3TickerResponseBody200WeightedAvgPrice'
  Data.Text.Internal.Text ->
  GetApiV3TickerResponseBody200
mkGetApiV3TickerResponseBody200 getApiV3TickerResponseBody200CloseTime getApiV3TickerResponseBody200Count getApiV3TickerResponseBody200FirstId getApiV3TickerResponseBody200HighPrice getApiV3TickerResponseBody200LastId getApiV3TickerResponseBody200LastPrice getApiV3TickerResponseBody200LowPrice getApiV3TickerResponseBody200OpenPrice getApiV3TickerResponseBody200OpenTime getApiV3TickerResponseBody200PriceChange getApiV3TickerResponseBody200PriceChangePercent getApiV3TickerResponseBody200QuoteVolume getApiV3TickerResponseBody200Symbol getApiV3TickerResponseBody200Volume getApiV3TickerResponseBody200WeightedAvgPrice =
  GetApiV3TickerResponseBody200
    { getApiV3TickerResponseBody200CloseTime = getApiV3TickerResponseBody200CloseTime,
      getApiV3TickerResponseBody200Count = getApiV3TickerResponseBody200Count,
      getApiV3TickerResponseBody200FirstId = getApiV3TickerResponseBody200FirstId,
      getApiV3TickerResponseBody200HighPrice = getApiV3TickerResponseBody200HighPrice,
      getApiV3TickerResponseBody200LastId = getApiV3TickerResponseBody200LastId,
      getApiV3TickerResponseBody200LastPrice = getApiV3TickerResponseBody200LastPrice,
      getApiV3TickerResponseBody200LowPrice = getApiV3TickerResponseBody200LowPrice,
      getApiV3TickerResponseBody200OpenPrice = getApiV3TickerResponseBody200OpenPrice,
      getApiV3TickerResponseBody200OpenTime = getApiV3TickerResponseBody200OpenTime,
      getApiV3TickerResponseBody200PriceChange = getApiV3TickerResponseBody200PriceChange,
      getApiV3TickerResponseBody200PriceChangePercent = getApiV3TickerResponseBody200PriceChangePercent,
      getApiV3TickerResponseBody200QuoteVolume = getApiV3TickerResponseBody200QuoteVolume,
      getApiV3TickerResponseBody200Symbol = getApiV3TickerResponseBody200Symbol,
      getApiV3TickerResponseBody200Volume = getApiV3TickerResponseBody200Volume,
      getApiV3TickerResponseBody200WeightedAvgPrice = getApiV3TickerResponseBody200WeightedAvgPrice
    }

-- | > GET /api/v3/ticker
--
-- The same as 'getApiV3Ticker' but accepts an explicit configuration.
getApiV3TickerWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TickerParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetApiV3TickerResponse)
getApiV3TickerWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_3 ->
          GHC.Base.fmap
            ( Data.Either.either GetApiV3TickerResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3TickerResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetApiV3TickerResponseBody200
                                                        )
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetApiV3TickerResponse400
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
          (Data.Text.pack "/api/v3/ticker")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbols") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbols parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "windowSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryWindowSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /api/v3/ticker
--
-- The same as 'getApiV3Ticker' but returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TickerRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TickerParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TickerRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/api/v3/ticker")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbols") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbols parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "windowSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryWindowSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /api/v3/ticker
--
-- The same as 'getApiV3Ticker' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getApiV3TickerWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApiV3TickerParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getApiV3TickerWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/api/v3/ticker")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbols") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQuerySymbols parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "windowSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryWindowSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApiV3TickerParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.False
          ]
      )
