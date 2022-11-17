{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MiningPaymentOther
module Binance.Operations.GetSapiV1MiningPaymentOther where

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

-- | > GET /sapi/v1/mining/payment/other
--
-- Weight(IP): 5
getSapiV1MiningPaymentOther ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningPaymentOtherParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MiningPaymentOtherResponse)
getSapiV1MiningPaymentOther parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MiningPaymentOtherResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningPaymentOtherResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1MiningPaymentOtherResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningPaymentOtherResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningPaymentOtherResponse401
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
        (Data.Text.pack "/sapi/v1/mining/payment/other")
        [ Binance.Common.QueryParameter (Data.Text.pack "algo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryAlgo parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryStartDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryEndDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/payment\/other.GET.parameters@ in the specification.
data GetSapiV1MiningPaymentOtherParameters = GetSapiV1MiningPaymentOtherParameters
  { -- | queryAlgo: Represents the parameter named \'algo\'
    --
    -- Algorithm(sha256)
    getSapiV1MiningPaymentOtherParametersQueryAlgo :: Data.Text.Internal.Text,
    -- | queryCoin: Represents the parameter named \'coin\'
    --
    -- Coin name
    getSapiV1MiningPaymentOtherParametersQueryCoin :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEndDate: Represents the parameter named \'endDate\'
    --
    -- Search date, millisecond timestamp, while empty query all
    getSapiV1MiningPaymentOtherParametersQueryEndDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPageIndex: Represents the parameter named \'pageIndex\'
    --
    -- Page number, default is first page, start form 1
    getSapiV1MiningPaymentOtherParametersQueryPageIndex :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryPageSize: Represents the parameter named \'pageSize\'
    --
    -- Number of pages, minimum 10, maximum 200
    getSapiV1MiningPaymentOtherParametersQueryPageSize :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MiningPaymentOtherParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MiningPaymentOtherParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartDate: Represents the parameter named \'startDate\'
    --
    -- Search date, millisecond timestamp, while empty query all
    getSapiV1MiningPaymentOtherParametersQueryStartDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MiningPaymentOtherParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryUserName: Represents the parameter named \'userName\'
    --
    -- Mining Account
    getSapiV1MiningPaymentOtherParametersQueryUserName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningPaymentOtherParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAlgo" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryAlgo obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndDate" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryEndDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageIndex" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryPageIndex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageSize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartDate" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryStartDate obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryUserName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAlgo" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryAlgo obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCoin" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryCoin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndDate" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryEndDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageIndex" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryPageIndex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageSize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartDate" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningPaymentOtherParametersQueryStartDate obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherParametersQueryUserName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningPaymentOtherParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningPaymentOtherParameters" (\obj -> (((((((((GHC.Base.pure GetSapiV1MiningPaymentOtherParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAlgo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCoin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPageIndex")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartDate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryUserName"))

-- | Create a new 'GetSapiV1MiningPaymentOtherParameters' with all required fields.
mkGetSapiV1MiningPaymentOtherParameters ::
  -- | 'getSapiV1MiningPaymentOtherParametersQueryAlgo'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningPaymentOtherParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningPaymentOtherParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningPaymentOtherParametersQueryUserName'
  Data.Text.Internal.Text ->
  GetSapiV1MiningPaymentOtherParameters
mkGetSapiV1MiningPaymentOtherParameters getSapiV1MiningPaymentOtherParametersQueryAlgo getSapiV1MiningPaymentOtherParametersQuerySignature getSapiV1MiningPaymentOtherParametersQueryTimestamp getSapiV1MiningPaymentOtherParametersQueryUserName =
  GetSapiV1MiningPaymentOtherParameters
    { getSapiV1MiningPaymentOtherParametersQueryAlgo = getSapiV1MiningPaymentOtherParametersQueryAlgo,
      getSapiV1MiningPaymentOtherParametersQueryCoin = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQueryEndDate = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQueryPageIndex = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQueryPageSize = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQuerySignature = getSapiV1MiningPaymentOtherParametersQuerySignature,
      getSapiV1MiningPaymentOtherParametersQueryStartDate = GHC.Maybe.Nothing,
      getSapiV1MiningPaymentOtherParametersQueryTimestamp = getSapiV1MiningPaymentOtherParametersQueryTimestamp,
      getSapiV1MiningPaymentOtherParametersQueryUserName = getSapiV1MiningPaymentOtherParametersQueryUserName
    }

-- | Represents a response of the operation 'getSapiV1MiningPaymentOther'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MiningPaymentOtherResponseError' is used.
data GetSapiV1MiningPaymentOtherResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MiningPaymentOtherResponseError GHC.Base.String
  | -- | List of extra bonuses
    GetSapiV1MiningPaymentOtherResponse200 GetSapiV1MiningPaymentOtherResponseBody200
  | -- | Bad Request
    GetSapiV1MiningPaymentOtherResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MiningPaymentOtherResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/payment\/other.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1MiningPaymentOtherResponseBody200 = GetSapiV1MiningPaymentOtherResponseBody200
  { -- | code
    getSapiV1MiningPaymentOtherResponseBody200Code :: GHC.Int.Int64,
    -- | data
    getSapiV1MiningPaymentOtherResponseBody200Data :: GetSapiV1MiningPaymentOtherResponseBody200Data,
    -- | msg
    getSapiV1MiningPaymentOtherResponseBody200Msg :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningPaymentOtherResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Msg obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200Msg obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningPaymentOtherResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningPaymentOtherResponseBody200" (\obj -> ((GHC.Base.pure GetSapiV1MiningPaymentOtherResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg"))

-- | Create a new 'GetSapiV1MiningPaymentOtherResponseBody200' with all required fields.
mkGetSapiV1MiningPaymentOtherResponseBody200 ::
  -- | 'getSapiV1MiningPaymentOtherResponseBody200Code'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200Data'
  GetSapiV1MiningPaymentOtherResponseBody200Data ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200Msg'
  Data.Text.Internal.Text ->
  GetSapiV1MiningPaymentOtherResponseBody200
mkGetSapiV1MiningPaymentOtherResponseBody200 getSapiV1MiningPaymentOtherResponseBody200Code getSapiV1MiningPaymentOtherResponseBody200Data getSapiV1MiningPaymentOtherResponseBody200Msg =
  GetSapiV1MiningPaymentOtherResponseBody200
    { getSapiV1MiningPaymentOtherResponseBody200Code = getSapiV1MiningPaymentOtherResponseBody200Code,
      getSapiV1MiningPaymentOtherResponseBody200Data = getSapiV1MiningPaymentOtherResponseBody200Data,
      getSapiV1MiningPaymentOtherResponseBody200Msg = getSapiV1MiningPaymentOtherResponseBody200Msg
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/payment\/other.GET.responses.200.content.application\/json.schema.properties.data@ in the specification.
data GetSapiV1MiningPaymentOtherResponseBody200Data = GetSapiV1MiningPaymentOtherResponseBody200Data
  { -- | otherProfits
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits :: ([GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits]),
    -- | pageSize: Rows per page
    getSapiV1MiningPaymentOtherResponseBody200DataPageSize :: GHC.Int.Int64,
    -- | totalNum: Total Rows
    getSapiV1MiningPaymentOtherResponseBody200DataTotalNum :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningPaymentOtherResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["otherProfits" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits obj] : ["pageSize" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataPageSize obj] : ["totalNum" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataTotalNum obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["otherProfits" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits obj] : ["pageSize" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataPageSize obj] : ["totalNum" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataTotalNum obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningPaymentOtherResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningPaymentOtherResponseBody200Data" (\obj -> ((GHC.Base.pure GetSapiV1MiningPaymentOtherResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "otherProfits")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalNum"))

-- | Create a new 'GetSapiV1MiningPaymentOtherResponseBody200Data' with all required fields.
mkGetSapiV1MiningPaymentOtherResponseBody200Data ::
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits'
  [GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits] ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataPageSize'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataTotalNum'
  GHC.Int.Int64 ->
  GetSapiV1MiningPaymentOtherResponseBody200Data
mkGetSapiV1MiningPaymentOtherResponseBody200Data getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits getSapiV1MiningPaymentOtherResponseBody200DataPageSize getSapiV1MiningPaymentOtherResponseBody200DataTotalNum =
  GetSapiV1MiningPaymentOtherResponseBody200Data
    { getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfits,
      getSapiV1MiningPaymentOtherResponseBody200DataPageSize = getSapiV1MiningPaymentOtherResponseBody200DataPageSize,
      getSapiV1MiningPaymentOtherResponseBody200DataTotalNum = getSapiV1MiningPaymentOtherResponseBody200DataTotalNum
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/payment\/other.GET.responses.200.content.application\/json.schema.properties.data.properties.otherProfits.items@ in the specification.
data GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits = GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits
  { -- | coinName: Coin Name
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName :: Data.Text.Internal.Text,
    -- | profitAmount
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount :: GHC.Types.Double,
    -- | status: 0:Unpaid, 1:Paying  2：Paid
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus :: GHC.Int.Int32,
    -- | time: Mining date
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime :: GHC.Int.Int64,
    -- | type: 1: Merged Mining, 2: Activity Bonus, 3:Rebate 4:Smart Pool 6:Income Transfer 7:Pool Savings
    getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType :: GHC.Int.Int32
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["coinName" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName obj] : ["profitAmount" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus obj] : ["time" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["coinName" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName obj] : ["profitAmount" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount obj] : ["status" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus obj] : ["time" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime obj] : ["type" Data.Aeson.Types.ToJSON..= getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits" (\obj -> ((((GHC.Base.pure GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coinName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "profitAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits' with all required fields.
mkGetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits ::
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount'
  GHC.Types.Double ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus'
  GHC.Int.Int32 ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType'
  GHC.Int.Int32 ->
  GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits
mkGetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType =
  GetSapiV1MiningPaymentOtherResponseBody200DataOtherProfits
    { getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsCoinName,
      getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsProfitAmount,
      getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsStatus,
      getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsTime,
      getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType = getSapiV1MiningPaymentOtherResponseBody200DataOtherProfitsType
    }

-- | > GET /sapi/v1/mining/payment/other
--
-- The same as 'getSapiV1MiningPaymentOther' but accepts an explicit configuration.
getSapiV1MiningPaymentOtherWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningPaymentOtherParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MiningPaymentOtherResponse)
getSapiV1MiningPaymentOtherWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MiningPaymentOtherResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningPaymentOtherResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1MiningPaymentOtherResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningPaymentOtherResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningPaymentOtherResponse401
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
          (Data.Text.pack "/sapi/v1/mining/payment/other")
          [ Binance.Common.QueryParameter (Data.Text.pack "algo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryAlgo parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryStartDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryEndDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/mining/payment/other
--
-- The same as 'getSapiV1MiningPaymentOther' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MiningPaymentOtherRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningPaymentOtherParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MiningPaymentOtherRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/mining/payment/other")
        [ Binance.Common.QueryParameter (Data.Text.pack "algo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryAlgo parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "startDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryStartDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryEndDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/mining/payment/other
--
-- The same as 'getSapiV1MiningPaymentOther' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MiningPaymentOtherWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningPaymentOtherParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MiningPaymentOtherWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/mining/payment/other")
          [ Binance.Common.QueryParameter (Data.Text.pack "algo") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryAlgo parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "coin") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryCoin parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "startDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryStartDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryEndDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningPaymentOtherParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningPaymentOtherParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )