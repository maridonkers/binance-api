{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1LendingUnionRedemptionRecord
module Binance.Operations.GetSapiV1LendingUnionRedemptionRecord where

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

-- | > GET /sapi/v1/lending/union/redemptionRecord
--
-- - The time between startTime and endTime cannot be longer than 30 days.
-- - If startTime and endTime are both not sent, then the last 30 days\' data will be returned.
--
-- Weight(IP): 1
getSapiV1LendingUnionRedemptionRecord ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionRedemptionRecordParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1LendingUnionRedemptionRecordResponse)
getSapiV1LendingUnionRedemptionRecord parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1LendingUnionRedemptionRecordResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionRedemptionRecordResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionRedemptionRecordResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionRedemptionRecordResponse401
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
        (Data.Text.pack "/sapi/v1/lending/union/redemptionRecord")
        [ Binance.Common.QueryParameter (Data.Text.pack "lendingType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/union\/redemptionRecord.GET.parameters@ in the specification.
data GetSapiV1LendingUnionRedemptionRecordParameters = GetSapiV1LendingUnionRedemptionRecordParameters
  { -- | queryAsset: Represents the parameter named \'asset\'
    getSapiV1LendingUnionRedemptionRecordParametersQueryAsset :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryCurrent: Represents the parameter named \'current\'
    --
    -- Current querying page. Start from 1. Default:1
    getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryLendingType: Represents the parameter named \'lendingType\'
    --
    -- * \`DAILY\` - for flexible
    -- * \`ACTIVITY\` - for activity
    -- * \`CUSTOMIZED_FIXED\` for fixed
    getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType :: GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingType,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1LendingUnionRedemptionRecordParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySize: Represents the parameter named \'size\'
    --
    -- Default:10 Max:100
    getSapiV1LendingUnionRedemptionRecordParametersQuerySize :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionRedemptionRecordParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime obj) : ["queryLendingType" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQuerySize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAsset" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryAsset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCurrent" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime obj) : ["queryLendingType" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySize" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQuerySize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionRedemptionRecordParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1LendingUnionRedemptionRecordParameters" (\obj -> ((((((((GHC.Base.pure GetSapiV1LendingUnionRedemptionRecordParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCurrent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryLendingType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1LendingUnionRedemptionRecordParameters' with all required fields.
mkGetSapiV1LendingUnionRedemptionRecordParameters ::
  -- | 'getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType'
  GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingType ->
  -- | 'getSapiV1LendingUnionRedemptionRecordParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1LendingUnionRedemptionRecordParameters
mkGetSapiV1LendingUnionRedemptionRecordParameters getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType getSapiV1LendingUnionRedemptionRecordParametersQuerySignature getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp =
  GetSapiV1LendingUnionRedemptionRecordParameters
    { getSapiV1LendingUnionRedemptionRecordParametersQueryAsset = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType = getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType,
      getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQuerySignature = getSapiV1LendingUnionRedemptionRecordParametersQuerySignature,
      getSapiV1LendingUnionRedemptionRecordParametersQuerySize = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp = getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/lending\/union\/redemptionRecord.GET.parameters.properties.queryLendingType@ in the specification.
--
-- Represents the parameter named \'lendingType\'
--
-- * \`DAILY\` - for flexible
-- * \`ACTIVITY\` - for activity
-- * \`CUSTOMIZED_FIXED\` for fixed
data GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingType
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"DAILY"@
    GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumDAILY
  | -- | Represents the JSON value @"ACTIVITY"@
    GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumACTIVITY
  | -- | Represents the JSON value @"CUSTOMIZED_FIXED"@
    GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumCUSTOMIZEDFIXED
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingType where
  toJSON (GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeOther val) = val
  toJSON (GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumDAILY) = "DAILY"
  toJSON (GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumACTIVITY) = "ACTIVITY"
  toJSON (GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumCUSTOMIZEDFIXED) = "CUSTOMIZED_FIXED"

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingType where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "DAILY" -> GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumDAILY
            | val GHC.Classes.== "ACTIVITY" -> GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumACTIVITY
            | val GHC.Classes.== "CUSTOMIZED_FIXED" -> GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeEnumCUSTOMIZEDFIXED
            | GHC.Base.otherwise -> GetSapiV1LendingUnionRedemptionRecordParametersQueryLendingTypeOther val
      )

-- | Represents a response of the operation 'getSapiV1LendingUnionRedemptionRecord'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1LendingUnionRedemptionRecordResponseError' is used.
data GetSapiV1LendingUnionRedemptionRecordResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1LendingUnionRedemptionRecordResponseError GHC.Base.String
  | -- | History of Flexible or Fixed\/Activity Redemptions
    GetSapiV1LendingUnionRedemptionRecordResponse200 GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants
  | -- | Bad Request
    GetSapiV1LendingUnionRedemptionRecordResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1LendingUnionRedemptionRecordResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the oneOf schema located at @paths.\/sapi\/v1\/lending\/union\/redemptionRecord.GET.responses.200.content.application\/json.schema.oneOf@ in the specification.
data GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants
  = GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant1 SavingsFlexibleRedemptionRecord
  | GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant2 SavingsFixedActivityRedemptionRecord
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants where
  toJSON (GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant2 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants where
  parseJSON val = case (GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSapiV1LendingUnionRedemptionRecordResponseBody200Variant2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | > GET /sapi/v1/lending/union/redemptionRecord
--
-- The same as 'getSapiV1LendingUnionRedemptionRecord' but accepts an explicit configuration.
getSapiV1LendingUnionRedemptionRecordWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionRedemptionRecordParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1LendingUnionRedemptionRecordResponse)
getSapiV1LendingUnionRedemptionRecordWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1LendingUnionRedemptionRecordResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionRedemptionRecordResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1LendingUnionRedemptionRecordResponseBody200Variants
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionRedemptionRecordResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionRedemptionRecordResponse401
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
          (Data.Text.pack "/sapi/v1/lending/union/redemptionRecord")
          [ Binance.Common.QueryParameter (Data.Text.pack "lendingType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/lending/union/redemptionRecord
--
-- The same as 'getSapiV1LendingUnionRedemptionRecord' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1LendingUnionRedemptionRecordRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionRedemptionRecordParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1LendingUnionRedemptionRecordRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/lending/union/redemptionRecord")
        [ Binance.Common.QueryParameter (Data.Text.pack "lendingType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/lending/union/redemptionRecord
--
-- The same as 'getSapiV1LendingUnionRedemptionRecord' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1LendingUnionRedemptionRecordWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionRedemptionRecordParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1LendingUnionRedemptionRecordWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/lending/union/redemptionRecord")
          [ Binance.Common.QueryParameter (Data.Text.pack "lendingType") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryLendingType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "asset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryAsset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "current") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryCurrent parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQuerySize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionRedemptionRecordParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionRedemptionRecordParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )