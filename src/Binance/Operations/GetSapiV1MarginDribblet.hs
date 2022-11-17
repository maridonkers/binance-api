{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1MarginDribblet
module Binance.Operations.GetSapiV1MarginDribblet where

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

-- | > GET /sapi/v1/margin/dribblet
--
-- Query the historical information of user\'s margin account small-value asset conversion BNB.
--
-- Weight(IP): 1
getSapiV1MarginDribblet ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginDribbletParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1MarginDribbletResponse)
getSapiV1MarginDribblet parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1MarginDribbletResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginDribbletResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1MarginDribbletResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginDribbletResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1MarginDribbletResponse401
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
        (Data.Text.pack "/sapi/v1/margin/dribblet")
        [ Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/dribblet.GET.parameters@ in the specification.
data GetSapiV1MarginDribbletParameters = GetSapiV1MarginDribbletParameters
  { -- | queryEndTime: Represents the parameter named \'endTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginDribbletParametersQueryEndTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1MarginDribbletParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1MarginDribbletParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryStartTime: Represents the parameter named \'startTime\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginDribbletParametersQueryStartTime :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1MarginDribbletParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginDribbletParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEndTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStartTime" Data.Aeson.Types.ToJSON..=)) (getSapiV1MarginDribbletParametersQueryStartTime obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginDribbletParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginDribbletParameters" (\obj -> ((((GHC.Base.pure GetSapiV1MarginDribbletParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEndTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStartTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1MarginDribbletParameters' with all required fields.
mkGetSapiV1MarginDribbletParameters ::
  -- | 'getSapiV1MarginDribbletParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1MarginDribbletParameters
mkGetSapiV1MarginDribbletParameters getSapiV1MarginDribbletParametersQuerySignature getSapiV1MarginDribbletParametersQueryTimestamp =
  GetSapiV1MarginDribbletParameters
    { getSapiV1MarginDribbletParametersQueryEndTime = GHC.Maybe.Nothing,
      getSapiV1MarginDribbletParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1MarginDribbletParametersQuerySignature = getSapiV1MarginDribbletParametersQuerySignature,
      getSapiV1MarginDribbletParametersQueryStartTime = GHC.Maybe.Nothing,
      getSapiV1MarginDribbletParametersQueryTimestamp = getSapiV1MarginDribbletParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1MarginDribblet'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1MarginDribbletResponseError' is used.
data GetSapiV1MarginDribbletResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1MarginDribbletResponseError GHC.Base.String
  | -- | Dust Log
    GetSapiV1MarginDribbletResponse200 GetSapiV1MarginDribbletResponseBody200
  | -- | Bad Request
    GetSapiV1MarginDribbletResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1MarginDribbletResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/dribblet.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1MarginDribbletResponseBody200 = GetSapiV1MarginDribbletResponseBody200
  { -- | total
    getSapiV1MarginDribbletResponseBody200Total :: GHC.Int.Int64,
    -- | userAssetDribblets
    getSapiV1MarginDribbletResponseBody200UserAssetDribblets :: ([GetSapiV1MarginDribbletResponseBody200UserAssetDribblets])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginDribbletResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["total" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200Total obj] : ["userAssetDribblets" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribblets obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["total" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200Total obj] : ["userAssetDribblets" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribblets obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginDribbletResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginDribbletResponseBody200" (\obj -> (GHC.Base.pure GetSapiV1MarginDribbletResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "userAssetDribblets"))

-- | Create a new 'GetSapiV1MarginDribbletResponseBody200' with all required fields.
mkGetSapiV1MarginDribbletResponseBody200 ::
  -- | 'getSapiV1MarginDribbletResponseBody200Total'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribblets'
  [GetSapiV1MarginDribbletResponseBody200UserAssetDribblets] ->
  GetSapiV1MarginDribbletResponseBody200
mkGetSapiV1MarginDribbletResponseBody200 getSapiV1MarginDribbletResponseBody200Total getSapiV1MarginDribbletResponseBody200UserAssetDribblets =
  GetSapiV1MarginDribbletResponseBody200
    { getSapiV1MarginDribbletResponseBody200Total = getSapiV1MarginDribbletResponseBody200Total,
      getSapiV1MarginDribbletResponseBody200UserAssetDribblets = getSapiV1MarginDribbletResponseBody200UserAssetDribblets
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/dribblet.GET.responses.200.content.application\/json.schema.properties.userAssetDribblets.items@ in the specification.
data GetSapiV1MarginDribbletResponseBody200UserAssetDribblets = GetSapiV1MarginDribbletResponseBody200UserAssetDribblets
  { -- | operateTime
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime :: GHC.Int.Int64,
    -- | totalServiceChargeAmount
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount :: Data.Text.Internal.Text,
    -- | totalTransferedAmount
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount :: Data.Text.Internal.Text,
    -- | transId
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId :: GHC.Int.Int64,
    -- | userAssetDribbletDetails
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails :: ([GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginDribbletResponseBody200UserAssetDribblets where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["operateTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime obj] : ["totalServiceChargeAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount obj] : ["totalTransferedAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount obj] : ["transId" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId obj] : ["userAssetDribbletDetails" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["operateTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime obj] : ["totalServiceChargeAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount obj] : ["totalTransferedAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount obj] : ["transId" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId obj] : ["userAssetDribbletDetails" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginDribbletResponseBody200UserAssetDribblets where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginDribbletResponseBody200UserAssetDribblets" (\obj -> ((((GHC.Base.pure GetSapiV1MarginDribbletResponseBody200UserAssetDribblets GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "operateTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalServiceChargeAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalTransferedAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "userAssetDribbletDetails"))

-- | Create a new 'GetSapiV1MarginDribbletResponseBody200UserAssetDribblets' with all required fields.
mkGetSapiV1MarginDribbletResponseBody200UserAssetDribblets ::
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails'
  [GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails] ->
  GetSapiV1MarginDribbletResponseBody200UserAssetDribblets
mkGetSapiV1MarginDribbletResponseBody200UserAssetDribblets getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails =
  GetSapiV1MarginDribbletResponseBody200UserAssetDribblets
    { getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsOperateTime,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalServiceChargeAmount,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTotalTransferedAmount,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsTransId,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/dribblet.GET.responses.200.content.application\/json.schema.properties.userAssetDribblets.items.properties.userAssetDribbletDetails.items@ in the specification.
data GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails = GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails
  { -- | amount
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount :: Data.Text.Internal.Text,
    -- | fromAsset
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset :: Data.Text.Internal.Text,
    -- | operateTime
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime :: GHC.Int.Int64,
    -- | serviceChargeAmount
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount :: Data.Text.Internal.Text,
    -- | transId
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId :: GHC.Int.Int64,
    -- | transferedAmount
    getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount obj] : ["fromAsset" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset obj] : ["operateTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime obj] : ["serviceChargeAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount obj] : ["transId" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId obj] : ["transferedAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount obj] : ["fromAsset" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset obj] : ["operateTime" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime obj] : ["serviceChargeAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount obj] : ["transId" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId obj] : ["transferedAmount" Data.Aeson.Types.ToJSON..= getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails" (\obj -> (((((GHC.Base.pure GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fromAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "operateTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "serviceChargeAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transferedAmount"))

-- | Create a new 'GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails' with all required fields.
mkGetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails ::
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId'
  GHC.Int.Int64 ->
  -- | 'getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount'
  Data.Text.Internal.Text ->
  GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails
mkGetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount =
  GetSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetails
    { getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsAmount,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsFromAsset,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsOperateTime,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsServiceChargeAmount,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransId,
      getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount = getSapiV1MarginDribbletResponseBody200UserAssetDribbletsUserAssetDribbletDetailsTransferedAmount
    }

-- | > GET /sapi/v1/margin/dribblet
--
-- The same as 'getSapiV1MarginDribblet' but accepts an explicit configuration.
getSapiV1MarginDribbletWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginDribbletParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1MarginDribbletResponse)
getSapiV1MarginDribbletWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1MarginDribbletResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginDribbletResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1MarginDribbletResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginDribbletResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1MarginDribbletResponse401
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
          (Data.Text.pack "/sapi/v1/margin/dribblet")
          [ Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/margin/dribblet
--
-- The same as 'getSapiV1MarginDribblet' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginDribbletRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginDribbletParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginDribbletRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/margin/dribblet")
        [ Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/margin/dribblet
--
-- The same as 'getSapiV1MarginDribblet' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1MarginDribbletWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1MarginDribbletParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1MarginDribbletWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/margin/dribblet")
          [ Binance.Common.QueryParameter (Data.Text.pack "startTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryStartTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "endTime") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryEndTime parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1MarginDribbletParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1MarginDribbletParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )