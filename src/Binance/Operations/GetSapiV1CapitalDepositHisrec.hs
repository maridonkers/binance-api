{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1CapitalDepositHisrec
module Binance.Operations.GetSapiV1CapitalDepositHisrec where

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

-- | > GET /sapi/v1/capital/deposit/hisrec
--
-- Fetch deposit history.
--
-- - Please notice the default \`startTime\` and \`endTime\` to make sure that time interval is within 0-90 days.
-- - If both \`startTime\` and \`endTime\` are sent, time between \`startTime\` and \`endTime\` must be less than 90 days.
--
-- Weight(IP): 1
getSapiV1CapitalDepositHisrec ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositHisrecResponse)
getSapiV1CapitalDepositHisrec parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1CapitalDepositHisrecResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositHisrecResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1CapitalDepositHisrecResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositHisrecResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositHisrecResponse401
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
        (Data.Text.pack "/sapi/v1/capital/deposit/hisrec")
        [ Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/hisrec.GET.parameters@ in the specification.
data GetSapiV1CapitalDepositHisrecParameters = GetSapiV1CapitalDepositHisrecParameters
  { -- | queryCoin: Represents the parameter named \'coin\'
    --
    -- Coin name
    getSapiV1CapitalDepositHisrecParametersQueryCoin :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositHisrecParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- Default 500; max 1000.
    getSapiV1CapitalDepositHisrecParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryOffset: Represents the parameter named \'offset\'
    getSapiV1CapitalDepositHisrecParametersQueryOffset :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1CapitalDepositHisrecParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1CapitalDepositHisrecParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositHisrecParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- * \`0\` - pending
    -- * \`6\` - credited but cannot withdraw
    -- * \`1\` - success
    getSapiV1CapitalDepositHisrecParametersQueryStatus :: (GHC.Maybe.Maybe GetSapiV1CapitalDepositHisrecParametersQueryStatus),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositHisrecParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositHisrecParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOffset" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryStatus obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOffset" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositHisrecParametersQueryStatus obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositHisrecParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositHisrecParameters" (\obj -> ((((((((GHC.Base.pure GetSapiV1CapitalDepositHisrecParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOffset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1CapitalDepositHisrecParameters' with all required fields.
mkGetSapiV1CapitalDepositHisrecParameters ::
  -- | 'getSapiV1CapitalDepositHisrecParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1CapitalDepositHisrecParameters
mkGetSapiV1CapitalDepositHisrecParameters getSapiV1CapitalDepositHisrecParametersQuerySignature getSapiV1CapitalDepositHisrecParametersQueryTimestamp =
  GetSapiV1CapitalDepositHisrecParameters
    { getSapiV1CapitalDepositHisrecParametersQueryCoin = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryOffset = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQuerySignature = getSapiV1CapitalDepositHisrecParametersQuerySignature,
      getSapiV1CapitalDepositHisrecParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryStatus = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositHisrecParametersQueryTimestamp = getSapiV1CapitalDepositHisrecParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/capital\/deposit\/hisrec.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- * \`0\` - pending
-- * \`6\` - credited but cannot withdraw
-- * \`1\` - success
data GetSapiV1CapitalDepositHisrecParametersQueryStatus
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSapiV1CapitalDepositHisrecParametersQueryStatusOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSapiV1CapitalDepositHisrecParametersQueryStatusTyped GHC.Int.Int32
  | -- | Represents the JSON value @0@
    GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum0
  | -- | Represents the JSON value @6@
    GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum6
  | -- | Represents the JSON value @1@
    GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositHisrecParametersQueryStatus where
  toJSON (GetSapiV1CapitalDepositHisrecParametersQueryStatusOther val) = val
  toJSON (GetSapiV1CapitalDepositHisrecParametersQueryStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum0) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 0 0)
  toJSON (GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum6) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 6 0)
  toJSON (GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum1) = Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0)

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositHisrecParametersQueryStatus where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 0 0) -> GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum0
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 6 0) -> GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum6
            | val GHC.Classes.== Data.Aeson.Types.Internal.Number (Data.Scientific.scientific 1 0) -> GetSapiV1CapitalDepositHisrecParametersQueryStatusEnum1
            | GHC.Base.otherwise -> GetSapiV1CapitalDepositHisrecParametersQueryStatusOther val
      )

-- | Represents a response of the operation 'getSapiV1CapitalDepositHisrec'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1CapitalDepositHisrecResponseError' is used.
data GetSapiV1CapitalDepositHisrecResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1CapitalDepositHisrecResponseError GHC.Base.String
  | -- | List of deposits
    GetSapiV1CapitalDepositHisrecResponse200 ([GetSapiV1CapitalDepositHisrecResponseBody200])
  | -- | Bad Request
    GetSapiV1CapitalDepositHisrecResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1CapitalDepositHisrecResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/hisrec.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1CapitalDepositHisrecResponseBody200 = GetSapiV1CapitalDepositHisrecResponseBody200
  { -- | address
    getSapiV1CapitalDepositHisrecResponseBody200Address :: Data.Text.Internal.Text,
    -- | addressTag
    getSapiV1CapitalDepositHisrecResponseBody200AddressTag :: Data.Text.Internal.Text,
    -- | amount
    getSapiV1CapitalDepositHisrecResponseBody200Amount :: Data.Text.Internal.Text,
    -- | coin
    getSapiV1CapitalDepositHisrecResponseBody200Coin :: Data.Text.Internal.Text,
    -- | confirmTimes
    getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes :: Data.Text.Internal.Text,
    -- | insertTime
    getSapiV1CapitalDepositHisrecResponseBody200InsertTime :: GHC.Int.Int64,
    -- | network
    getSapiV1CapitalDepositHisrecResponseBody200Network :: Data.Text.Internal.Text,
    -- | status
    getSapiV1CapitalDepositHisrecResponseBody200Status :: GHC.Int.Int32,
    -- | transferType
    getSapiV1CapitalDepositHisrecResponseBody200TransferType :: GHC.Int.Int32,
    -- | txId
    getSapiV1CapitalDepositHisrecResponseBody200TxId :: Data.Text.Internal.Text,
    -- | unlockConfirm: confirm times for unlocking
    getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositHisrecResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Address obj] : ["addressTag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200AddressTag obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Amount obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Coin obj] : ["confirmTimes" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes obj] : ["insertTime" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200InsertTime obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Network obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Status obj] : ["transferType" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200TransferType obj] : ["txId" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200TxId obj] : ["unlockConfirm" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Address obj] : ["addressTag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200AddressTag obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Amount obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Coin obj] : ["confirmTimes" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes obj] : ["insertTime" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200InsertTime obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Network obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200Status obj] : ["transferType" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200TransferType obj] : ["txId" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200TxId obj] : ["unlockConfirm" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositHisrecResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositHisrecResponseBody200" (\obj -> ((((((((((GHC.Base.pure GetSapiV1CapitalDepositHisrecResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "addressTag")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "confirmTimes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "insertTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transferType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "txId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unlockConfirm"))

-- | Create a new 'GetSapiV1CapitalDepositHisrecResponseBody200' with all required fields.
mkGetSapiV1CapitalDepositHisrecResponseBody200 ::
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200Address'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200AddressTag'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200Amount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200Coin'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200InsertTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200Network'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200Status'
  GHC.Int.Int32 ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200TransferType'
  GHC.Int.Int32 ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200TxId'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm'
  Data.Text.Internal.Text ->
  GetSapiV1CapitalDepositHisrecResponseBody200
mkGetSapiV1CapitalDepositHisrecResponseBody200 getSapiV1CapitalDepositHisrecResponseBody200Address getSapiV1CapitalDepositHisrecResponseBody200AddressTag getSapiV1CapitalDepositHisrecResponseBody200Amount getSapiV1CapitalDepositHisrecResponseBody200Coin getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes getSapiV1CapitalDepositHisrecResponseBody200InsertTime getSapiV1CapitalDepositHisrecResponseBody200Network getSapiV1CapitalDepositHisrecResponseBody200Status getSapiV1CapitalDepositHisrecResponseBody200TransferType getSapiV1CapitalDepositHisrecResponseBody200TxId getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm =
  GetSapiV1CapitalDepositHisrecResponseBody200
    { getSapiV1CapitalDepositHisrecResponseBody200Address = getSapiV1CapitalDepositHisrecResponseBody200Address,
      getSapiV1CapitalDepositHisrecResponseBody200AddressTag = getSapiV1CapitalDepositHisrecResponseBody200AddressTag,
      getSapiV1CapitalDepositHisrecResponseBody200Amount = getSapiV1CapitalDepositHisrecResponseBody200Amount,
      getSapiV1CapitalDepositHisrecResponseBody200Coin = getSapiV1CapitalDepositHisrecResponseBody200Coin,
      getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes = getSapiV1CapitalDepositHisrecResponseBody200ConfirmTimes,
      getSapiV1CapitalDepositHisrecResponseBody200InsertTime = getSapiV1CapitalDepositHisrecResponseBody200InsertTime,
      getSapiV1CapitalDepositHisrecResponseBody200Network = getSapiV1CapitalDepositHisrecResponseBody200Network,
      getSapiV1CapitalDepositHisrecResponseBody200Status = getSapiV1CapitalDepositHisrecResponseBody200Status,
      getSapiV1CapitalDepositHisrecResponseBody200TransferType = getSapiV1CapitalDepositHisrecResponseBody200TransferType,
      getSapiV1CapitalDepositHisrecResponseBody200TxId = getSapiV1CapitalDepositHisrecResponseBody200TxId,
      getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm = getSapiV1CapitalDepositHisrecResponseBody200UnlockConfirm
    }

-- | > GET /sapi/v1/capital/deposit/hisrec
--
-- The same as 'getSapiV1CapitalDepositHisrec' but accepts an explicit configuration.
getSapiV1CapitalDepositHisrecWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositHisrecResponse)
getSapiV1CapitalDepositHisrecWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1CapitalDepositHisrecResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositHisrecResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1CapitalDepositHisrecResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositHisrecResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositHisrecResponse401
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
          (Data.Text.pack "/sapi/v1/capital/deposit/hisrec")
          [ Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/capital/deposit/hisrec
--
-- The same as 'getSapiV1CapitalDepositHisrec' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositHisrecRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositHisrecRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/capital/deposit/hisrec")
        [ Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/capital/deposit/hisrec
--
-- The same as 'getSapiV1CapitalDepositHisrec' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositHisrecWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositHisrecWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/capital/deposit/hisrec")
          [ Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
