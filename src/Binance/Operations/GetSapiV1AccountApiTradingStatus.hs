{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1AccountApiTradingStatus
module Binance.Operations.GetSapiV1AccountApiTradingStatus where

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

-- | > GET /sapi/v1/account/apiTradingStatus
--
-- Fetch account API trading status with details.
--
-- Weight(IP): 1
getSapiV1AccountApiTradingStatus ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountApiTradingStatusParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1AccountApiTradingStatusResponse)
getSapiV1AccountApiTradingStatus parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1AccountApiTradingStatusResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountApiTradingStatusResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1AccountApiTradingStatusResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountApiTradingStatusResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1AccountApiTradingStatusResponse401
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
        (Data.Text.pack "/sapi/v1/account/apiTradingStatus")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountApiTradingStatusParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.parameters@ in the specification.
data GetSapiV1AccountApiTradingStatusParameters = GetSapiV1AccountApiTradingStatusParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1AccountApiTradingStatusParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1AccountApiTradingStatusParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1AccountApiTradingStatusParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountApiTradingStatusParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1AccountApiTradingStatusParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusParameters" (\obj -> ((GHC.Base.pure GetSapiV1AccountApiTradingStatusParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusParameters' with all required fields.
mkGetSapiV1AccountApiTradingStatusParameters ::
  -- | 'getSapiV1AccountApiTradingStatusParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AccountApiTradingStatusParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1AccountApiTradingStatusParameters
