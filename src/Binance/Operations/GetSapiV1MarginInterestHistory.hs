{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginInterestHistory
module Binance.Operations.GetSapiV1MarginInterestHistory where

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

-- | > GET /sapi/v1/margin/interestHistory
--
-- - Response in descending order
-- - If \`isolatedSymbol\` is not sent, crossed margin data will be returned
-- - Set \`archived\` to \`true\` to query data from 6 months ago
-- - \`type\` in response has 4 enums:
--   - \`PERIODIC\` interest charged per hour
--   - \`ON_BORROW\` first interest charged on borrow
--   - \`PERIODIC_CONVERTED\` interest charged per hour converted into BNB
--   - \`ON_BORROW_CONVERTED\` first interest charged on borrow converted into BNB
--
-- Weight(IP): 1
getSapiV1MarginInterestHistory ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginInterestHistoryResponse)
getSapiV1MarginInterestHistory parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginInterestHistoryResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestHistoryResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1MarginInterestHistoryResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestHistoryResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginInterestHistoryResponse401
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
        (Data.Text.pack "/sapi/v1/margin/interestHistory")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isolatedSymbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "archived") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryArchived parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/interestHistory.GET.parameters@ in the specification.
data GetSapiV1MarginInterestHistoryParameters = GetSapiV1MarginInterestHistoryParameters
  { -- | queryArchived: Represents the parameter named \'archived\'
    --
    -- Default: false. Set to true for archived data from 6 months ago
    getSapiV1MarginInterestHistoryParametersQueryArchived :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryAsset: Represents the parameter named \'asset\'
    getSapiV1MarginInterestHistoryParametersQueryAsset :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryCurrent: Represents the parameter named \'current\'
    --
    -- Current querying page. Start from 1. Default:1
    getSapiV1MarginInterestHistoryParametersQueryCurrent :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestHistoryParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryIsolatedSymbol: Represents the parameter named \'isolatedSymbol\'
    --
    -- Isolated symbol
    getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginInterestHistoryParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginInterestHistoryParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySize: Represents the parameter named \'size\'
    --
    -- Default:10 Max:100
    getSapiV1MarginInterestHistoryParametersQuerySize :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestHistoryParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginInterestHistoryParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginInterestHistoryParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryArchived" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryArchived obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsolatedSymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQuerySize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryArchived" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryArchived obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsolatedSymbol" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQuerySize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginInterestHistoryParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginInterestHistoryParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginInterestHistoryParameters" (\obj -> (((((((((GHC.Base.pure GetSapiV1MarginInterestHistoryParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryArchived")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCurrent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIsolatedSymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1MarginInterestHistoryParameters' with all required fields.
mkGetSapiV1MarginInterestHistoryParameters ::
  -- | 'getSapiV1MarginInterestHistoryParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginInterestHistoryParameters
mkGetSapiV1MarginInterestHistoryParameters getSapiV1MarginInterestHistoryParametersQuerySignature getSapiV1MarginInterestHistoryParametersQueryTimestamp =
  GetSapiV1MarginInterestHistoryParameters
    { getSapiV1MarginInterestHistoryParametersQueryArchived = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryAsset = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryCurrent = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQuerySignature = getSapiV1MarginInterestHistoryParametersQuerySignature,
      getSapiV1MarginInterestHistoryParametersQuerySize = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1MarginInterestHistoryParametersQueryTimestamp = getSapiV1MarginInterestHistoryParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1MarginInterestHistory'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginInterestHistoryResponseError' is used.
data GetSapiV1MarginInterestHistoryResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginInterestHistoryResponseError GHC.Base.String
  | -- | Interest History, response in descending order
    GetSapiV1MarginInterestHistoryResponse200 GetSapiV1MarginInterestHistoryResponseBody200
  | -- | Bad Request
    GetSapiV1MarginInterestHistoryResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginInterestHistoryResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/interestHistory.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1MarginInterestHistoryResponseBody200 = GetSapiV1MarginInterestHistoryResponseBody200
  { -- | rows
    getSapiV1MarginInterestHistoryResponseBody200Rows :: ([GetSapiV1MarginInterestHistoryResponseBody200Rows]),
    -- | total
    getSapiV1MarginInterestHistoryResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginInterestHistoryResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginInterestHistoryResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginInterestHistoryResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1MarginInterestHistoryResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1MarginInterestHistoryResponseBody200' with all required fields.
mkGetSapiV1MarginInterestHistoryResponseBody200 ::
  -- | 'getSapiV1MarginInterestHistoryResponseBody200Rows'
  [GetSapiV1MarginInterestHistoryResponseBody200Rows] ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1MarginInterestHistoryResponseBody200
mkGetSapiV1MarginInterestHistoryResponseBody200 getSapiV1MarginInterestHistoryResponseBody200Rows getSapiV1MarginInterestHistoryResponseBody200Total =
  GetSapiV1MarginInterestHistoryResponseBody200
    { getSapiV1MarginInterestHistoryResponseBody200Rows = getSapiV1MarginInterestHistoryResponseBody200Rows,
      getSapiV1MarginInterestHistoryResponseBody200Total = getSapiV1MarginInterestHistoryResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/interestHistory.GET.responses.200.content.application\/json.schema.properties.rows.items@ in the specification.
data GetSapiV1MarginInterestHistoryResponseBody200Rows = GetSapiV1MarginInterestHistoryResponseBody200Rows
  { -- | asset
    getSapiV1MarginInterestHistoryResponseBody200RowsAsset :: Data.Text.Internal.Text,
    -- | interest
    getSapiV1MarginInterestHistoryResponseBody200RowsInterest :: Data.Text.Internal.Text,
    -- | interestAccuredTime
    getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime :: GHC.Int.Int64,
    -- | interestRate
    getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate :: Data.Text.Internal.Text,
    -- | isolatedSymbol
    getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol :: Data.Text.Internal.Text,
    -- | principal
    getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal :: Data.Text.Internal.Text,
    -- | type
    getSapiV1MarginInterestHistoryResponseBody200RowsType :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginInterestHistoryResponseBody200Rows where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsAsset obj] : ["interest" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterest obj] : ["interestAccuredTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime obj] : ["interestRate" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate obj] : ["isolatedSymbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol obj] : ["principal" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["asset" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsAsset obj] : ["interest" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterest obj] : ["interestAccuredTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime obj] : ["interestRate" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate obj] : ["isolatedSymbol" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol obj] : ["principal" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1MarginInterestHistoryResponseBody200RowsType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginInterestHistoryResponseBody200Rows where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginInterestHistoryResponseBody200Rows" (\obj -> ((((((GHC.Base.pure GetSapiV1MarginInterestHistoryResponseBody200Rows GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interestAccuredTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interestRate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isolatedSymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "principal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'GetSapiV1MarginInterestHistoryResponseBody200Rows' with all required fields.
mkGetSapiV1MarginInterestHistoryResponseBody200Rows ::
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsInterest'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginInterestHistoryResponseBody200RowsType'
  Data.Text.Internal.Text ->
  GetSapiV1MarginInterestHistoryResponseBody200Rows
mkGetSapiV1MarginInterestHistoryResponseBody200Rows getSapiV1MarginInterestHistoryResponseBody200RowsAsset getSapiV1MarginInterestHistoryResponseBody200RowsInterest getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal getSapiV1MarginInterestHistoryResponseBody200RowsType =
  GetSapiV1MarginInterestHistoryResponseBody200Rows
    { getSapiV1MarginInterestHistoryResponseBody200RowsAsset = getSapiV1MarginInterestHistoryResponseBody200RowsAsset,
      getSapiV1MarginInterestHistoryResponseBody200RowsInterest = getSapiV1MarginInterestHistoryResponseBody200RowsInterest,
      getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime = getSapiV1MarginInterestHistoryResponseBody200RowsInterestAccuredTime,
      getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate = getSapiV1MarginInterestHistoryResponseBody200RowsInterestRate,
      getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol = getSapiV1MarginInterestHistoryResponseBody200RowsIsolatedSymbol,
      getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal = getSapiV1MarginInterestHistoryResponseBody200RowsPrincipal,
      getSapiV1MarginInterestHistoryResponseBody200RowsType = getSapiV1MarginInterestHistoryResponseBody200RowsType
    }

-- | > GET /sapi/v1/margin/interestHistory
--
-- The same as 'getSapiV1MarginInterestHistory' but accepts an explicit configuration.
getSapiV1MarginInterestHistoryWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginInterestHistoryResponse)
getSapiV1MarginInterestHistoryWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginInterestHistoryResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestHistoryResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1MarginInterestHistoryResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestHistoryResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginInterestHistoryResponse401
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
          (Data.Text.pack "/sapi/v1/margin/interestHistory")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isolatedSymbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "archived") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryArchived parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/interestHistory
--
-- The same as 'getSapiV1MarginInterestHistory' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginInterestHistoryRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginInterestHistoryRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/interestHistory")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isolatedSymbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "archived") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryArchived parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/interestHistory
--
-- The same as 'getSapiV1MarginInterestHistory' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginInterestHistoryWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginInterestHistoryParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginInterestHistoryWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/interestHistory")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isolatedSymbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryIsolatedSymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "archived") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryArchived parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginInterestHistoryParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginInterestHistoryParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
