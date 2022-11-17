{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1FuturesTransfer
module Binance.Operations.GetSapiV1FuturesTransfer where

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

-- | > GET /sapi/v1/futures/transfer
--
-- Weight(IP): 10
getSapiV1FuturesTransfer ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1FuturesTransferResponse)
getSapiV1FuturesTransfer parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1FuturesTransferResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FuturesTransferResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1FuturesTransferResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FuturesTransferResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1FuturesTransferResponse401
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
        (Data.Text.pack "/sapi/v1/futures/transfer")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryStartTime parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/futures\/transfer.GET.parameters@ in the specification.
data GetSapiV1FuturesTransferParameters = GetSapiV1FuturesTransferParameters
  { -- | queryAsset: Represents the parameter named \'asset\'
    getSapiV1FuturesTransferParametersQueryAsset :: Data.Text.Internal.Text,
    -- | queryCurrent: Represents the parameter named \'current\'
    --
    -- Current querying page. Start from 1. Default:1
    getSapiV1FuturesTransferParametersQueryCurrent :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1FuturesTransferParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1FuturesTransferParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1FuturesTransferParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySize: Represents the parameter named \'size\'
    --
    -- Default:10 Max:100
    getSapiV1FuturesTransferParametersQuerySize :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1FuturesTransferParametersQueryStartTime :: GHC.Int.Int64,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1FuturesTransferParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FuturesTransferParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAsset" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQuerySize obj) : ["queryStartTime" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryStartTime obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAsset" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1FuturesTransferParametersQuerySize obj) : ["queryStartTime" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryStartTime obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FuturesTransferParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FuturesTransferParameters" (\obj -> (((((((GHC.Base.pure GetSapiV1FuturesTransferParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCurrent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1FuturesTransferParameters' with all required fields.
mkGetSapiV1FuturesTransferParameters ::
  -- | 'getSapiV1FuturesTransferParametersQueryAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FuturesTransferParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FuturesTransferParametersQueryStartTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1FuturesTransferParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1FuturesTransferParameters
mkGetSapiV1FuturesTransferParameters getSapiV1FuturesTransferParametersQueryAsset getSapiV1FuturesTransferParametersQuerySignature getSapiV1FuturesTransferParametersQueryStartTime getSapiV1FuturesTransferParametersQueryTimestamp =
  GetSapiV1FuturesTransferParameters
    { getSapiV1FuturesTransferParametersQueryAsset = getSapiV1FuturesTransferParametersQueryAsset,
      getSapiV1FuturesTransferParametersQueryCurrent = GHC.Maybe.Nothing,
      getSapiV1FuturesTransferParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1FuturesTransferParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1FuturesTransferParametersQuerySignature = getSapiV1FuturesTransferParametersQuerySignature,
      getSapiV1FuturesTransferParametersQuerySize = GHC.Maybe.Nothing,
      getSapiV1FuturesTransferParametersQueryStartTime = getSapiV1FuturesTransferParametersQueryStartTime,
      getSapiV1FuturesTransferParametersQueryTimestamp = getSapiV1FuturesTransferParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1FuturesTransfer'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1FuturesTransferResponseError' is used.
data GetSapiV1FuturesTransferResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1FuturesTransferResponseError GHC.Base.String
  | -- | Futures Transfer Query
    GetSapiV1FuturesTransferResponse200 GetSapiV1FuturesTransferResponseBody200
  | -- | Bad Request
    GetSapiV1FuturesTransferResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1FuturesTransferResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/futures\/transfer.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1FuturesTransferResponseBody200 = GetSapiV1FuturesTransferResponseBody200
  { -- | rows
    getSapiV1FuturesTransferResponseBody200Rows :: ([GetSapiV1FuturesTransferResponseBody200Rows]),
    -- | total
    getSapiV1FuturesTransferResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FuturesTransferResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FuturesTransferResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FuturesTransferResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1FuturesTransferResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1FuturesTransferResponseBody200' with all required fields.
mkGetSapiV1FuturesTransferResponseBody200 ::
  -- | 'getSapiV1FuturesTransferResponseBody200Rows'
  [GetSapiV1FuturesTransferResponseBody200Rows] ->
  -- | 'getSapiV1FuturesTransferResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1FuturesTransferResponseBody200
mkGetSapiV1FuturesTransferResponseBody200 getSapiV1FuturesTransferResponseBody200Rows getSapiV1FuturesTransferResponseBody200Total =
  GetSapiV1FuturesTransferResponseBody200
    { getSapiV1FuturesTransferResponseBody200Rows = getSapiV1FuturesTransferResponseBody200Rows,
      getSapiV1FuturesTransferResponseBody200Total = getSapiV1FuturesTransferResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/futures\/transfer.GET.responses.200.content.application\/json.schema.properties.rows.items@ in the specification.
data GetSapiV1FuturesTransferResponseBody200Rows = GetSapiV1FuturesTransferResponseBody200Rows
  { -- | amount
    getSapiV1FuturesTransferResponseBody200RowsAmount :: Data.Text.Internal.Text,
    -- | asset
    getSapiV1FuturesTransferResponseBody200RowsAsset :: Data.Text.Internal.Text,
    -- | status: one of PENDING (pending to execution), CONFIRMED (successfully transfered), FAILED (execution failed, nothing happened to your account);
    getSapiV1FuturesTransferResponseBody200RowsStatus :: Data.Text.Internal.Text,
    -- | timestamp
    getSapiV1FuturesTransferResponseBody200RowsTimestamp :: GHC.Int.Int64,
    -- | tranId
    getSapiV1FuturesTransferResponseBody200RowsTranId :: GHC.Int.Int64,
    -- | type
    getSapiV1FuturesTransferResponseBody200RowsType :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1FuturesTransferResponseBody200Rows where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsAsset obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsStatus obj] : ["timestamp" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsTimestamp obj] : ["tranId" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsTranId obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsAsset obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsStatus obj] : ["timestamp" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsTimestamp obj] : ["tranId" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsTranId obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1FuturesTransferResponseBody200RowsType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1FuturesTransferResponseBody200Rows where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1FuturesTransferResponseBody200Rows" (\obj -> (((((GHC.Base.pure GetSapiV1FuturesTransferResponseBody200Rows GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tranId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'GetSapiV1FuturesTransferResponseBody200Rows' with all required fields.
mkGetSapiV1FuturesTransferResponseBody200Rows ::
  -- | 'getSapiV1FuturesTransferResponseBody200RowsAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FuturesTransferResponseBody200RowsAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FuturesTransferResponseBody200RowsStatus'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1FuturesTransferResponseBody200RowsTimestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1FuturesTransferResponseBody200RowsTranId'
  GHC.Int.Int64 ->
  -- | 'getSapiV1FuturesTransferResponseBody200RowsType'
  Data.Text.Internal.Text ->
  GetSapiV1FuturesTransferResponseBody200Rows
mkGetSapiV1FuturesTransferResponseBody200Rows getSapiV1FuturesTransferResponseBody200RowsAmount getSapiV1FuturesTransferResponseBody200RowsAsset getSapiV1FuturesTransferResponseBody200RowsStatus getSapiV1FuturesTransferResponseBody200RowsTimestamp getSapiV1FuturesTransferResponseBody200RowsTranId getSapiV1FuturesTransferResponseBody200RowsType =
  GetSapiV1FuturesTransferResponseBody200Rows
    { getSapiV1FuturesTransferResponseBody200RowsAmount = getSapiV1FuturesTransferResponseBody200RowsAmount,
      getSapiV1FuturesTransferResponseBody200RowsAsset = getSapiV1FuturesTransferResponseBody200RowsAsset,
      getSapiV1FuturesTransferResponseBody200RowsStatus = getSapiV1FuturesTransferResponseBody200RowsStatus,
      getSapiV1FuturesTransferResponseBody200RowsTimestamp = getSapiV1FuturesTransferResponseBody200RowsTimestamp,
      getSapiV1FuturesTransferResponseBody200RowsTranId = getSapiV1FuturesTransferResponseBody200RowsTranId,
      getSapiV1FuturesTransferResponseBody200RowsType = getSapiV1FuturesTransferResponseBody200RowsType
    }

-- | > GET /sapi/v1/futures/transfer
--
-- The same as 'getSapiV1FuturesTransfer' but accepts an explicit configuration.
getSapiV1FuturesTransferWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1FuturesTransferResponse)
getSapiV1FuturesTransferWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1FuturesTransferResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FuturesTransferResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1FuturesTransferResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FuturesTransferResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1FuturesTransferResponse401
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
          (Data.Text.pack "/sapi/v1/futures/transfer")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryStartTime parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/futures/transfer
--
-- The same as 'getSapiV1FuturesTransfer' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1FuturesTransferRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1FuturesTransferRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/futures/transfer")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryStartTime parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/futures/transfer
--
-- The same as 'getSapiV1FuturesTransfer' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1FuturesTransferWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1FuturesTransferWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/futures/transfer")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryStartTime parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
