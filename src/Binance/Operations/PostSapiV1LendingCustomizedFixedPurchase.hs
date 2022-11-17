{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1LendingCustomizedFixedPurchase
module Binance.Operations.PostSapiV1LendingCustomizedFixedPurchase where

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

-- | > POST /sapi/v1/lending/customizedFixed/purchase
--
-- Weight(IP): 1
postSapiV1LendingCustomizedFixedPurchase ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1LendingCustomizedFixedPurchaseParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1LendingCustomizedFixedPurchaseResponse)
postSapiV1LendingCustomizedFixedPurchase parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1LendingCustomizedFixedPurchaseResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1LendingCustomizedFixedPurchaseResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1LendingCustomizedFixedPurchaseResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1LendingCustomizedFixedPurchaseResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1LendingCustomizedFixedPurchaseResponse401
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
        (Data.Text.pack "/sapi/v1/lending/customizedFixed/purchase")
        [ Binance.Common.QueryParameter (Data.Text.pack "projectId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "lot") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/customizedFixed\/purchase.POST.parameters@ in the specification.
data PostSapiV1LendingCustomizedFixedPurchaseParameters = PostSapiV1LendingCustomizedFixedPurchaseParameters
  { -- | queryLot: Represents the parameter named \'lot\'
    postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot :: Data.Text.Internal.Text,
    -- | queryProjectId: Represents the parameter named \'projectId\'
    postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1LendingCustomizedFixedPurchaseParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryLot" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot obj] : ["queryProjectId" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryLot" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot obj] : ["queryProjectId" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1LendingCustomizedFixedPurchaseParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1LendingCustomizedFixedPurchaseParameters" (\obj -> ((((GHC.Base.pure PostSapiV1LendingCustomizedFixedPurchaseParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryLot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryProjectId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1LendingCustomizedFixedPurchaseParameters' with all required fields.
mkPostSapiV1LendingCustomizedFixedPurchaseParameters ::
  -- | 'postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1LendingCustomizedFixedPurchaseParameters
mkPostSapiV1LendingCustomizedFixedPurchaseParameters postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp =
  PostSapiV1LendingCustomizedFixedPurchaseParameters
    { postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot = postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot,
      postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId = postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId,
      postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature = postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature,
      postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp = postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp
    }

-- | Represents a response of the operation 'postSapiV1LendingCustomizedFixedPurchase'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1LendingCustomizedFixedPurchaseResponseError' is used.
data PostSapiV1LendingCustomizedFixedPurchaseResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1LendingCustomizedFixedPurchaseResponseError GHC.Base.String
  | -- | Generated Purchase Id
    PostSapiV1LendingCustomizedFixedPurchaseResponse200 PostSapiV1LendingCustomizedFixedPurchaseResponseBody200
  | -- | Bad Request
    PostSapiV1LendingCustomizedFixedPurchaseResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1LendingCustomizedFixedPurchaseResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/lending\/customizedFixed\/purchase.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1LendingCustomizedFixedPurchaseResponseBody200 = PostSapiV1LendingCustomizedFixedPurchaseResponseBody200
  { -- | purchaseId
    postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1LendingCustomizedFixedPurchaseResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["purchaseId" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["purchaseId" Data.Aeson.Types.ToJSON..= postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1LendingCustomizedFixedPurchaseResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1LendingCustomizedFixedPurchaseResponseBody200" (\obj -> GHC.Base.pure PostSapiV1LendingCustomizedFixedPurchaseResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "purchaseId"))

-- | Create a new 'PostSapiV1LendingCustomizedFixedPurchaseResponseBody200' with all required fields.
mkPostSapiV1LendingCustomizedFixedPurchaseResponseBody200 ::
  -- | 'postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId'
  Data.Text.Internal.Text ->
  PostSapiV1LendingCustomizedFixedPurchaseResponseBody200
mkPostSapiV1LendingCustomizedFixedPurchaseResponseBody200 postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId = PostSapiV1LendingCustomizedFixedPurchaseResponseBody200 {postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId = postSapiV1LendingCustomizedFixedPurchaseResponseBody200PurchaseId}

-- | > POST /sapi/v1/lending/customizedFixed/purchase
--
-- The same as 'postSapiV1LendingCustomizedFixedPurchase' but accepts an explicit configuration.
postSapiV1LendingCustomizedFixedPurchaseWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1LendingCustomizedFixedPurchaseParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1LendingCustomizedFixedPurchaseResponse)
postSapiV1LendingCustomizedFixedPurchaseWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1LendingCustomizedFixedPurchaseResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1LendingCustomizedFixedPurchaseResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1LendingCustomizedFixedPurchaseResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1LendingCustomizedFixedPurchaseResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1LendingCustomizedFixedPurchaseResponse401
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
          (Data.Text.pack "/sapi/v1/lending/customizedFixed/purchase")
          [ Binance.Common.QueryParameter (Data.Text.pack "projectId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "lot") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/lending/customizedFixed/purchase
--
-- The same as 'postSapiV1LendingCustomizedFixedPurchase' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1LendingCustomizedFixedPurchaseRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1LendingCustomizedFixedPurchaseParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1LendingCustomizedFixedPurchaseRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/lending/customizedFixed/purchase")
        [ Binance.Common.QueryParameter (Data.Text.pack "projectId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "lot") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/lending/customizedFixed/purchase
--
-- The same as 'postSapiV1LendingCustomizedFixedPurchase' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1LendingCustomizedFixedPurchaseWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1LendingCustomizedFixedPurchaseParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1LendingCustomizedFixedPurchaseWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/lending/customizedFixed/purchase")
          [ Binance.Common.QueryParameter (Data.Text.pack "projectId") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryProjectId parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "lot") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryLot parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1LendingCustomizedFixedPurchaseParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1LendingCustomizedFixedPurchaseParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