mkGetSapiV1AccountApiTradingStatusParameters getSapiV1AccountApiTradingStatusParametersQuerySignature getSapiV1AccountApiTradingStatusParametersQueryTimestamp =
  GetSapiV1AccountApiTradingStatusParameters
    { getSapiV1AccountApiTradingStatusParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1AccountApiTradingStatusParametersQuerySignature = getSapiV1AccountApiTradingStatusParametersQuerySignature,
      getSapiV1AccountApiTradingStatusParametersQueryTimestamp = getSapiV1AccountApiTradingStatusParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1AccountApiTradingStatus'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1AccountApiTradingStatusResponseError' is used.
data GetSapiV1AccountApiTradingStatusResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1AccountApiTradingStatusResponseError GHC.Base.String
  | -- | Account API trading status
    GetSapiV1AccountApiTradingStatusResponse200 GetSapiV1AccountApiTradingStatusResponseBody200
  | -- | Bad Request
    GetSapiV1AccountApiTradingStatusResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1AccountApiTradingStatusResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1AccountApiTradingStatusResponseBody200 = GetSapiV1AccountApiTradingStatusResponseBody200
  { -- | data
    getSapiV1AccountApiTradingStatusResponseBody200Data :: GetSapiV1AccountApiTradingStatusResponseBody200Data
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200Data obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200Data obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusResponseBody200" (\obj -> GHC.Base.pure GetSapiV1AccountApiTradingStatusResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusResponseBody200' with all required fields.
mkGetSapiV1AccountApiTradingStatusResponseBody200 ::
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200Data'
  GetSapiV1AccountApiTradingStatusResponseBody200Data ->
  GetSapiV1AccountApiTradingStatusResponseBody200
mkGetSapiV1AccountApiTradingStatusResponseBody200 getSapiV1AccountApiTradingStatusResponseBody200Data = GetSapiV1AccountApiTradingStatusResponseBody200 {getSapiV1AccountApiTradingStatusResponseBody200Data = getSapiV1AccountApiTradingStatusResponseBody200Data}

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.responses.200.content.application\/json.schema.properties.data@ in the specification.
data GetSapiV1AccountApiTradingStatusResponseBody200Data = GetSapiV1AccountApiTradingStatusResponseBody200Data
  { -- | indicators: The indicators updated every 30 seconds
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicators :: GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators,
    -- | isLocked: API trading function is locked or not
    getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked :: GHC.Types.Bool,
    -- | plannedRecoverTime: If API trading function is locked, this is the planned recover time
    getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime :: GHC.Int.Int64,
    -- | triggerCondition
    getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition :: GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition,
    -- | updateTime
    getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["indicators" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicators obj] : ["isLocked" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked obj] : ["plannedRecoverTime" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime obj] : ["triggerCondition" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["indicators" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicators obj] : ["isLocked" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked obj] : ["plannedRecoverTime" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime obj] : ["triggerCondition" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition obj] : ["updateTime" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusResponseBody200Data" (\obj -> ((((GHC.Base.pure GetSapiV1AccountApiTradingStatusResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "indicators")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "isLocked")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "plannedRecoverTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "triggerCondition")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updateTime"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusResponseBody200Data' with all required fields.
mkGetSapiV1AccountApiTradingStatusResponseBody200Data ::
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicators'
  GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked'
  GHC.Types.Bool ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition'
  GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime'
  GHC.Int.Int64 ->
  GetSapiV1AccountApiTradingStatusResponseBody200Data
mkGetSapiV1AccountApiTradingStatusResponseBody200Data getSapiV1AccountApiTradingStatusResponseBody200DataIndicators getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime =
  GetSapiV1AccountApiTradingStatusResponseBody200Data
    { getSapiV1AccountApiTradingStatusResponseBody200DataIndicators = getSapiV1AccountApiTradingStatusResponseBody200DataIndicators,
      getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked = getSapiV1AccountApiTradingStatusResponseBody200DataIsLocked,
      getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime = getSapiV1AccountApiTradingStatusResponseBody200DataPlannedRecoverTime,
      getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition = getSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition,
      getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime = getSapiV1AccountApiTradingStatusResponseBody200DataUpdateTime
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.responses.200.content.application\/json.schema.properties.data.properties.indicators@ in the specification.
--
-- The indicators updated every 30 seconds
data GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators = GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators
  { -- | BTCUSDT
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT :: ([GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["BTCUSDT" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["BTCUSDT" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators" (\obj -> GHC.Base.pure GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "BTCUSDT"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators' with all required fields.
mkGetSapiV1AccountApiTradingStatusResponseBody200DataIndicators ::
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT'
  [GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT] ->
  GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators
mkGetSapiV1AccountApiTradingStatusResponseBody200DataIndicators getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT = GetSapiV1AccountApiTradingStatusResponseBody200DataIndicators {getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT = getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT}

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.responses.200.content.application\/json.schema.properties.data.properties.indicators.properties.BTCUSDT.items@ in the specification.
data GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT = GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT
  { -- | c: Count of all orders
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC :: GHC.Int.Int64,
    -- | i: Unfilled Ratio (UFR)
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI :: Data.Text.Internal.Text,
    -- | t: Trigger UFR value
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT :: GHC.Types.Float,
    -- | v: Current UFR value
    getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV :: GHC.Types.Float
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["c" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC obj] : ["i" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI obj] : ["t" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT obj] : ["v" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["c" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC obj] : ["i" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI obj] : ["t" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT obj] : ["v" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT" (\obj -> (((GHC.Base.pure GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "c")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "i")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "t")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "v"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT' with all required fields.
mkGetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT ::
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT'
  GHC.Types.Float ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV'
  GHC.Types.Float ->
  GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT
mkGetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV =
  GetSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDT
    { getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC = getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTC,
      getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI = getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTI,
      getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT = getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTT,
      getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV = getSapiV1AccountApiTradingStatusResponseBody200DataIndicatorsBTCUSDTV
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/account\/apiTradingStatus.GET.responses.200.content.application\/json.schema.properties.data.properties.triggerCondition@ in the specification.
data GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition = GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition
  { -- | GCR: Number of GTC orders
    getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR :: GHC.Int.Int64,
    -- | IFER: Number of FOK\/IOC orders
    getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER :: GHC.Int.Int64,
    -- | UFR: Number of orders
    getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["GCR" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR obj] : ["IFER" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER obj] : ["UFR" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["GCR" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR obj] : ["IFER" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER obj] : ["UFR" Data.Aeson.Types.ToJSON..= getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition" (\obj -> ((GHC.Base.pure GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "GCR")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "IFER")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "UFR"))

-- | Create a new 'GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition' with all required fields.
mkGetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition ::
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER'
  GHC.Int.Int64 ->
  -- | 'getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR'
  GHC.Int.Int64 ->
  GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition
mkGetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR =
  GetSapiV1AccountApiTradingStatusResponseBody200DataTriggerCondition
    { getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR = getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionGCR,
      getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER = getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionIFER,
      getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR = getSapiV1AccountApiTradingStatusResponseBody200DataTriggerConditionUFR
    }

-- | > GET /sapi/v1/account/apiTradingStatus
--
-- The same as 'getSapiV1AccountApiTradingStatus' but accepts an explicit configuration.
getSapiV1AccountApiTradingStatusWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountApiTradingStatusParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1AccountApiTradingStatusResponse)
getSapiV1AccountApiTradingStatusWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1AccountApiTradingStatusResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountApiTradingStatusResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1AccountApiTradingStatusResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountApiTradingStatusResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1AccountApiTradingStatusResponse401
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
          (Data.Text.pack "/sapi/v1/account/apiTradingStatus")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountApiTradingStatusParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/account/apiTradingStatus
--
-- The same as 'getSapiV1AccountApiTradingStatus' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AccountApiTradingStatusRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountApiTradingStatusParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AccountApiTradingStatusRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/account/apiTradingStatus")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountApiTradingStatusParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/account/apiTradingStatus
--
-- The same as 'getSapiV1AccountApiTradingStatus' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1AccountApiTradingStatusWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1AccountApiTradingStatusParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1AccountApiTradingStatusWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/account/apiTradingStatus")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1AccountApiTradingStatusParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1AccountApiTradingStatusParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
