{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginPriceIndex
module Binance.Operations.GetSapiV1MarginPriceIndex where

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

-- | > GET /sapi/v1/margin/priceIndex
--
-- Weight(IP): 10
getSapiV1MarginPriceIndex ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | symbol: Trading symbol, e.g. BNBUSDT
  Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginPriceIndexResponse)
getSapiV1MarginPriceIndex symbol =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginPriceIndexResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginPriceIndexResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1MarginPriceIndexResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginPriceIndexResponse400
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
    (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/margin/priceIndex") [Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON symbol) (Data.Text.pack "form") GHC.Types.False])

-- | Represents a response of the operation 'getSapiV1MarginPriceIndex'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginPriceIndexResponseError' is used.
data GetSapiV1MarginPriceIndexResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginPriceIndexResponseError GHC.Base.String
  | -- | Price index
    GetSapiV1MarginPriceIndexResponse200 GetSapiV1MarginPriceIndexResponseBody200
  | -- | Bad Request
    GetSapiV1MarginPriceIndexResponse400 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/priceIndex.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1MarginPriceIndexResponseBody200 = GetSapiV1MarginPriceIndexResponseBody200
  { -- | calcTime
    getSapiV1MarginPriceIndexResponseBody200CalcTime :: GHC.Int.Int64,
    -- | price
    getSapiV1MarginPriceIndexResponseBody200Price :: Data.Text.Internal.Text,
    -- | symbol
    getSapiV1MarginPriceIndexResponseBody200Symbol :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginPriceIndexResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["calcTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200CalcTime obj] : ["price" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200Price obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200Symbol obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["calcTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200CalcTime obj] : ["price" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200Price obj] : ["symbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginPriceIndexResponseBody200Symbol obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginPriceIndexResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginPriceIndexResponseBody200" (\obj -> ((GHC.Base.pure GetSapiV1MarginPriceIndexResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "calcTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol"))

-- | Create a new 'GetSapiV1MarginPriceIndexResponseBody200' with all required fields.
mkGetSapiV1MarginPriceIndexResponseBody200 ::
  -- | 'getSapiV1MarginPriceIndexResponseBody200CalcTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginPriceIndexResponseBody200Price'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginPriceIndexResponseBody200Symbol'
  Data.Text.Internal.Text ->
  GetSapiV1MarginPriceIndexResponseBody200
mkGetSapiV1MarginPriceIndexResponseBody200 getSapiV1MarginPriceIndexResponseBody200CalcTime getSapiV1MarginPriceIndexResponseBody200Price getSapiV1MarginPriceIndexResponseBody200Symbol =
  GetSapiV1MarginPriceIndexResponseBody200
    { getSapiV1MarginPriceIndexResponseBody200CalcTime = getSapiV1MarginPriceIndexResponseBody200CalcTime,
      getSapiV1MarginPriceIndexResponseBody200Price = getSapiV1MarginPriceIndexResponseBody200Price,
      getSapiV1MarginPriceIndexResponseBody200Symbol = getSapiV1MarginPriceIndexResponseBody200Symbol
    }

-- | > GET /sapi/v1/margin/priceIndex
--
-- The same as 'getSapiV1MarginPriceIndex' but accepts an explicit configuration.
getSapiV1MarginPriceIndexWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | symbol: Trading symbol, e.g. BNBUSDT
  Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginPriceIndexResponse)
getSapiV1MarginPriceIndexWithConfiguration
  config
  symbol =
    GHC.Base.fmap
      ( \response_3 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginPriceIndexResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginPriceIndexResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1MarginPriceIndexResponseBody200
                                                        )
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginPriceIndexResponse400
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
      (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/margin/priceIndex") [Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON symbol) (Data.Text.pack "form") GHC.Types.False])

-- | > GET /sapi/v1/margin/priceIndex
--
-- The same as 'getSapiV1MarginPriceIndex' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginPriceIndexRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | symbol: Trading symbol, e.g. BNBUSDT
  Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginPriceIndexRaw symbol = GHC.Base.id (Binance.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/margin/priceIndex") [Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON symbol) (Data.Text.pack "form") GHC.Types.False])

-- | > GET /sapi/v1/margin/priceIndex
--
-- The same as 'getSapiV1MarginPriceIndex' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginPriceIndexWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | symbol: Trading symbol, e.g. BNBUSDT
  Data.Text.Internal.Text ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginPriceIndexWithConfigurationRaw
  config
  symbol = GHC.Base.id (Binance.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/sapi/v1/margin/priceIndex") [Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON symbol) (Data.Text.pack "form") GHC.Types.False])