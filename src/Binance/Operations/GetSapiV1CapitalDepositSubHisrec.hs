{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1CapitalDepositSubHisrec
module Binance.Operations.GetSapiV1CapitalDepositSubHisrec where

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

-- | > GET /sapi/v1/capital/deposit/subHisrec
--
-- Fetch sub-account deposit history
--
-- Weight(IP): 1
getSapiV1CapitalDepositSubHisrec ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositSubHisrecResponse)
getSapiV1CapitalDepositSubHisrec parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1CapitalDepositSubHisrecResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubHisrecResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ([GetSapiV1CapitalDepositSubHisrecResponseBody200])
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubHisrecResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1CapitalDepositSubHisrecResponse401
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
        (Data.Text.pack "/sapi/v1/capital/deposit/subHisrec")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/subHisrec.GET.parameters@ in the specification.
data GetSapiV1CapitalDepositSubHisrecParameters = GetSapiV1CapitalDepositSubHisrecParameters
  { -- | queryCoin: Represents the parameter named \'coin\'
    --
    -- Coin name
    getSapiV1CapitalDepositSubHisrecParametersQueryCoin :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEmail: Represents the parameter named \'email\'
    --
    -- Sub-account email
    getSapiV1CapitalDepositSubHisrecParametersQueryEmail :: Data.Text.Internal.Text,
    -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositSubHisrecParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryLimit: Represents the parameter named \'limit\'
    getSapiV1CapitalDepositSubHisrecParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryOffset: Represents the parameter named \'offset\'
    getSapiV1CapitalDepositSubHisrecParametersQueryOffset :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1CapitalDepositSubHisrecParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositSubHisrecParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- 0(0:pending,6: credited but cannot withdraw, 1:success)
    getSapiV1CapitalDepositSubHisrecParametersQueryStatus :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositSubHisrecParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryCoin obj) : ["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOffset" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryStatus obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryCoin obj) : ["queryEmail" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQueryEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOffset" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getSapiV1CapitalDepositSubHisrecParametersQueryStatus obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositSubHisrecParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositSubHisrecParameters" (\obj -> (((((((((GHC.Base.pure GetSapiV1CapitalDepositSubHisrecParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOffset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1CapitalDepositSubHisrecParameters' with all required fields.
mkGetSapiV1CapitalDepositSubHisrecParameters ::
  -- | 'getSapiV1CapitalDepositSubHisrecParametersQueryEmail'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1CapitalDepositSubHisrecParameters
mkGetSapiV1CapitalDepositSubHisrecParameters getSapiV1CapitalDepositSubHisrecParametersQueryEmail getSapiV1CapitalDepositSubHisrecParametersQuerySignature getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp =
  GetSapiV1CapitalDepositSubHisrecParameters
    { getSapiV1CapitalDepositSubHisrecParametersQueryCoin = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryEmail = getSapiV1CapitalDepositSubHisrecParametersQueryEmail,
      getSapiV1CapitalDepositSubHisrecParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryLimit = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryOffset = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQuerySignature = getSapiV1CapitalDepositSubHisrecParametersQuerySignature,
      getSapiV1CapitalDepositSubHisrecParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryStatus = GHC.Maybe.Nothing,
      getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp = getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1CapitalDepositSubHisrec'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1CapitalDepositSubHisrecResponseError' is used.
data GetSapiV1CapitalDepositSubHisrecResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1CapitalDepositSubHisrecResponseError GHC.Base.String
  | -- | Sub-account deposit history
    GetSapiV1CapitalDepositSubHisrecResponse200 ([GetSapiV1CapitalDepositSubHisrecResponseBody200])
  | -- | Bad Request
    GetSapiV1CapitalDepositSubHisrecResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1CapitalDepositSubHisrecResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/capital\/deposit\/subHisrec.GET.responses.200.content.application\/json.schema.items@ in the specification.
data GetSapiV1CapitalDepositSubHisrecResponseBody200 = GetSapiV1CapitalDepositSubHisrecResponseBody200
  { -- | address
    getSapiV1CapitalDepositSubHisrecResponseBody200Address :: Data.Text.Internal.Text,
    -- | addressTag
    getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag :: Data.Text.Internal.Text,
    -- | amount
    getSapiV1CapitalDepositSubHisrecResponseBody200Amount :: Data.Text.Internal.Text,
    -- | coin
    getSapiV1CapitalDepositSubHisrecResponseBody200Coin :: Data.Text.Internal.Text,
    -- | confirmTimes
    getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes :: Data.Text.Internal.Text,
    -- | insertTime
    getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime :: GHC.Int.Int64,
    -- | network
    getSapiV1CapitalDepositSubHisrecResponseBody200Network :: Data.Text.Internal.Text,
    -- | status
    getSapiV1CapitalDepositSubHisrecResponseBody200Status :: GHC.Int.Int32,
    -- | transferType
    getSapiV1CapitalDepositSubHisrecResponseBody200TransferType :: GHC.Int.Int32,
    -- | txId
    getSapiV1CapitalDepositSubHisrecResponseBody200TxId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1CapitalDepositSubHisrecResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Address obj] : ["addressTag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Amount obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Coin obj] : ["confirmTimes" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes obj] : ["insertTime" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Network obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Status obj] : ["transferType" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200TransferType obj] : ["txId" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200TxId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Address obj] : ["addressTag" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Amount obj] : ["coin" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Coin obj] : ["confirmTimes" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes obj] : ["insertTime" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime obj] : ["network" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Network obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200Status obj] : ["transferType" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200TransferType obj] : ["txId" Data.Aeson.Types.ToJSON..= getSapiV1CapitalDepositSubHisrecResponseBody200TxId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1CapitalDepositSubHisrecResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1CapitalDepositSubHisrecResponseBody200" (\obj -> (((((((((GHC.Base.pure GetSapiV1CapitalDepositSubHisrecResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "addressTag")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "confirmTimes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "insertTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transferType")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "txId"))

-- | Create a new 'GetSapiV1CapitalDepositSubHisrecResponseBody200' with all required fields.
mkGetSapiV1CapitalDepositSubHisrecResponseBody200 ::
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200Address'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200Amount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200Coin'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200Network'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200Status'
  GHC.Int.Int32 ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200TransferType'
  GHC.Int.Int32 ->
  -- | 'getSapiV1CapitalDepositSubHisrecResponseBody200TxId'
  Data.Text.Internal.Text ->
  GetSapiV1CapitalDepositSubHisrecResponseBody200
mkGetSapiV1CapitalDepositSubHisrecResponseBody200 getSapiV1CapitalDepositSubHisrecResponseBody200Address getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag getSapiV1CapitalDepositSubHisrecResponseBody200Amount getSapiV1CapitalDepositSubHisrecResponseBody200Coin getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime getSapiV1CapitalDepositSubHisrecResponseBody200Network getSapiV1CapitalDepositSubHisrecResponseBody200Status getSapiV1CapitalDepositSubHisrecResponseBody200TransferType getSapiV1CapitalDepositSubHisrecResponseBody200TxId =
  GetSapiV1CapitalDepositSubHisrecResponseBody200
    { getSapiV1CapitalDepositSubHisrecResponseBody200Address = getSapiV1CapitalDepositSubHisrecResponseBody200Address,
      getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag = getSapiV1CapitalDepositSubHisrecResponseBody200AddressTag,
      getSapiV1CapitalDepositSubHisrecResponseBody200Amount = getSapiV1CapitalDepositSubHisrecResponseBody200Amount,
      getSapiV1CapitalDepositSubHisrecResponseBody200Coin = getSapiV1CapitalDepositSubHisrecResponseBody200Coin,
      getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes = getSapiV1CapitalDepositSubHisrecResponseBody200ConfirmTimes,
      getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime = getSapiV1CapitalDepositSubHisrecResponseBody200InsertTime,
      getSapiV1CapitalDepositSubHisrecResponseBody200Network = getSapiV1CapitalDepositSubHisrecResponseBody200Network,
      getSapiV1CapitalDepositSubHisrecResponseBody200Status = getSapiV1CapitalDepositSubHisrecResponseBody200Status,
      getSapiV1CapitalDepositSubHisrecResponseBody200TransferType = getSapiV1CapitalDepositSubHisrecResponseBody200TransferType,
      getSapiV1CapitalDepositSubHisrecResponseBody200TxId = getSapiV1CapitalDepositSubHisrecResponseBody200TxId
    }

-- | > GET /sapi/v1/capital/deposit/subHisrec
--
-- The same as 'getSapiV1CapitalDepositSubHisrec' but accepts an explicit configuration.
getSapiV1CapitalDepositSubHisrecWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1CapitalDepositSubHisrecResponse)
getSapiV1CapitalDepositSubHisrecWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1CapitalDepositSubHisrecResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubHisrecResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ([GetSapiV1CapitalDepositSubHisrecResponseBody200])
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubHisrecResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1CapitalDepositSubHisrecResponse401
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
          (Data.Text.pack "/sapi/v1/capital/deposit/subHisrec")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/capital/deposit/subHisrec
--
-- The same as 'getSapiV1CapitalDepositSubHisrec' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositSubHisrecRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositSubHisrecRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/capital/deposit/subHisrec")
        [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/capital/deposit/subHisrec
--
-- The same as 'getSapiV1CapitalDepositSubHisrec' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1CapitalDepositSubHisrecWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1CapitalDepositSubHisrecParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1CapitalDepositSubHisrecWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/capital/deposit/subHisrec")
          [ Binance.Common.QueryParameter (Data.Text.pack "email") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "offset") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryOffset parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1CapitalDepositSubHisrecParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1CapitalDepositSubHisrecParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
