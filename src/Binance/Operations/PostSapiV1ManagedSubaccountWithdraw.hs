{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1ManagedSubaccountWithdraw
module Binance.Operations.PostSapiV1ManagedSubaccountWithdraw where

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

-- | > POST /sapi/v1/managed-subaccount/withdraw
--
-- Weight(IP): 1
postSapiV1ManagedSubaccountWithdraw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1ManagedSubaccountWithdrawParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1ManagedSubaccountWithdrawResponse)
postSapiV1ManagedSubaccountWithdraw parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1ManagedSubaccountWithdrawResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1ManagedSubaccountWithdrawResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PostSapiV1ManagedSubaccountWithdrawResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1ManagedSubaccountWithdrawResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1ManagedSubaccountWithdrawResponse401
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
        (Data.Text.pack "/sapi/v1/managed-subaccount/withdraw")
        [ Binance.Common.QueryParameter (Data.Text.pack "fromEmail") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "transferDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/managed-subaccount\/withdraw.POST.parameters@ in the specification.
data PostSapiV1ManagedSubaccountWithdrawParameters = PostSapiV1ManagedSubaccountWithdrawParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    postSapiV1ManagedSubaccountWithdrawParametersQueryAmount :: GHC.Types.Double,
    -- | queryAsset: Represents the parameter named \'asset\'
    postSapiV1ManagedSubaccountWithdrawParametersQueryAsset :: Data.Text.Internal.Text,
    -- | queryFromEmail: Represents the parameter named \'fromEmail\'
    --
    -- Sender email
    postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail :: Data.Text.Internal.Text,
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1ManagedSubaccountWithdrawParametersQuerySignature :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp :: GHC.Int.Int64,
    -- | queryTransferDate: Represents the parameter named \'transferDate\'
    --
    -- Withdrawals is automatically occur on the transfer date(UTC0). If a date is not selected, the withdrawal occurs right now
    postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate :: (GHC.Maybe.Maybe GHC.Int.Int64)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1ManagedSubaccountWithdrawParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryAsset obj] : ["queryFromEmail" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTransferDate" Data.Aeson.Types.ToJSON..=)) (postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryAsset obj] : ["queryFromEmail" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQuerySignature obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTransferDate" Data.Aeson.Types.ToJSON..=)) (postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1ManagedSubaccountWithdrawParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1ManagedSubaccountWithdrawParameters" (\obj -> ((((((GHC.Base.pure PostSapiV1ManagedSubaccountWithdrawParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFromEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryTransferDate"))

-- | Create a new 'PostSapiV1ManagedSubaccountWithdrawParameters' with all required fields.
mkPostSapiV1ManagedSubaccountWithdrawParameters ::
  -- | 'postSapiV1ManagedSubaccountWithdrawParametersQueryAmount'
  GHC.Types.Double ->
  -- | 'postSapiV1ManagedSubaccountWithdrawParametersQueryAsset'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1ManagedSubaccountWithdrawParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1ManagedSubaccountWithdrawParameters
mkPostSapiV1ManagedSubaccountWithdrawParameters postSapiV1ManagedSubaccountWithdrawParametersQueryAmount postSapiV1ManagedSubaccountWithdrawParametersQueryAsset postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail postSapiV1ManagedSubaccountWithdrawParametersQuerySignature postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp =
  PostSapiV1ManagedSubaccountWithdrawParameters
    { postSapiV1ManagedSubaccountWithdrawParametersQueryAmount = postSapiV1ManagedSubaccountWithdrawParametersQueryAmount,
      postSapiV1ManagedSubaccountWithdrawParametersQueryAsset = postSapiV1ManagedSubaccountWithdrawParametersQueryAsset,
      postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail = postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail,
      postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1ManagedSubaccountWithdrawParametersQuerySignature = postSapiV1ManagedSubaccountWithdrawParametersQuerySignature,
      postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp = postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp,
      postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postSapiV1ManagedSubaccountWithdraw'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1ManagedSubaccountWithdrawResponseError' is used.
data PostSapiV1ManagedSubaccountWithdrawResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1ManagedSubaccountWithdrawResponseError GHC.Base.String
  | -- | Transfer id
    PostSapiV1ManagedSubaccountWithdrawResponse200 PostSapiV1ManagedSubaccountWithdrawResponseBody200
  | -- | Bad Request
    PostSapiV1ManagedSubaccountWithdrawResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1ManagedSubaccountWithdrawResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/managed-subaccount\/withdraw.POST.responses.200.content.application\/json.schema@ in the specification.
data PostSapiV1ManagedSubaccountWithdrawResponseBody200 = PostSapiV1ManagedSubaccountWithdrawResponseBody200
  { -- | tranId
    postSapiV1ManagedSubaccountWithdrawResponseBody200TranId :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1ManagedSubaccountWithdrawResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawResponseBody200TranId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tranId" Data.Aeson.Types.ToJSON..= postSapiV1ManagedSubaccountWithdrawResponseBody200TranId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1ManagedSubaccountWithdrawResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1ManagedSubaccountWithdrawResponseBody200" (\obj -> GHC.Base.pure PostSapiV1ManagedSubaccountWithdrawResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tranId"))

-- | Create a new 'PostSapiV1ManagedSubaccountWithdrawResponseBody200' with all required fields.
mkPostSapiV1ManagedSubaccountWithdrawResponseBody200 ::
  -- | 'postSapiV1ManagedSubaccountWithdrawResponseBody200TranId'
  GHC.Int.Int64 ->
  PostSapiV1ManagedSubaccountWithdrawResponseBody200
mkPostSapiV1ManagedSubaccountWithdrawResponseBody200 postSapiV1ManagedSubaccountWithdrawResponseBody200TranId = PostSapiV1ManagedSubaccountWithdrawResponseBody200 {postSapiV1ManagedSubaccountWithdrawResponseBody200TranId = postSapiV1ManagedSubaccountWithdrawResponseBody200TranId}

-- | > POST /sapi/v1/managed-subaccount/withdraw
--
-- The same as 'postSapiV1ManagedSubaccountWithdraw' but accepts an explicit configuration.
postSapiV1ManagedSubaccountWithdrawWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1ManagedSubaccountWithdrawParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1ManagedSubaccountWithdrawResponse)
postSapiV1ManagedSubaccountWithdrawWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1ManagedSubaccountWithdrawResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1ManagedSubaccountWithdrawResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PostSapiV1ManagedSubaccountWithdrawResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1ManagedSubaccountWithdrawResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1ManagedSubaccountWithdrawResponse401
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
          (Data.Text.pack "/sapi/v1/managed-subaccount/withdraw")
          [ Binance.Common.QueryParameter (Data.Text.pack "fromEmail") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "transferDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/managed-subaccount/withdraw
--
-- The same as 'postSapiV1ManagedSubaccountWithdraw' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1ManagedSubaccountWithdrawRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1ManagedSubaccountWithdrawParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1ManagedSubaccountWithdrawRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/managed-subaccount/withdraw")
        [ Binance.Common.QueryParameter (Data.Text.pack "fromEmail") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "transferDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/managed-subaccount/withdraw
--
-- The same as 'postSapiV1ManagedSubaccountWithdraw' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1ManagedSubaccountWithdrawWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1ManagedSubaccountWithdrawParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1ManagedSubaccountWithdrawWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/managed-subaccount/withdraw")
          [ Binance.Common.QueryParameter (Data.Text.pack "fromEmail") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryFromEmail parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "transferDate") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryTransferDate parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1ManagedSubaccountWithdrawParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1ManagedSubaccountWithdrawParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )