{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSapiV1MarginLoan
module Binance.Operations.PostSapiV1MarginLoan where

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

-- | > POST /sapi/v1/margin/loan
--
-- Apply for a loan.
--
-- - If \"isIsolated\" = \"TRUE\", \"symbol\" must be sent
-- - \"isIsolated\" = \"FALSE\" for crossed margin loan
--
-- Weight(UID): 3000
postSapiV1MarginLoan ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MarginLoanParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response PostSapiV1MarginLoanResponse)
postSapiV1MarginLoan parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSapiV1MarginLoanResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MarginLoanResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Transaction
                                                      )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MarginLoanResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSapiV1MarginLoanResponse401
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
        (Data.Text.pack "/sapi/v1/margin/loan")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sapi\/v1\/margin\/loan.POST.parameters@ in the specification.
data PostSapiV1MarginLoanParameters = PostSapiV1MarginLoanParameters
  { -- | queryAmount: Represents the parameter named \'amount\'
    postSapiV1MarginLoanParametersQueryAmount :: GHC.Types.Double,
    -- | queryAsset: Represents the parameter named \'asset\'
    postSapiV1MarginLoanParametersQueryAsset :: Data.Text.Internal.Text,
    -- | queryIsIsolated: Represents the parameter named \'isIsolated\'
    --
    -- * \`TRUE\` - For isolated margin
    -- * \`FALSE\` - Default, not for isolated margin
    postSapiV1MarginLoanParametersQueryIsIsolated :: (GHC.Maybe.Maybe PostSapiV1MarginLoanParametersQueryIsIsolated),
    -- | queryRecvWindow: Represents the parameter named \'recvWindow\'
    --
    -- The value cannot be greater than 60000
    postSapiV1MarginLoanParametersQueryRecvWindow :: (GHC.Maybe.Maybe GHC.Int.Int64),
    -- | querySignature: Represents the parameter named \'signature\'
    --
    -- Signature
    postSapiV1MarginLoanParametersQuerySignature :: Data.Text.Internal.Text,
    -- | querySymbol: Represents the parameter named \'symbol\'
    --
    -- Trading symbol, e.g. BNBUSDT
    postSapiV1MarginLoanParametersQuerySymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTimestamp: Represents the parameter named \'timestamp\'
    --
    -- UTC timestamp in ms
    postSapiV1MarginLoanParametersQueryTimestamp :: GHC.Int.Int64
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1MarginLoanParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryTimestamp obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["queryAmount" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryAmount obj] : ["queryAsset" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryAsset obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIsIsolated" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQueryIsIsolated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRecvWindow" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQueryRecvWindow obj) : ["querySignature" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQuerySignature obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySymbol" Data.Aeson.Types.ToJSON..=)) (postSapiV1MarginLoanParametersQuerySymbol obj) : ["queryTimestamp" Data.Aeson.Types.ToJSON..= postSapiV1MarginLoanParametersQueryTimestamp obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1MarginLoanParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSapiV1MarginLoanParameters" (\obj -> ((((((GHC.Base.pure PostSapiV1MarginLoanParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAmount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryAsset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIsIsolated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRecvWindow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "querySignature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySymbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryTimestamp"))

-- | Create a new 'PostSapiV1MarginLoanParameters' with all required fields.
mkPostSapiV1MarginLoanParameters ::
  -- | 'postSapiV1MarginLoanParametersQueryAmount'
  GHC.Types.Double ->
  -- | 'postSapiV1MarginLoanParametersQueryAsset'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1MarginLoanParametersQuerySignature'
  Data.Text.Internal.Text ->
  -- | 'postSapiV1MarginLoanParametersQueryTimestamp'
  GHC.Int.Int64 ->
  PostSapiV1MarginLoanParameters
mkPostSapiV1MarginLoanParameters postSapiV1MarginLoanParametersQueryAmount postSapiV1MarginLoanParametersQueryAsset postSapiV1MarginLoanParametersQuerySignature postSapiV1MarginLoanParametersQueryTimestamp =
  PostSapiV1MarginLoanParameters
    { postSapiV1MarginLoanParametersQueryAmount = postSapiV1MarginLoanParametersQueryAmount,
      postSapiV1MarginLoanParametersQueryAsset = postSapiV1MarginLoanParametersQueryAsset,
      postSapiV1MarginLoanParametersQueryIsIsolated = GHC.Maybe.Nothing,
      postSapiV1MarginLoanParametersQueryRecvWindow = GHC.Maybe.Nothing,
      postSapiV1MarginLoanParametersQuerySignature = postSapiV1MarginLoanParametersQuerySignature,
      postSapiV1MarginLoanParametersQuerySymbol = GHC.Maybe.Nothing,
      postSapiV1MarginLoanParametersQueryTimestamp = postSapiV1MarginLoanParametersQueryTimestamp
    }

-- | Defines the enum schema located at @paths.\/sapi\/v1\/margin\/loan.POST.parameters.properties.queryIsIsolated@ in the specification.
--
-- Represents the parameter named \'isIsolated\'
--
-- * \`TRUE\` - For isolated margin
-- * \`FALSE\` - Default, not for isolated margin
data PostSapiV1MarginLoanParametersQueryIsIsolated
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostSapiV1MarginLoanParametersQueryIsIsolatedOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostSapiV1MarginLoanParametersQueryIsIsolatedTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"TRUE"@
    PostSapiV1MarginLoanParametersQueryIsIsolatedEnumTRUE
  | -- | Represents the JSON value @"FALSE"@
    PostSapiV1MarginLoanParametersQueryIsIsolatedEnumFALSE
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostSapiV1MarginLoanParametersQueryIsIsolated where
  toJSON (PostSapiV1MarginLoanParametersQueryIsIsolatedOther val) = val
  toJSON (PostSapiV1MarginLoanParametersQueryIsIsolatedTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostSapiV1MarginLoanParametersQueryIsIsolatedEnumTRUE) = "TRUE"
  toJSON (PostSapiV1MarginLoanParametersQueryIsIsolatedEnumFALSE) = "FALSE"

instance Data.Aeson.Types.FromJSON.FromJSON PostSapiV1MarginLoanParametersQueryIsIsolated where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "TRUE" -> PostSapiV1MarginLoanParametersQueryIsIsolatedEnumTRUE
            | val GHC.Classes.== "FALSE" -> PostSapiV1MarginLoanParametersQueryIsIsolatedEnumFALSE
            | GHC.Base.otherwise -> PostSapiV1MarginLoanParametersQueryIsIsolatedOther val
      )

-- | Represents a response of the operation 'postSapiV1MarginLoan'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSapiV1MarginLoanResponseError' is used.
data PostSapiV1MarginLoanResponse
  = -- | Means either no matching case available or a parse error
    PostSapiV1MarginLoanResponseError GHC.Base.String
  | -- | Transaction id
    PostSapiV1MarginLoanResponse200 Transaction
  | -- | Bad Request
    PostSapiV1MarginLoanResponse400 Error
  | -- | Unauthorized Request
    PostSapiV1MarginLoanResponse401 Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | > POST /sapi/v1/margin/loan
--
-- The same as 'postSapiV1MarginLoan' but accepts an explicit configuration.
postSapiV1MarginLoanWithConfiguration ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MarginLoanParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response PostSapiV1MarginLoanResponse)
postSapiV1MarginLoanWithConfiguration
  config
  parameters =
    GHC.Base.fmap
      ( \response_4 ->
          GHC.Base.fmap
            ( Data.Either.either PostSapiV1MarginLoanResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MarginLoanResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Transaction
                                                        )
                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MarginLoanResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostSapiV1MarginLoanResponse401
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
          (Data.Text.pack "/sapi/v1/margin/loan")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )

-- | > POST /sapi/v1/margin/loan
--
-- The same as 'postSapiV1MarginLoan' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1MarginLoanRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MarginLoanParameters ->
  -- | Monadic computation which returns the result of the operation
  Binance.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1MarginLoanRaw parameters =
  GHC.Base.id
    ( Binance.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
        (Data.Text.pack "/sapi/v1/margin/loan")
        [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
          Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
        ]
    )

-- | > POST /sapi/v1/margin/loan
--
-- The same as 'postSapiV1MarginLoan' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSapiV1MarginLoanWithConfigurationRaw ::
  forall m.
  Binance.Common.MonadHTTP m =>
  -- | The configuration to use in the request
  Binance.Common.Configuration ->
  -- | Contains all available parameters of this operation (query and path parameters)
  PostSapiV1MarginLoanParameters ->
  -- | Monadic computation which returns the result of the operation
  m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
postSapiV1MarginLoanWithConfigurationRaw
  config
  parameters =
    GHC.Base.id
      ( Binance.Common.doCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST")
          (Data.Text.pack "/sapi/v1/margin/loan")
          [ Binance.Common.QueryParameter (Data.Text.pack "asset") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAsset parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "isIsolated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryIsIsolated parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "symbol") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQuerySymbol parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "amount") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryAmount parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "recvWindow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> postSapiV1MarginLoanParametersQueryRecvWindow parameters) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "timestamp") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQueryTimestamp parameters)) (Data.Text.pack "form") GHC.Types.False,
            Binance.Common.QueryParameter (Data.Text.pack "signature") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (postSapiV1MarginLoanParametersQuerySignature parameters)) (Data.Text.pack "form") GHC.Types.False
          ]
      )
