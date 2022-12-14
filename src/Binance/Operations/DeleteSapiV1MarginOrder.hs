{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteSapiV1MarginOrder
module Binance.Operations.DeleteSapiV1MarginOrder where

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

-- | > DELETE /sapi/v1/margin/order
--
-- Cancel an active order for margin account.
--
-- Either \`orderId\` or \`origClientOrderId\` must be sent.
--
-- Weight(IP): 10
deleteSapiV1MarginOrder ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteSapiV1MarginOrderResponse)
deleteSapiV1MarginOrder parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteSapiV1MarginOrderResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginOrderResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            MarginOrder
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginOrderResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteSapiV1MarginOrderResponse401
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
        (Data.Text.pack "/sapi/v1/margin/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "newClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryNewClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/order.DELETE.parameters@ in the specification.
data DeleteSapiV1MarginOrderParameters = DeleteSapiV1MarginOrderParameters
  { -- | queryIsIsolated: Represents the parameter named \'isIsolated\'
    --
    -- * \`TRUE\` - For isolated margin
    -- * \`FALSE\` - Default, not for isolated margin
    deleteSapiV1MarginOrderParametersQueryIsIsolated :: (GHC.Maybe.Maybe DeleteSapiV1MarginOrderParametersQueryIsIsolated),
    -- | queryNewClientOrderId: Represents the parameter named \'newClientOrderId\'
    --
    -- Used to uniquely identify this cancel. Automatically generated by default
    deleteSapiV1MarginOrderParametersQueryNewClientOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrderId: Represents the parameter named \'orderId\'
    --
    -- Order id
    deleteSapiV1MarginOrderParametersQueryOrderId :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | queryOrigClientOrderId: Represents the parameter named \'origClientOrderId\'
    --
    -- Order id from client
    deleteSapiV1MarginOrderParametersQueryOrigClientOrderId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    deleteSapiV1MarginOrderParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    deleteSapiV1MarginOrderParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    deleteSapiV1MarginOrderParametersQuerySymbol :: Data.Text.Internal.Text,
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    deleteSapiV1MarginOrderParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1MarginOrderParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNewClientOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryNewClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrigClientOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryOrigClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQuerySignature obj] : ["querySymbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNewClientOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryNewClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrigClientOrderId" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryOrigClientOrderId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (deleteSapiV1MarginOrderParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQuerySignature obj] : ["querySymbol" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQuerySymbol obj] : ["queryTimestamp" Data.Aeson.Types.ToJSON..= deleteSapiV1MarginOrderParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1MarginOrderParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSapiV1MarginOrderParameters" (\obj -> (((((((GHC.Base.pure DeleteSapiV1MarginOrderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIsIsolated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryNewClientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrigClientOrderId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'DeleteSapiV1MarginOrderParameters' with all required fields.
mkDeleteSapiV1MarginOrderParameters ::
  -- | 'deleteSapiV1MarginOrderParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1MarginOrderParametersQuerySymbol'
  Data.Text.Internal.Text ->
  -- | 'deleteSapiV1MarginOrderParametersQueryTimestamp'
  GHC.Int.Int64 ->
  DeleteSapiV1MarginOrderParameters
mkDeleteSapiV1MarginOrderParameters deleteSapiV1MarginOrderParametersQuerySignature deleteSapiV1MarginOrderParametersQuerySymbol deleteSapiV1MarginOrderParametersQueryTimestamp =
  DeleteSapiV1MarginOrderParameters
    { deleteSapiV1MarginOrderParametersQueryIsIsolated = GHC.Maybe.Nothing,
      deleteSapiV1MarginOrderParametersQueryNewClientOrderId = GHC.Maybe.Nothing,
      deleteSapiV1MarginOrderParametersQueryOrderId = GHC.Maybe.Nothing,
      deleteSapiV1MarginOrderParametersQueryOrigClientOrderId = GHC.Maybe.Nothing,
      deleteSapiV1MarginOrderParametersQueryRecvWindow = GHC.Maybe.Nothing,
      deleteSapiV1MarginOrderParametersQuerySignature = deleteSapiV1MarginOrderParametersQuerySignature,
      deleteSapiV1MarginOrderParametersQuerySymbol = deleteSapiV1MarginOrderParametersQuerySymbol,
      deleteSapiV1MarginOrderParametersQueryTimestamp = deleteSapiV1MarginOrderParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/margin\/order.DELETE.parameters.properties.queryIsIsolated@ in the specification.
--
-- Represents the parameter named \'isIsolated\'
--
-- * \`TRUE\` - For isolated margin
-- * \`FALSE\` - Default, not for isolated margin
data DeleteSapiV1MarginOrderParametersQueryIsIsolated
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    DeleteSapiV1MarginOrderParametersQueryIsIsolatedOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    DeleteSapiV1MarginOrderParametersQueryIsIsolatedTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"TRUE"@
    DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumTRUE
  | -- | Represents the JSON value @"FALSE"@
    DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumFALSE
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSapiV1MarginOrderParametersQueryIsIsolated where
  toJSON (DeleteSapiV1MarginOrderParametersQueryIsIsolatedOther val) = val
  toJSON (DeleteSapiV1MarginOrderParametersQueryIsIsolatedTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumTRUE) = "TRUE"
  toJSON (DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumFALSE) = "FALSE"

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSapiV1MarginOrderParametersQueryIsIsolated where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "TRUE" -> DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumTRUE
            | val GHC.Classes.== "FALSE" -> DeleteSapiV1MarginOrderParametersQueryIsIsolatedEnumFALSE
            | GHC.Base.otherwise -> DeleteSapiV1MarginOrderParametersQueryIsIsolatedOther val
      )

-- | Represents a response of the operation 'deleteSapiV1MarginOrder'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSapiV1MarginOrderResponseError' is used.
data DeleteSapiV1MarginOrderResponse
  = -- | Means either no matching case available or a parse error
    DeleteSapiV1MarginOrderResponseError GHC.Base.String
  | -- | Cancelled margin order details
    DeleteSapiV1MarginOrderResponse200 MarginOrder
  | -- | Bad Request
    DeleteSapiV1MarginOrderResponse400 Error
  | -- | Unauthorized Request
    DeleteSapiV1MarginOrderResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > DELETE /sapi/v1/margin/order
--
-- The same as 'deleteSapiV1MarginOrder' but accepts an explicit configuration.
deleteSapiV1MarginOrderWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response DeleteSapiV1MarginOrderResponse)
deleteSapiV1MarginOrderWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSapiV1MarginOrderResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginOrderResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              MarginOrder
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginOrderResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSapiV1MarginOrderResponse401
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
          (Data.Text.pack "/sapi/v1/margin/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "newClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryNewClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > DELETE /sapi/v1/margin/order
--
-- The same as 'deleteSapiV1MarginOrder' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1MarginOrderRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1MarginOrderRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
        (Data.Text.pack "/sapi/v1/margin/order")
        [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "newClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryNewClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > DELETE /sapi/v1/margin/order
--
-- The same as 'deleteSapiV1MarginOrder' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteSapiV1MarginOrderWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteSapiV1MarginOrderParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
deleteSapiV1MarginOrderWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE")
          (Data.Text.pack "/sapi/v1/margin/order")
          [ Binance.Common.QueryParameter (Data.Text.pack "symbol") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySymbol parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "orderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "origClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryOrigClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "newClientOrderId") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryNewClientOrderId parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> deleteSapiV1MarginOrderParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (deleteSapiV1MarginOrderParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
