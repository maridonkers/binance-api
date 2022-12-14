{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1AccountSnapshot
module Binance.Operations.GetSapiV1AccountSnapshot where

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

-- | > GET /sapi/v1/accountSnapshot
--
-- - The query time period must be less than 30 days
-- - Support query within the last one month only
-- - If startTimeand endTime not sent, return records of the last 7 days by default
--
-- Weight(IP): 2400
getSapiV1AccountSnapshot ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountSnapshotParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1AccountSnapshotResponse)
getSapiV1AccountSnapshot parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1AccountSnapshotResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountSnapshotResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1AccountSnapshotResponseBody200Variants
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountSnapshotResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountSnapshotResponse401
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
        (Data.Text.pack "/sapi/v1/accountSnapshot")
        [ Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/accountSnapshot.GET.parameters@ in the specification.
data GetSapiV1AccountSnapshotParameters = GetSapiV1AccountSnapshotParameters
  { -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1AccountSnapshotParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Constraints:
    --
    -- * Maxium  of 30.0
    -- * Minimum  of 7.0
    getSapiV1AccountSnapshotParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1AccountSnapshotParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1AccountSnapshotParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1AccountSnapshotParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1AccountSnapshotParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryType: Represents the parameter named \'type\'
    getSapiV1AccountSnapshotParametersQueryType :: GetSapiV1AccountSnapshotParametersQueryType
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountSnapshotParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQueryTimestamp obj] : ["queryType" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQueryType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountSnapshotParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQueryTimestamp obj] : ["queryType" Data.Aeson.Types.ToJSON..= getSapiV1AccountSnapshotParametersQueryType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountSnapshotParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountSnapshotParameters" (\obj -> ((((((GHC.Base.pure GetSapiV1AccountSnapshotParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryType"))

-- | Create a new 'GetSapiV1AccountSnapshotParameters' with all required fields.
mkGetSapiV1AccountSnapshotParameters ::
  -- | 'getSapiV1AccountSnapshotParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AccountSnapshotParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AccountSnapshotParametersQueryType'
  GetSapiV1AccountSnapshotParametersQueryType ->
  GetSapiV1AccountSnapshotParameters
mkGetSapiV1AccountSnapshotParameters getSapiV1AccountSnapshotParametersQuerySignature getSapiV1AccountSnapshotParametersQueryTimestamp getSapiV1AccountSnapshotParametersQueryType =
  GetSapiV1AccountSnapshotParameters
    { getSapiV1AccountSnapshotParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1AccountSnapshotParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1AccountSnapshotParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1AccountSnapshotParametersQuerySignature = getSapiV1AccountSnapshotParametersQuerySignature,
      getSapiV1AccountSnapshotParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1AccountSnapshotParametersQueryTimestamp = getSapiV1AccountSnapshotParametersQueryTimestamp,
      getSapiV1AccountSnapshotParametersQueryType = getSapiV1AccountSnapshotParametersQueryType
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/accountSnapshot.GET.parameters.properties.queryType@ in the specification.
--
-- Represents the parameter named \'type\'
data GetSapiV1AccountSnapshotParametersQueryType
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV1AccountSnapshotParametersQueryTypeOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV1AccountSnapshotParametersQueryTypeTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"SPOT"@
    GetSapiV1AccountSnapshotParametersQueryTypeEnumSPOT
  | -- | Represents the JSON value @"MARGIN"@
    GetSapiV1AccountSnapshotParametersQueryTypeEnumMARGIN
  | -- | Represents the JSON value @"FUTURES"@
    GetSapiV1AccountSnapshotParametersQueryTypeEnumFUTURES
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountSnapshotParametersQueryType where
  toJSON (GetSapiV1AccountSnapshotParametersQueryTypeOther val) = val
  toJSON (GetSapiV1AccountSnapshotParametersQueryTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV1AccountSnapshotParametersQueryTypeEnumSPOT) = "SPOT"
  toJSON (GetSapiV1AccountSnapshotParametersQueryTypeEnumMARGIN) = "MARGIN"
  toJSON (GetSapiV1AccountSnapshotParametersQueryTypeEnumFUTURES) = "FUTURES"

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountSnapshotParametersQueryType where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "SPOT" -> GetSapiV1AccountSnapshotParametersQueryTypeEnumSPOT
            | val GHC.Classes.== "MARGIN" -> GetSapiV1AccountSnapshotParametersQueryTypeEnumMARGIN
            | val GHC.Classes.== "FUTURES" -> GetSapiV1AccountSnapshotParametersQueryTypeEnumFUTURES
            | GHC.Base.otherwise -> GetSapiV1AccountSnapshotParametersQueryTypeOther val
      )

-- | Represents a response of the operation 'getSapiV1AccountSnapshot'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1AccountSnapshotResponseError' is used.
data GetSapiV1AccountSnapshotResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1AccountSnapshotResponseError GHC.Base.String
  | -- | Account Snapshot
    GetSapiV1AccountSnapshotResponse200 GetSapiV1AccountSnapshotResponseBody200Variants
  | -- | Bad Request
    GetSapiV1AccountSnapshotResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1AccountSnapshotResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the oneOf schema located at @paths.\/sapi\/v1\/accountSnapshot.GET.responses.200.content.application\/json.schema.oneOf@ in the specification.
data GetSapiV1AccountSnapshotResponseBody200Variants
  = GetSapiV1AccountSnapshotResponseBody200Variant1 SnapshotSpot
  | GetSapiV1AccountSnapshotResponseBody200Variant2 SnapshotMargin
  | GetSapiV1AccountSnapshotResponseBody200Variant3 SnapshotFutures
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountSnapshotResponseBody200Variants where
  toJSON (GetSapiV1AccountSnapshotResponseBody200Variant1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSapiV1AccountSnapshotResponseBody200Variant2 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSapiV1AccountSnapshotResponseBody200Variant3 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountSnapshotResponseBody200Variants where
  parseJSON val = case (GetSapiV1AccountSnapshotResponseBody200Variant1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSapiV1AccountSnapshotResponseBody200Variant2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSapiV1AccountSnapshotResponseBody200Variant3 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | > GET /sapi/v1/accountSnapshot
--
-- The same as 'getSapiV1AccountSnapshot' but accepts an explicit configuration.
getSapiV1AccountSnapshotWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountSnapshotParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1AccountSnapshotResponse)
getSapiV1AccountSnapshotWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1AccountSnapshotResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountSnapshotResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1AccountSnapshotResponseBody200Variants
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountSnapshotResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountSnapshotResponse401
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
          (Data.Text.pack "/sapi/v1/accountSnapshot")
          [ Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/accountSnapshot
--
-- The same as 'getSapiV1AccountSnapshot' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AccountSnapshotRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountSnapshotParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AccountSnapshotRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/accountSnapshot")
        [ Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/accountSnapshot
--
-- The same as 'getSapiV1AccountSnapshot' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AccountSnapshotWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountSnapshotParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AccountSnapshotWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/accountSnapshot")
          [ Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountSnapshotParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountSnapshotParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
