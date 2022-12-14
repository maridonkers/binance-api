{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1FuturesTransfer
module Binance.Operations.PostSapiV1FuturesTransfer where

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

-- | > POST /sapi/v1/futures/transfer
--
-- Execute transfer between spot account and futures account.
--
-- Weight(IP): 1
postSapiV1FuturesTransfer ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1FuturesTransferResponse)
postSapiV1FuturesTransfer parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1FuturesTransferResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1FuturesTransferResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1FuturesTransferResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1FuturesTransferResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1FuturesTransferResponse401
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
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/futures/transfer")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/futures\/transfer.POST.parameters@ in the specification.
data PostSapiV1FuturesTransferParameters = PostSapiV1FuturesTransferParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    postSapiV1FuturesTransferParametersQueryAmount :: GHC.Types.Double,
    -- | queryAsset: Represents the parameter named \'asset\'
    postSapiV1FuturesTransferParametersQueryAsset :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1FuturesTransferParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1FuturesTransferParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1FuturesTransferParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryType: Represents the parameter named \'type\'
    --
    -- 1: transfer from spot account to USDT-??? futures account. 2: transfer from USDT-??? futures account to spot account. 3: transfer from spot account to COIN-??? futures account. 4: transfer from COIN-??? futures account to spot account.
    postSapiV1FuturesTransferParametersQueryType :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1FuturesTransferParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1FuturesTransferParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryTimestamp obj] : ["queryType" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1FuturesTransferParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryTimestamp obj] : ["queryType" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferParametersQueryType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1FuturesTransferParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1FuturesTransferParameters" (\obj -> (((((GHC.Base.pure PostSapiV1FuturesTransferParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryType"))

-- | Create a new 'PostSapiV1FuturesTransferParameters' with all required fields.
mkPostSapiV1FuturesTransferParameters ::
  -- | 'postSapiV1FuturesTransferParametersQueryAmount'
  GHC.Types.Double ->
  -- | 'postSapiV1FuturesTransferParametersQueryAsset'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1FuturesTransferParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1FuturesTransferParametersQueryTimestamp'
  GHC.Int.Int64 ->
  -- | 'postSapiV1FuturesTransferParametersQueryType'
  GHC.Int.Int64 ->
  PostSapiV1FuturesTransferParameters
mkPostSapiV1FuturesTransferParameters postSapiV1FuturesTransferParametersQueryAmount postSapiV1FuturesTransferParametersQueryAsset postSapiV1FuturesTransferParametersQuerySignature postSapiV1FuturesTransferParametersQueryTimestamp postSapiV1FuturesTransferParametersQueryType =
  PostSapiV1FuturesTransferParameters
    { postSapiV1FuturesTransferParametersQueryAmount = postSapiV1FuturesTransferParametersQueryAmount,
      postSapiV1FuturesTransferParametersQueryAsset = postSapiV1FuturesTransferParametersQueryAsset,
      postSapiV1FuturesTransferParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1FuturesTransferParametersQuerySignature = postSapiV1FuturesTransferParametersQuerySignature,
      postSapiV1FuturesTransferParametersQueryTimestamp = postSapiV1FuturesTransferParametersQueryTimestamp,
      postSapiV1FuturesTransferParametersQueryType = postSapiV1FuturesTransferParametersQueryType
    }

-- | Represents a response of the operation 'postSapiV1FuturesTransfer'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1FuturesTransferResponseError' is used.
data PostSapiV1FuturesTransferResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1FuturesTransferResponseError GHC.Base.String
  | -- | Futures Transfer
    PostSapiV1FuturesTransferResponse200 PostSapiV1FuturesTransferResponseBody200
  | -- | Bad Request
    PostSapiV1FuturesTransferResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1FuturesTransferResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/futures\/transfer.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1FuturesTransferResponseBody200 = PostSapiV1FuturesTransferResponseBody200
  { -- | tranId
    postSapiV1FuturesTransferResponseBody200TranId :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1FuturesTransferResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferResponseBody200TranId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= postSapiV1FuturesTransferResponseBody200TranId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1FuturesTransferResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1FuturesTransferResponseBody200" (\obj -> GHC.Base.pure PostSapiV1FuturesTransferResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tranId"))

-- | Create a new 'PostSapiV1FuturesTransferResponseBody200' with all required fields.
mkPostSapiV1FuturesTransferResponseBody200 ::
  -- | 'postSapiV1FuturesTransferResponseBody200TranId'
  GHC.Int.Int64 ->
  PostSapiV1FuturesTransferResponseBody200
mkPostSapiV1FuturesTransferResponseBody200 postSapiV1FuturesTransferResponseBody200TranId = PostSapiV1FuturesTransferResponseBody200 {postSapiV1FuturesTransferResponseBody200TranId = postSapiV1FuturesTransferResponseBody200TranId}

-- | > POST /sapi/v1/futures/transfer
--
-- The same as 'postSapiV1FuturesTransfer' but accepts an explicit configuration.
postSapiV1FuturesTransferWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1FuturesTransferResponse)
postSapiV1FuturesTransferWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1FuturesTransferResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1FuturesTransferResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1FuturesTransferResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1FuturesTransferResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1FuturesTransferResponse401
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
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/futures/transfer")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/futures/transfer
--
-- The same as 'postSapiV1FuturesTransfer' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1FuturesTransferRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1FuturesTransferRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/futures/transfer")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/futures/transfer
--
-- The same as 'postSapiV1FuturesTransfer' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1FuturesTransferWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1FuturesTransferParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1FuturesTransferWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/futures/transfer")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1FuturesTransferParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1FuturesTransferParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
