{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSapiV1MarginIsolatedAccount
module Binance.Operations.DeleteSapiV1MarginIsolatedAccount where

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

-- | > DELETE /sapi/v1/margin/isolated/account
--
-- Disable isolated margin account for a specific symbol. Each trading pair can only be deactivated once every 24 hours .
--
-- Weight(UID): 300
deleteSapiV1MarginIsolatedAccount ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginIsolatedAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSapiV1MarginIsolatedAccountResponse)
deleteSapiV1MarginIsolatedAccount parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteSapiV1MarginIsolatedAccountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginIsolatedAccountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            DeleteSapiV1MarginIsolatedAccountResponseBody200
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginIsolatedAccountResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginIsolatedAccountResponse401
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
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
        (Data.Text.pack "/sapi/v1/margin/isolated/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/isolated\/account.DELETE.parameters@ in the specification.
data DeleteSapiV1MarginIsolatedAccountParameters = DeleteSapiV1MarginIsolatedAccountParameters
  { -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    deleteSapiV1MarginIsolatedAccountParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    deleteSapiV1MarginIsolatedAccountParametersQuerySymbol :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1MarginIsolatedAccountParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQuerySignature obj] : ["querySymbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQuerySignature obj] : ["querySymbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1MarginIsolatedAccountParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSapiV1MarginIsolatedAccountParameters" (\obj -> (((GHC.Base.pure DeleteSapiV1MarginIsolatedAccountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'DeleteSapiV1MarginIsolatedAccountParameters' with all required fields.
mkDeleteSapiV1MarginIsolatedAccountParameters ::
  -- | 'deleteSapiV1MarginIsolatedAccountParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1MarginIsolatedAccountParametersQuerySymbol'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp'
  GHC.Int.Int64 ->
  DeleteSapiV1MarginIsolatedAccountParameters
mkDeleteSapiV1MarginIsolatedAccountParameters deleteSapiV1MarginIsolatedAccountParametersQuerySignature deleteSapiV1MarginIsolatedAccountParametersQuerySymbol deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp =
  DeleteSapiV1MarginIsolatedAccountParameters
    { deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow = GHC.Maybe.Nothing,
      deleteSapiV1MarginIsolatedAccountParametersQuerySignature = deleteSapiV1MarginIsolatedAccountParametersQuerySignature,
      deleteSapiV1MarginIsolatedAccountParametersQuerySymbol = deleteSapiV1MarginIsolatedAccountParametersQuerySymbol,
      deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp = deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp
    }

-- | Represents a response of the operation 'deleteSapiV1MarginIsolatedAccount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSapiV1MarginIsolatedAccountResponseError' is used.
data DeleteSapiV1MarginIsolatedAccountResponse
  = -- | Means either no matching case available or a parse error
    DeleteSapiV1MarginIsolatedAccountResponseError GHC.Base.String
  | -- | Isolated Margin Account status
    DeleteSapiV1MarginIsolatedAccountResponse200 DeleteSapiV1MarginIsolatedAccountResponseBody200
  | -- | Bad Request
    DeleteSapiV1MarginIsolatedAccountResponse400 Error
  | -- | Unauthorized Request
    DeleteSapiV1MarginIsolatedAccountResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/isolated\/account.DELETE.responses.200.content.application\/json.schema@ in the specification.
data DeleteSapiV1MarginIsolatedAccountResponseBody200 = DeleteSapiV1MarginIsolatedAccountResponseBody200
  { -- | success
    deleteSapiV1MarginIsolatedAccountResponseBody200Success :: GHC.Types.Bool,
    -- | symbol
    deleteSapiV1MarginIsolatedAccountResponseBody200Symbol :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1MarginIsolatedAccountResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountResponseBody200Success obj] : ["symbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountResponseBody200Symbol obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["success" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountResponseBody200Success obj] : ["symbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginIsolatedAccountResponseBody200Symbol obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1MarginIsolatedAccountResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSapiV1MarginIsolatedAccountResponseBody200" (\obj -> (GHC.Base.pure DeleteSapiV1MarginIsolatedAccountResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "symbol"))

-- | Create a new 'DeleteSapiV1MarginIsolatedAccountResponseBody200' with all required fields.
mkDeleteSapiV1MarginIsolatedAccountResponseBody200 ::
  -- | 'deleteSapiV1MarginIsolatedAccountResponseBody200Success'
  GHC.Types.Bool ->
  -- | 'deleteSapiV1MarginIsolatedAccountResponseBody200Symbol'
  Data.Text.Internal.Text ->
  DeleteSapiV1MarginIsolatedAccountResponseBody200
mkDeleteSapiV1MarginIsolatedAccountResponseBody200 deleteSapiV1MarginIsolatedAccountResponseBody200Success deleteSapiV1MarginIsolatedAccountResponseBody200Symbol =
  DeleteSapiV1MarginIsolatedAccountResponseBody200
    { deleteSapiV1MarginIsolatedAccountResponseBody200Success = deleteSapiV1MarginIsolatedAccountResponseBody200Success,
      deleteSapiV1MarginIsolatedAccountResponseBody200Symbol = deleteSapiV1MarginIsolatedAccountResponseBody200Symbol
    }

-- | > DELETE /sapi/v1/margin/isolated/account
--
-- The same as 'deleteSapiV1MarginIsolatedAccount' but accepts an explicit configuration.
deleteSapiV1MarginIsolatedAccountWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginIsolatedAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response DeleteSapiV1MarginIsolatedAccountResponse)
deleteSapiV1MarginIsolatedAccountWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSapiV1MarginIsolatedAccountResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginIsolatedAccountResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              DeleteSapiV1MarginIsolatedAccountResponseBody200
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginIsolatedAccountResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginIsolatedAccountResponse401
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
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
          (Data.Text.pack "/sapi/v1/margin/isolated/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > DELETE /sapi/v1/margin/isolated/account
--
-- The same as 'deleteSapiV1MarginIsolatedAccount' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1MarginIsolatedAccountRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginIsolatedAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1MarginIsolatedAccountRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
        (Data.Text.pack "/sapi/v1/margin/isolated/account")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > DELETE /sapi/v1/margin/isolated/account
--
-- The same as 'deleteSapiV1MarginIsolatedAccount' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1MarginIsolatedAccountWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginIsolatedAccountParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1MarginIsolatedAccountWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
          (Data.Text.pack "/sapi/v1/margin/isolated/account")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginIsolatedAccountParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginIsolatedAccountParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
