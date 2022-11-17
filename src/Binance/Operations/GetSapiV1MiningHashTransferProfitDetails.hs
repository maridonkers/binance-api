{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MiningHashTransferProfitDetails
module Binance.Operations.GetSapiV1MiningHashTransferProfitDetails where

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

-- | > GET /sapi/v1/mining/hash-transfer/profit/details
--
-- Weight(IP): 5
getSapiV1MiningHashTransferProfitDetails ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningHashTransferProfitDetailsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MiningHashTransferProfitDetailsResponse)
getSapiV1MiningHashTransferProfitDetails parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MiningHashTransferProfitDetailsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningHashTransferProfitDetailsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1MiningHashTransferProfitDetailsResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningHashTransferProfitDetailsResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MiningHashTransferProfitDetailsResponse401
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
        (Data.Text.pack "/sapi/v1/mining/hash-transfer/profit/details")
        [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/profit\/details.GET.parameters@ in the specification.
data GetSapiV1MiningHashTransferProfitDetailsParameters = GetSapiV1MiningHashTransferProfitDetailsParameters
  { -- | queryConfigId: Represents the parameter named \'configId\'
    --
    -- Mining ID
    getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId :: Data.Text.Internal.Text,
    -- | queryPageIndex: Represents the parameter named \'pageIndex\'
    --
    -- Page number, default is first page, start form 1
    getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex :: (GHC.Maybe.Maybe GHC.Int.Int32),
    -- | queryPageSize: Represents the parameter named \'pageSize\'
    --
    -- Number of pages, minimum 10, maximum 200
    getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryUserName: Represents the parameter named \'userName\'
    --
    -- Mining Account
    getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningHashTransferProfitDetailsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryConfigId" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageIndex" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageSize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryConfigId" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageIndex" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPageSize" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp obj] : ["queryUserName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningHashTransferProfitDetailsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningHashTransferProfitDetailsParameters" (\obj -> ((((((GHC.Base.pure GetSapiV1MiningHashTransferProfitDetailsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryConfigId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPageIndex")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryUserName"))

-- | Create a new 'GetSapiV1MiningHashTransferProfitDetailsParameters' with all required fields.
mkGetSapiV1MiningHashTransferProfitDetailsParameters ::
  -- | 'getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName'
  Data.Text.Internal.Text ->
  GetSapiV1MiningHashTransferProfitDetailsParameters
mkGetSapiV1MiningHashTransferProfitDetailsParameters getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName =
  GetSapiV1MiningHashTransferProfitDetailsParameters
    { getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId = getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId,
      getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex = GHC.Maybe.Nothing,
      getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize = GHC.Maybe.Nothing,
      getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature = getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature,
      getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp = getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp,
      getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName = getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName
    }

-- | Represents a response of the operation 'getSapiV1MiningHashTransferProfitDetails'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MiningHashTransferProfitDetailsResponseError' is used.
data GetSapiV1MiningHashTransferProfitDetailsResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MiningHashTransferProfitDetailsResponseError GHC.Base.String
  | -- | List of hashrate resale details
    GetSapiV1MiningHashTransferProfitDetailsResponse200 GetSapiV1MiningHashTransferProfitDetailsResponseBody200
  | -- | Bad Request
    GetSapiV1MiningHashTransferProfitDetailsResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MiningHashTransferProfitDetailsResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/profit\/details.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1MiningHashTransferProfitDetailsResponseBody200 = GetSapiV1MiningHashTransferProfitDetailsResponseBody200
  { -- | code
    getSapiV1MiningHashTransferProfitDetailsResponseBody200Code :: GHC.Int.Int64,
    -- | data
    getSapiV1MiningHashTransferProfitDetailsResponseBody200Data :: GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data,
    -- | msg
    getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Code obj] : ["data" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Data obj] : ["msg" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningHashTransferProfitDetailsResponseBody200" (\obj -> ((GHC.Base.pure GetSapiV1MiningHashTransferProfitDetailsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "msg"))

-- | Create a new 'GetSapiV1MiningHashTransferProfitDetailsResponseBody200' with all required fields.
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200 ::
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200Code'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200Data'
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg'
  Data.Text.Internal.Text ->
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200 getSapiV1MiningHashTransferProfitDetailsResponseBody200Code getSapiV1MiningHashTransferProfitDetailsResponseBody200Data getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg =
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200
    { getSapiV1MiningHashTransferProfitDetailsResponseBody200Code = getSapiV1MiningHashTransferProfitDetailsResponseBody200Code,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200Data = getSapiV1MiningHashTransferProfitDetailsResponseBody200Data,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg = getSapiV1MiningHashTransferProfitDetailsResponseBody200Msg
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/profit\/details.GET.responses.200.content.application\/json.schema.properties.data@ in the specification.
data GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data = GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data
  { -- | pageSize
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize :: GHC.Int.Int64,
    -- | profitTransferDetails
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails :: ([GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails]),
    -- | totalNum
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pageSize" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize obj] : ["profitTransferDetails" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails obj] : ["totalNum" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pageSize" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize obj] : ["profitTransferDetails" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails obj] : ["totalNum" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data" (\obj -> ((GHC.Base.pure GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pageSize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "profitTransferDetails")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalNum"))

-- | Create a new 'GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data' with all required fields.
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200Data ::
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails'
  [GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails] ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum'
  GHC.Int.Int64 ->
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200Data getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum =
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200Data
    { getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataPageSize,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataTotalNum
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/mining\/hash-transfer\/profit\/details.GET.responses.200.content.application\/json.schema.properties.data.properties.profitTransferDetails.items@ in the specification.
data GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails = GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails
  { -- | algoName: Transfer algorithm
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName :: Data.Text.Internal.Text,
    -- | amount: Transfer income
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount :: GHC.Types.Double,
    -- | coinName
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName :: Data.Text.Internal.Text,
    -- | day: Transfer date
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay :: GHC.Int.Int64,
    -- | hashRate: Transferred Hashrate quantity
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate :: GHC.Int.Int64,
    -- | poolUsername: Transfer out of sub-account
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername :: Data.Text.Internal.Text,
    -- | toPoolUsername: Transfer into subaccount
    getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["algoName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount obj] : ["coinName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName obj] : ["day" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay obj] : ["hashRate" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate obj] : ["poolUsername" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername obj] : ["toPoolUsername" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["algoName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName obj] : ["amount" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount obj] : ["coinName" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName obj] : ["day" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay obj] : ["hashRate" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate obj] : ["poolUsername" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername obj] : ["toPoolUsername" Data.Aeson.Types.ToJSON..= getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails" (\obj -> ((((((GHC.Base.pure GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "algoName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coinName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hashRate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "poolUsername")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "toPoolUsername"))

-- | Create a new 'GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails' with all required fields.
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails ::
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount'
  GHC.Types.Double ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername'
  Data.Text.Internal.Text ->
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails
mkGetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername =
  GetSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetails
    { getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAlgoName,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsAmount,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsCoinName,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsDay,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsHashRate,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsPoolUsername,
      getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername = getSapiV1MiningHashTransferProfitDetailsResponseBody200DataProfitTransferDetailsToPoolUsername
    }

-- | > GET /sapi/v1/mining/hash-transfer/profit/details
--
-- The same as 'getSapiV1MiningHashTransferProfitDetails' but accepts an explicit configuration.
getSapiV1MiningHashTransferProfitDetailsWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningHashTransferProfitDetailsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MiningHashTransferProfitDetailsResponse)
getSapiV1MiningHashTransferProfitDetailsWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MiningHashTransferProfitDetailsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningHashTransferProfitDetailsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1MiningHashTransferProfitDetailsResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningHashTransferProfitDetailsResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MiningHashTransferProfitDetailsResponse401
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
          (Data.Text.pack "/sapi/v1/mining/hash-transfer/profit/details")
          [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/mining/hash-transfer/profit/details
--
-- The same as 'getSapiV1MiningHashTransferProfitDetails' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MiningHashTransferProfitDetailsRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningHashTransferProfitDetailsParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MiningHashTransferProfitDetailsRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/mining/hash-transfer/profit/details")
        [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/mining/hash-transfer/profit/details
--
-- The same as 'getSapiV1MiningHashTransferProfitDetails' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MiningHashTransferProfitDetailsWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MiningHashTransferProfitDetailsParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MiningHashTransferProfitDetailsWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/mining/hash-transfer/profit/details")
          [ Binance.Common.QueryParameter (Data.Text.pack "configId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryConfigId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "userName") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryUserName parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageIndex") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageIndex parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "pageSize") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MiningHashTransferProfitDetailsParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MiningHashTransferProfitDetailsParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )