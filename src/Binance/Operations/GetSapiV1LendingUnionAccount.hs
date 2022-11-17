{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSapiV1LendingUnionAccount
module Binance.Operations.GetSapiV1LendingUnionAccount where

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

-- | > GET /sapi/v1/lending/union/account
--
-- Weight(IP): 1
getSapiV1LendingUnionAccount ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response GetSapiV1LendingUnionAccountResponse)
getSapiV1LendingUnionAccount parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSapiV1LendingUnionAccountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionAccountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSapiV1LendingUnionAccountResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionAccountResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSapiV1LendingUnionAccountResponse401
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
        (Data.Text.pack "/sapi/v1/lending/union/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/union\/account.GET.parameters@ in the specification.
data GetSapiV1LendingUnionAccountParameters = GetSapiV1LendingUnionAccountParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    getSapiV1LendingUnionAccountParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    getSapiV1LendingUnionAccountParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    getSapiV1LendingUnionAccountParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionAccountParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (getSapiV1LendingUnionAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionAccountParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1LendingUnionAccountParameters" (\obj -> ((GHC.Base.pure GetSapiV1LendingUnionAccountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'GetSapiV1LendingUnionAccountParameters' with all required fields.
mkGetSapiV1LendingUnionAccountParameters ::
  -- | 'getSapiV1LendingUnionAccountParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountParametersQueryTimestamp'
  GHC.Int.Int64 ->
  GetSapiV1LendingUnionAccountParameters
mkGetSapiV1LendingUnionAccountParameters getSapiV1LendingUnionAccountParametersQuerySignature getSapiV1LendingUnionAccountParametersQueryTimestamp =
  GetSapiV1LendingUnionAccountParameters
    { getSapiV1LendingUnionAccountParametersQueryRecvWindow = GHC.Maybe.Nothing,
      getSapiV1LendingUnionAccountParametersQuerySignature = getSapiV1LendingUnionAccountParametersQuerySignature,
      getSapiV1LendingUnionAccountParametersQueryTimestamp = getSapiV1LendingUnionAccountParametersQueryTimestamp
    }

-- | Represents a response of the operation 'getSapiV1LendingUnionAccount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSapiV1LendingUnionAccountResponseError' is used.
data GetSapiV1LendingUnionAccountResponse
  = -- | Means either no matching case available or a parse error
    GetSapiV1LendingUnionAccountResponseError GHC.Base.String
  | -- | Lending account
    GetSapiV1LendingUnionAccountResponse200 GetSapiV1LendingUnionAccountResponseBody200
  | -- | Bad Request
    GetSapiV1LendingUnionAccountResponse400 Error
  | -- | Unauthorized Request
    GetSapiV1LendingUnionAccountResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/union\/account.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSapiV1LendingUnionAccountResponseBody200 = GetSapiV1LendingUnionAccountResponseBody200
  { -- | positionAmountVos
    getSapiV1LendingUnionAccountResponseBody200PositionAmountVos :: ([GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos]),
    -- | totalAmountInBTC
    getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC :: Data.Text.Internal.Text,
    -- | totalAmountInUSDT
    getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT :: Data.Text.Internal.Text,
    -- | totalFixedAmountInBTC
    getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC :: Data.Text.Internal.Text,
    -- | totalFixedAmountInUSDT
    getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT :: Data.Text.Internal.Text,
    -- | totalFlexibleInBTC
    getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC :: Data.Text.Internal.Text,
    -- | totalFlexibleInUSDT
    getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionAccountResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["positionAmountVos" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVos obj] : ["totalAmountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC obj] : ["totalAmountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT obj] : ["totalFixedAmountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC obj] : ["totalFixedAmountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT obj] : ["totalFlexibleInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC obj] : ["totalFlexibleInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["positionAmountVos" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVos obj] : ["totalAmountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC obj] : ["totalAmountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT obj] : ["totalFixedAmountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC obj] : ["totalFixedAmountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT obj] : ["totalFlexibleInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC obj] : ["totalFlexibleInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionAccountResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1LendingUnionAccountResponseBody200" (\obj -> ((((((GHC.Base.pure GetSapiV1LendingUnionAccountResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "positionAmountVos")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalAmountInBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalAmountInUSDT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalFixedAmountInBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalFixedAmountInUSDT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalFlexibleInBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "totalFlexibleInUSDT"))

-- | Create a new 'GetSapiV1LendingUnionAccountResponseBody200' with all required fields.
mkGetSapiV1LendingUnionAccountResponseBody200 ::
  -- | 'getSapiV1LendingUnionAccountResponseBody200PositionAmountVos'
  [GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos] ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT'
  Data.Text.Internal.Text ->
  GetSapiV1LendingUnionAccountResponseBody200
mkGetSapiV1LendingUnionAccountResponseBody200 getSapiV1LendingUnionAccountResponseBody200PositionAmountVos getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT =
  GetSapiV1LendingUnionAccountResponseBody200
    { getSapiV1LendingUnionAccountResponseBody200PositionAmountVos = getSapiV1LendingUnionAccountResponseBody200PositionAmountVos,
      getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC = getSapiV1LendingUnionAccountResponseBody200TotalAmountInBTC,
      getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT = getSapiV1LendingUnionAccountResponseBody200TotalAmountInUSDT,
      getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC = getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInBTC,
      getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT = getSapiV1LendingUnionAccountResponseBody200TotalFixedAmountInUSDT,
      getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC = getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInBTC,
      getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT = getSapiV1LendingUnionAccountResponseBody200TotalFlexibleInUSDT
    }

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/union\/account.GET.responses.200.content.application\/json.schema.properties.positionAmountVos.items@ in the specification.
data GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos = GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos
  { -- | amount
    getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount :: Data.Text.Internal.Text,
    -- | amountInBTC
    getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC :: Data.Text.Internal.Text,
    -- | amountInUSDT
    getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT :: Data.Text.Internal.Text,
    -- | asset
    getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount obj] : ["amountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC obj] : ["amountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount obj] : ["amountInBTC" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC obj] : ["amountInUSDT" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT obj] : ["asset" Data.Aeson.Types.ToJSON..= getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos" (\obj -> (((GHC.Base.pure GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amountInBTC")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amountInUSDT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset"))

-- | Create a new 'GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos' with all required fields.
mkGetSapiV1LendingUnionAccountResponseBody200PositionAmountVos ::
  -- | 'getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT'
  Data.Text.Internal.Text ->
  -- | 'getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset'
  Data.Text.Internal.Text ->
  GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos
mkGetSapiV1LendingUnionAccountResponseBody200PositionAmountVos getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset =
  GetSapiV1LendingUnionAccountResponseBody200PositionAmountVos
    { getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount = getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmount,
      getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC = getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInBTC,
      getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT = getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAmountInUSDT,
      getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset = getSapiV1LendingUnionAccountResponseBody200PositionAmountVosAsset
    }

-- | > GET /sapi/v1/lending/union/account
--
-- The same as 'getSapiV1LendingUnionAccount' but accepts an explicit configuration.
getSapiV1LendingUnionAccountWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response GetSapiV1LendingUnionAccountResponse)
getSapiV1LendingUnionAccountWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either GetSapiV1LendingUnionAccountResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionAccountResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GetSapiV1LendingUnionAccountResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionAccountResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     GetSapiV1LendingUnionAccountResponse401
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
          (Data.Text.pack "/sapi/v1/lending/union/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > GET /sapi/v1/lending/union/account
--
-- The same as 'getSapiV1LendingUnionAccount' but returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1LendingUnionAccountRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1LendingUnionAccountRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/sapi/v1/lending/union/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > GET /sapi/v1/lending/union/account
--
-- The same as 'getSapiV1LendingUnionAccount' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getSapiV1LendingUnionAccountWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSapiV1LendingUnionAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
getSapiV1LendingUnionAccountWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack "/sapi/v1/lending/union/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSapiV1LendingUnionAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getSapiV1LendingUnionAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )