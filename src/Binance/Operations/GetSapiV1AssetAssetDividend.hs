{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1AssetAssetDividend
module Binance.Operations.GetSapiV1AssetAssetDividend where

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

-- | > GET /sapi/v1/asset/assetDividend
--
-- Query asset Dividend Record
--
-- Weight(IP): 10
getSapiV1AssetAssetDividend ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AssetAssetDividendParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1AssetAssetDividendResponse)
getSapiV1AssetAssetDividend parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1AssetAssetDividendResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AssetAssetDividendResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1AssetAssetDividendResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AssetAssetDividendResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AssetAssetDividendResponse401
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
        (Data.Text.pack "/sapi/v1/asset/assetDividend")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/asset\/assetDividend.GET.parameters@ in the specification.
data GetSapiV1AssetAssetDividendParameters = GetSapiV1AssetAssetDividendParameters
  { -- | queryAsset: Represents the parameter named \'asset\'
    getSapiV1AssetAssetDividendParametersQueryAsset :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1AssetAssetDividendParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Constraints:
    --
    -- * Maxium  of 500.0
    getSapiV1AssetAssetDividendParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1AssetAssetDividendParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1AssetAssetDividendParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1AssetAssetDividendParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1AssetAssetDividendParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AssetAssetDividendParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AssetAssetDividendParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AssetAssetDividendParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AssetAssetDividendParameters" (\obj -> ((((((GHC.Base.pure GetSapiV1AssetAssetDividendParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1AssetAssetDividendParameters' with all required fields.
mkGetSapiV1AssetAssetDividendParameters ::
  -- | 'getSapiV1AssetAssetDividendParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AssetAssetDividendParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1AssetAssetDividendParameters
mkGetSapiV1AssetAssetDividendParameters getSapiV1AssetAssetDividendParametersQuerySignature getSapiV1AssetAssetDividendParametersQueryTimestamp =
  GetSapiV1AssetAssetDividendParameters
    { getSapiV1AssetAssetDividendParametersQueryAsset = GHC.Maybe.Nothing,
      getSapiV1AssetAssetDividendParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1AssetAssetDividendParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1AssetAssetDividendParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1AssetAssetDividendParametersQuerySignature = getSapiV1AssetAssetDividendParametersQuerySignature,
      getSapiV1AssetAssetDividendParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1AssetAssetDividendParametersQueryTimestamp = getSapiV1AssetAssetDividendParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1AssetAssetDividend'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1AssetAssetDividendResponseError' is used.
data GetSapiV1AssetAssetDividendResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1AssetAssetDividendResponseError GHC.Base.String
  | -- | Records of asset devidend
    GetSapiV1AssetAssetDividendResponse200 GetSapiV1AssetAssetDividendResponseBody200
  | -- | Bad Request
    GetSapiV1AssetAssetDividendResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1AssetAssetDividendResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/asset\/assetDividend.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1AssetAssetDividendResponseBody200 = GetSapiV1AssetAssetDividendResponseBody200
  { -- | rows
    getSapiV1AssetAssetDividendResponseBody200Rows :: ([GetSapiV1AssetAssetDividendResponseBody200Rows]),
    -- | total
    getSapiV1AssetAssetDividendResponseBody200Total :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AssetAssetDividendResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200Total obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["rows" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200Rows obj] : ["total" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200Total obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AssetAssetDividendResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AssetAssetDividendResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1AssetAssetDividendResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total"))

-- | Create a new 'GetSapiV1AssetAssetDividendResponseBody200' with all required fields.
mkGetSapiV1AssetAssetDividendResponseBody200 ::
  -- | 'getSapiV1AssetAssetDividendResponseBody200Rows'
  [GetSapiV1AssetAssetDividendResponseBody200Rows] ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200Total'
  GHC.Int.Int32 ->
  GetSapiV1AssetAssetDividendResponseBody200
mkGetSapiV1AssetAssetDividendResponseBody200 getSapiV1AssetAssetDividendResponseBody200Rows getSapiV1AssetAssetDividendResponseBody200Total =
  GetSapiV1AssetAssetDividendResponseBody200
    { getSapiV1AssetAssetDividendResponseBody200Rows = getSapiV1AssetAssetDividendResponseBody200Rows,
      getSapiV1AssetAssetDividendResponseBody200Total = getSapiV1AssetAssetDividendResponseBody200Total
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/asset\/assetDividend.GET.responses.200.content.application\/json.schema.properties.rows.items@ in the specification.
data GetSapiV1AssetAssetDividendResponseBody200Rows = GetSapiV1AssetAssetDividendResponseBody200Rows
  { -- | amount
    getSapiV1AssetAssetDividendResponseBody200RowsAmount :: Data.Text.Internal.Text,
    -- | asset
    getSapiV1AssetAssetDividendResponseBody200RowsAsset :: Data.Text.Internal.Text,
    -- | divTime
    getSapiV1AssetAssetDividendResponseBody200RowsDivTime :: GHC.Int.Int64,
    -- | enInfo
    getSapiV1AssetAssetDividendResponseBody200RowsEnInfo :: Data.Text.Internal.Text,
    -- | id
    getSapiV1AssetAssetDividendResponseBody200RowsId :: GHC.Int.Int64,
    -- | tranId
    getSapiV1AssetAssetDividendResponseBody200RowsTranId :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AssetAssetDividendResponseBody200Rows where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsAsset obj] : ["divTime" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsDivTime obj] : ["enInfo" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsEnInfo obj] : ["id" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsId obj] : ["tranId" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsTranId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsAmount obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsAsset obj] : ["divTime" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsDivTime obj] : ["enInfo" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsEnInfo obj] : ["id" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsId obj] : ["tranId" Data.Aeson.Types.ToJSON..= getSapiV1AssetAssetDividendResponseBody200RowsTranId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AssetAssetDividendResponseBody200Rows where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AssetAssetDividendResponseBody200Rows" (\obj -> (((((GHC.Base.pure GetSapiV1AssetAssetDividendResponseBody200Rows GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "divTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enInfo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tranId"))

-- | Create a new 'GetSapiV1AssetAssetDividendResponseBody200Rows' with all required fields.
mkGetSapiV1AssetAssetDividendResponseBody200Rows ::
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsDivTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsEnInfo'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsId'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AssetAssetDividendResponseBody200RowsTranId'
  GHC.Int.Int64 ->
  GetSapiV1AssetAssetDividendResponseBody200Rows
mkGetSapiV1AssetAssetDividendResponseBody200Rows getSapiV1AssetAssetDividendResponseBody200RowsAmount getSapiV1AssetAssetDividendResponseBody200RowsAsset getSapiV1AssetAssetDividendResponseBody200RowsDivTime getSapiV1AssetAssetDividendResponseBody200RowsEnInfo getSapiV1AssetAssetDividendResponseBody200RowsId getSapiV1AssetAssetDividendResponseBody200RowsTranId =
  GetSapiV1AssetAssetDividendResponseBody200Rows
    { getSapiV1AssetAssetDividendResponseBody200RowsAmount = getSapiV1AssetAssetDividendResponseBody200RowsAmount,
      getSapiV1AssetAssetDividendResponseBody200RowsAsset = getSapiV1AssetAssetDividendResponseBody200RowsAsset,
      getSapiV1AssetAssetDividendResponseBody200RowsDivTime = getSapiV1AssetAssetDividendResponseBody200RowsDivTime,
      getSapiV1AssetAssetDividendResponseBody200RowsEnInfo = getSapiV1AssetAssetDividendResponseBody200RowsEnInfo,
      getSapiV1AssetAssetDividendResponseBody200RowsId = getSapiV1AssetAssetDividendResponseBody200RowsId,
      getSapiV1AssetAssetDividendResponseBody200RowsTranId = getSapiV1AssetAssetDividendResponseBody200RowsTranId
    }

-- | > GET /sapi/v1/asset/assetDividend
--
-- The same as 'getSapiV1AssetAssetDividend' but accepts an explicit configuration.
getSapiV1AssetAssetDividendWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AssetAssetDividendParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1AssetAssetDividendResponse)
getSapiV1AssetAssetDividendWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1AssetAssetDividendResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AssetAssetDividendResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1AssetAssetDividendResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AssetAssetDividendResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AssetAssetDividendResponse401
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
          (Data.Text.pack "/sapi/v1/asset/assetDividend")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/asset/assetDividend
--
-- The same as 'getSapiV1AssetAssetDividend' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AssetAssetDividendRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AssetAssetDividendParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AssetAssetDividendRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/asset/assetDividend")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/asset/assetDividend
--
-- The same as 'getSapiV1AssetAssetDividend' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AssetAssetDividendWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AssetAssetDividendParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AssetAssetDividendWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/asset/assetDividend")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AssetAssetDividendParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AssetAssetDividendParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )