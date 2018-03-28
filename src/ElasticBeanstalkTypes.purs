
module AWS.ElasticBeanstalk.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ARN = ARN String
derive instance newtypeARN :: Newtype ARN _
derive instance repGenericARN :: Generic ARN _
instance showARN :: Show ARN where show = genericShow
instance decodeARN :: Decode ARN where decode = genericDecode options
instance encodeARN :: Encode ARN where encode = genericEncode options



-- | <p/>
newtype AbortEnvironmentUpdateMessage = AbortEnvironmentUpdateMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeAbortEnvironmentUpdateMessage :: Newtype AbortEnvironmentUpdateMessage _
derive instance repGenericAbortEnvironmentUpdateMessage :: Generic AbortEnvironmentUpdateMessage _
instance showAbortEnvironmentUpdateMessage :: Show AbortEnvironmentUpdateMessage where show = genericShow
instance decodeAbortEnvironmentUpdateMessage :: Decode AbortEnvironmentUpdateMessage where decode = genericDecode options
instance encodeAbortEnvironmentUpdateMessage :: Encode AbortEnvironmentUpdateMessage where encode = genericEncode options

-- | Constructs AbortEnvironmentUpdateMessage from required parameters
newAbortEnvironmentUpdateMessage :: AbortEnvironmentUpdateMessage
newAbortEnvironmentUpdateMessage  = AbortEnvironmentUpdateMessage { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs AbortEnvironmentUpdateMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAbortEnvironmentUpdateMessage' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> AbortEnvironmentUpdateMessage
newAbortEnvironmentUpdateMessage'  customize = (AbortEnvironmentUpdateMessage <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



newtype AbortableOperationInProgress = AbortableOperationInProgress Boolean
derive instance newtypeAbortableOperationInProgress :: Newtype AbortableOperationInProgress _
derive instance repGenericAbortableOperationInProgress :: Generic AbortableOperationInProgress _
instance showAbortableOperationInProgress :: Show AbortableOperationInProgress where show = genericShow
instance decodeAbortableOperationInProgress :: Decode AbortableOperationInProgress where decode = genericDecode options
instance encodeAbortableOperationInProgress :: Encode AbortableOperationInProgress where encode = genericEncode options



newtype ActionHistoryStatus = ActionHistoryStatus String
derive instance newtypeActionHistoryStatus :: Newtype ActionHistoryStatus _
derive instance repGenericActionHistoryStatus :: Generic ActionHistoryStatus _
instance showActionHistoryStatus :: Show ActionHistoryStatus where show = genericShow
instance decodeActionHistoryStatus :: Decode ActionHistoryStatus where decode = genericDecode options
instance encodeActionHistoryStatus :: Encode ActionHistoryStatus where encode = genericEncode options



newtype ActionStatus = ActionStatus String
derive instance newtypeActionStatus :: Newtype ActionStatus _
derive instance repGenericActionStatus :: Generic ActionStatus _
instance showActionStatus :: Show ActionStatus where show = genericShow
instance decodeActionStatus :: Decode ActionStatus where decode = genericDecode options
instance encodeActionStatus :: Encode ActionStatus where encode = genericEncode options



newtype ActionType = ActionType String
derive instance newtypeActionType :: Newtype ActionType _
derive instance repGenericActionType :: Generic ActionType _
instance showActionType :: Show ActionType where show = genericShow
instance decodeActionType :: Decode ActionType where decode = genericDecode options
instance encodeActionType :: Encode ActionType where encode = genericEncode options



-- | <p>Describes the properties of an application.</p>
newtype ApplicationDescription = ApplicationDescription 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "Description" :: NullOrUndefined (Description)
  , "DateCreated" :: NullOrUndefined (CreationDate)
  , "DateUpdated" :: NullOrUndefined (UpdateDate)
  , "Versions" :: NullOrUndefined (VersionLabelsList)
  , "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList)
  , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig)
  }
derive instance newtypeApplicationDescription :: Newtype ApplicationDescription _
derive instance repGenericApplicationDescription :: Generic ApplicationDescription _
instance showApplicationDescription :: Show ApplicationDescription where show = genericShow
instance decodeApplicationDescription :: Decode ApplicationDescription where decode = genericDecode options
instance encodeApplicationDescription :: Encode ApplicationDescription where encode = genericEncode options

-- | Constructs ApplicationDescription from required parameters
newApplicationDescription :: ApplicationDescription
newApplicationDescription  = ApplicationDescription { "ApplicationName": (NullOrUndefined Nothing), "ConfigurationTemplates": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }

-- | Constructs ApplicationDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationDescription' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "Description" :: NullOrUndefined (Description) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Versions" :: NullOrUndefined (VersionLabelsList) , "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "Description" :: NullOrUndefined (Description) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Versions" :: NullOrUndefined (VersionLabelsList) , "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } ) -> ApplicationDescription
newApplicationDescription'  customize = (ApplicationDescription <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "ConfigurationTemplates": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }



newtype ApplicationDescriptionList = ApplicationDescriptionList (Array ApplicationDescription)
derive instance newtypeApplicationDescriptionList :: Newtype ApplicationDescriptionList _
derive instance repGenericApplicationDescriptionList :: Generic ApplicationDescriptionList _
instance showApplicationDescriptionList :: Show ApplicationDescriptionList where show = genericShow
instance decodeApplicationDescriptionList :: Decode ApplicationDescriptionList where decode = genericDecode options
instance encodeApplicationDescriptionList :: Encode ApplicationDescriptionList where encode = genericEncode options



-- | <p>Result message containing a single description of an application.</p>
newtype ApplicationDescriptionMessage = ApplicationDescriptionMessage 
  { "Application" :: NullOrUndefined (ApplicationDescription)
  }
derive instance newtypeApplicationDescriptionMessage :: Newtype ApplicationDescriptionMessage _
derive instance repGenericApplicationDescriptionMessage :: Generic ApplicationDescriptionMessage _
instance showApplicationDescriptionMessage :: Show ApplicationDescriptionMessage where show = genericShow
instance decodeApplicationDescriptionMessage :: Decode ApplicationDescriptionMessage where decode = genericDecode options
instance encodeApplicationDescriptionMessage :: Encode ApplicationDescriptionMessage where encode = genericEncode options

-- | Constructs ApplicationDescriptionMessage from required parameters
newApplicationDescriptionMessage :: ApplicationDescriptionMessage
newApplicationDescriptionMessage  = ApplicationDescriptionMessage { "Application": (NullOrUndefined Nothing) }

-- | Constructs ApplicationDescriptionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationDescriptionMessage' :: ( { "Application" :: NullOrUndefined (ApplicationDescription) } -> {"Application" :: NullOrUndefined (ApplicationDescription) } ) -> ApplicationDescriptionMessage
newApplicationDescriptionMessage'  customize = (ApplicationDescriptionMessage <<< customize) { "Application": (NullOrUndefined Nothing) }



-- | <p>Result message containing a list of application descriptions.</p>
newtype ApplicationDescriptionsMessage = ApplicationDescriptionsMessage 
  { "Applications" :: NullOrUndefined (ApplicationDescriptionList)
  }
derive instance newtypeApplicationDescriptionsMessage :: Newtype ApplicationDescriptionsMessage _
derive instance repGenericApplicationDescriptionsMessage :: Generic ApplicationDescriptionsMessage _
instance showApplicationDescriptionsMessage :: Show ApplicationDescriptionsMessage where show = genericShow
instance decodeApplicationDescriptionsMessage :: Decode ApplicationDescriptionsMessage where decode = genericDecode options
instance encodeApplicationDescriptionsMessage :: Encode ApplicationDescriptionsMessage where encode = genericEncode options

-- | Constructs ApplicationDescriptionsMessage from required parameters
newApplicationDescriptionsMessage :: ApplicationDescriptionsMessage
newApplicationDescriptionsMessage  = ApplicationDescriptionsMessage { "Applications": (NullOrUndefined Nothing) }

-- | Constructs ApplicationDescriptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationDescriptionsMessage' :: ( { "Applications" :: NullOrUndefined (ApplicationDescriptionList) } -> {"Applications" :: NullOrUndefined (ApplicationDescriptionList) } ) -> ApplicationDescriptionsMessage
newApplicationDescriptionsMessage'  customize = (ApplicationDescriptionsMessage <<< customize) { "Applications": (NullOrUndefined Nothing) }



-- | <p>Application request metrics for an AWS Elastic Beanstalk environment.</p>
newtype ApplicationMetrics = ApplicationMetrics 
  { "Duration" :: NullOrUndefined (NullableInteger)
  , "RequestCount" :: NullOrUndefined (RequestCount)
  , "StatusCodes" :: NullOrUndefined (StatusCodes)
  , "Latency" :: NullOrUndefined (Latency)
  }
derive instance newtypeApplicationMetrics :: Newtype ApplicationMetrics _
derive instance repGenericApplicationMetrics :: Generic ApplicationMetrics _
instance showApplicationMetrics :: Show ApplicationMetrics where show = genericShow
instance decodeApplicationMetrics :: Decode ApplicationMetrics where decode = genericDecode options
instance encodeApplicationMetrics :: Encode ApplicationMetrics where encode = genericEncode options

-- | Constructs ApplicationMetrics from required parameters
newApplicationMetrics :: ApplicationMetrics
newApplicationMetrics  = ApplicationMetrics { "Duration": (NullOrUndefined Nothing), "Latency": (NullOrUndefined Nothing), "RequestCount": (NullOrUndefined Nothing), "StatusCodes": (NullOrUndefined Nothing) }

-- | Constructs ApplicationMetrics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationMetrics' :: ( { "Duration" :: NullOrUndefined (NullableInteger) , "RequestCount" :: NullOrUndefined (RequestCount) , "StatusCodes" :: NullOrUndefined (StatusCodes) , "Latency" :: NullOrUndefined (Latency) } -> {"Duration" :: NullOrUndefined (NullableInteger) , "RequestCount" :: NullOrUndefined (RequestCount) , "StatusCodes" :: NullOrUndefined (StatusCodes) , "Latency" :: NullOrUndefined (Latency) } ) -> ApplicationMetrics
newApplicationMetrics'  customize = (ApplicationMetrics <<< customize) { "Duration": (NullOrUndefined Nothing), "Latency": (NullOrUndefined Nothing), "RequestCount": (NullOrUndefined Nothing), "StatusCodes": (NullOrUndefined Nothing) }



newtype ApplicationName = ApplicationName String
derive instance newtypeApplicationName :: Newtype ApplicationName _
derive instance repGenericApplicationName :: Generic ApplicationName _
instance showApplicationName :: Show ApplicationName where show = genericShow
instance decodeApplicationName :: Decode ApplicationName where decode = genericDecode options
instance encodeApplicationName :: Encode ApplicationName where encode = genericEncode options



newtype ApplicationNamesList = ApplicationNamesList (Array ApplicationName)
derive instance newtypeApplicationNamesList :: Newtype ApplicationNamesList _
derive instance repGenericApplicationNamesList :: Generic ApplicationNamesList _
instance showApplicationNamesList :: Show ApplicationNamesList where show = genericShow
instance decodeApplicationNamesList :: Decode ApplicationNamesList where decode = genericDecode options
instance encodeApplicationNamesList :: Encode ApplicationNamesList where encode = genericEncode options



-- | <p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>
newtype ApplicationResourceLifecycleConfig = ApplicationResourceLifecycleConfig 
  { "ServiceRole" :: NullOrUndefined (String)
  , "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig)
  }
derive instance newtypeApplicationResourceLifecycleConfig :: Newtype ApplicationResourceLifecycleConfig _
derive instance repGenericApplicationResourceLifecycleConfig :: Generic ApplicationResourceLifecycleConfig _
instance showApplicationResourceLifecycleConfig :: Show ApplicationResourceLifecycleConfig where show = genericShow
instance decodeApplicationResourceLifecycleConfig :: Decode ApplicationResourceLifecycleConfig where decode = genericDecode options
instance encodeApplicationResourceLifecycleConfig :: Encode ApplicationResourceLifecycleConfig where encode = genericEncode options

-- | Constructs ApplicationResourceLifecycleConfig from required parameters
newApplicationResourceLifecycleConfig :: ApplicationResourceLifecycleConfig
newApplicationResourceLifecycleConfig  = ApplicationResourceLifecycleConfig { "ServiceRole": (NullOrUndefined Nothing), "VersionLifecycleConfig": (NullOrUndefined Nothing) }

-- | Constructs ApplicationResourceLifecycleConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationResourceLifecycleConfig' :: ( { "ServiceRole" :: NullOrUndefined (String) , "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig) } -> {"ServiceRole" :: NullOrUndefined (String) , "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig) } ) -> ApplicationResourceLifecycleConfig
newApplicationResourceLifecycleConfig'  customize = (ApplicationResourceLifecycleConfig <<< customize) { "ServiceRole": (NullOrUndefined Nothing), "VersionLifecycleConfig": (NullOrUndefined Nothing) }



newtype ApplicationResourceLifecycleDescriptionMessage = ApplicationResourceLifecycleDescriptionMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig)
  }
derive instance newtypeApplicationResourceLifecycleDescriptionMessage :: Newtype ApplicationResourceLifecycleDescriptionMessage _
derive instance repGenericApplicationResourceLifecycleDescriptionMessage :: Generic ApplicationResourceLifecycleDescriptionMessage _
instance showApplicationResourceLifecycleDescriptionMessage :: Show ApplicationResourceLifecycleDescriptionMessage where show = genericShow
instance decodeApplicationResourceLifecycleDescriptionMessage :: Decode ApplicationResourceLifecycleDescriptionMessage where decode = genericDecode options
instance encodeApplicationResourceLifecycleDescriptionMessage :: Encode ApplicationResourceLifecycleDescriptionMessage where encode = genericEncode options

-- | Constructs ApplicationResourceLifecycleDescriptionMessage from required parameters
newApplicationResourceLifecycleDescriptionMessage :: ApplicationResourceLifecycleDescriptionMessage
newApplicationResourceLifecycleDescriptionMessage  = ApplicationResourceLifecycleDescriptionMessage { "ApplicationName": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing) }

-- | Constructs ApplicationResourceLifecycleDescriptionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationResourceLifecycleDescriptionMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } ) -> ApplicationResourceLifecycleDescriptionMessage
newApplicationResourceLifecycleDescriptionMessage'  customize = (ApplicationResourceLifecycleDescriptionMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing) }



-- | <p>Describes the properties of an application version.</p>
newtype ApplicationVersionDescription = ApplicationVersionDescription 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "Description" :: NullOrUndefined (Description)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation)
  , "BuildArn" :: NullOrUndefined (String)
  , "SourceBundle" :: NullOrUndefined (S3Location)
  , "DateCreated" :: NullOrUndefined (CreationDate)
  , "DateUpdated" :: NullOrUndefined (UpdateDate)
  , "Status" :: NullOrUndefined (ApplicationVersionStatus)
  }
derive instance newtypeApplicationVersionDescription :: Newtype ApplicationVersionDescription _
derive instance repGenericApplicationVersionDescription :: Generic ApplicationVersionDescription _
instance showApplicationVersionDescription :: Show ApplicationVersionDescription where show = genericShow
instance decodeApplicationVersionDescription :: Decode ApplicationVersionDescription where decode = genericDecode options
instance encodeApplicationVersionDescription :: Encode ApplicationVersionDescription where encode = genericEncode options

-- | Constructs ApplicationVersionDescription from required parameters
newApplicationVersionDescription :: ApplicationVersionDescription
newApplicationVersionDescription  = ApplicationVersionDescription { "ApplicationName": (NullOrUndefined Nothing), "BuildArn": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "SourceBuildInformation": (NullOrUndefined Nothing), "SourceBundle": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs ApplicationVersionDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionDescription' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "Description" :: NullOrUndefined (Description) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation) , "BuildArn" :: NullOrUndefined (String) , "SourceBundle" :: NullOrUndefined (S3Location) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Status" :: NullOrUndefined (ApplicationVersionStatus) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "Description" :: NullOrUndefined (Description) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation) , "BuildArn" :: NullOrUndefined (String) , "SourceBundle" :: NullOrUndefined (S3Location) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Status" :: NullOrUndefined (ApplicationVersionStatus) } ) -> ApplicationVersionDescription
newApplicationVersionDescription'  customize = (ApplicationVersionDescription <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "BuildArn": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "SourceBuildInformation": (NullOrUndefined Nothing), "SourceBundle": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



newtype ApplicationVersionDescriptionList = ApplicationVersionDescriptionList (Array ApplicationVersionDescription)
derive instance newtypeApplicationVersionDescriptionList :: Newtype ApplicationVersionDescriptionList _
derive instance repGenericApplicationVersionDescriptionList :: Generic ApplicationVersionDescriptionList _
instance showApplicationVersionDescriptionList :: Show ApplicationVersionDescriptionList where show = genericShow
instance decodeApplicationVersionDescriptionList :: Decode ApplicationVersionDescriptionList where decode = genericDecode options
instance encodeApplicationVersionDescriptionList :: Encode ApplicationVersionDescriptionList where encode = genericEncode options



-- | <p>Result message wrapping a single description of an application version.</p>
newtype ApplicationVersionDescriptionMessage = ApplicationVersionDescriptionMessage 
  { "ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription)
  }
derive instance newtypeApplicationVersionDescriptionMessage :: Newtype ApplicationVersionDescriptionMessage _
derive instance repGenericApplicationVersionDescriptionMessage :: Generic ApplicationVersionDescriptionMessage _
instance showApplicationVersionDescriptionMessage :: Show ApplicationVersionDescriptionMessage where show = genericShow
instance decodeApplicationVersionDescriptionMessage :: Decode ApplicationVersionDescriptionMessage where decode = genericDecode options
instance encodeApplicationVersionDescriptionMessage :: Encode ApplicationVersionDescriptionMessage where encode = genericEncode options

-- | Constructs ApplicationVersionDescriptionMessage from required parameters
newApplicationVersionDescriptionMessage :: ApplicationVersionDescriptionMessage
newApplicationVersionDescriptionMessage  = ApplicationVersionDescriptionMessage { "ApplicationVersion": (NullOrUndefined Nothing) }

-- | Constructs ApplicationVersionDescriptionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionDescriptionMessage' :: ( { "ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription) } -> {"ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription) } ) -> ApplicationVersionDescriptionMessage
newApplicationVersionDescriptionMessage'  customize = (ApplicationVersionDescriptionMessage <<< customize) { "ApplicationVersion": (NullOrUndefined Nothing) }



-- | <p>Result message wrapping a list of application version descriptions.</p>
newtype ApplicationVersionDescriptionsMessage = ApplicationVersionDescriptionsMessage 
  { "ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeApplicationVersionDescriptionsMessage :: Newtype ApplicationVersionDescriptionsMessage _
derive instance repGenericApplicationVersionDescriptionsMessage :: Generic ApplicationVersionDescriptionsMessage _
instance showApplicationVersionDescriptionsMessage :: Show ApplicationVersionDescriptionsMessage where show = genericShow
instance decodeApplicationVersionDescriptionsMessage :: Decode ApplicationVersionDescriptionsMessage where decode = genericDecode options
instance encodeApplicationVersionDescriptionsMessage :: Encode ApplicationVersionDescriptionsMessage where encode = genericEncode options

-- | Constructs ApplicationVersionDescriptionsMessage from required parameters
newApplicationVersionDescriptionsMessage :: ApplicationVersionDescriptionsMessage
newApplicationVersionDescriptionsMessage  = ApplicationVersionDescriptionsMessage { "ApplicationVersions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ApplicationVersionDescriptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionDescriptionsMessage' :: ( { "ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList) , "NextToken" :: NullOrUndefined (Token) } -> {"ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList) , "NextToken" :: NullOrUndefined (Token) } ) -> ApplicationVersionDescriptionsMessage
newApplicationVersionDescriptionsMessage'  customize = (ApplicationVersionDescriptionsMessage <<< customize) { "ApplicationVersions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>
newtype ApplicationVersionLifecycleConfig = ApplicationVersionLifecycleConfig 
  { "MaxCountRule" :: NullOrUndefined (MaxCountRule)
  , "MaxAgeRule" :: NullOrUndefined (MaxAgeRule)
  }
derive instance newtypeApplicationVersionLifecycleConfig :: Newtype ApplicationVersionLifecycleConfig _
derive instance repGenericApplicationVersionLifecycleConfig :: Generic ApplicationVersionLifecycleConfig _
instance showApplicationVersionLifecycleConfig :: Show ApplicationVersionLifecycleConfig where show = genericShow
instance decodeApplicationVersionLifecycleConfig :: Decode ApplicationVersionLifecycleConfig where decode = genericDecode options
instance encodeApplicationVersionLifecycleConfig :: Encode ApplicationVersionLifecycleConfig where encode = genericEncode options

-- | Constructs ApplicationVersionLifecycleConfig from required parameters
newApplicationVersionLifecycleConfig :: ApplicationVersionLifecycleConfig
newApplicationVersionLifecycleConfig  = ApplicationVersionLifecycleConfig { "MaxAgeRule": (NullOrUndefined Nothing), "MaxCountRule": (NullOrUndefined Nothing) }

-- | Constructs ApplicationVersionLifecycleConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionLifecycleConfig' :: ( { "MaxCountRule" :: NullOrUndefined (MaxCountRule) , "MaxAgeRule" :: NullOrUndefined (MaxAgeRule) } -> {"MaxCountRule" :: NullOrUndefined (MaxCountRule) , "MaxAgeRule" :: NullOrUndefined (MaxAgeRule) } ) -> ApplicationVersionLifecycleConfig
newApplicationVersionLifecycleConfig'  customize = (ApplicationVersionLifecycleConfig <<< customize) { "MaxAgeRule": (NullOrUndefined Nothing), "MaxCountRule": (NullOrUndefined Nothing) }



newtype ApplicationVersionProccess = ApplicationVersionProccess Boolean
derive instance newtypeApplicationVersionProccess :: Newtype ApplicationVersionProccess _
derive instance repGenericApplicationVersionProccess :: Generic ApplicationVersionProccess _
instance showApplicationVersionProccess :: Show ApplicationVersionProccess where show = genericShow
instance decodeApplicationVersionProccess :: Decode ApplicationVersionProccess where decode = genericDecode options
instance encodeApplicationVersionProccess :: Encode ApplicationVersionProccess where encode = genericEncode options



newtype ApplicationVersionStatus = ApplicationVersionStatus String
derive instance newtypeApplicationVersionStatus :: Newtype ApplicationVersionStatus _
derive instance repGenericApplicationVersionStatus :: Generic ApplicationVersionStatus _
instance showApplicationVersionStatus :: Show ApplicationVersionStatus where show = genericShow
instance decodeApplicationVersionStatus :: Decode ApplicationVersionStatus where decode = genericDecode options
instance encodeApplicationVersionStatus :: Encode ApplicationVersionStatus where encode = genericEncode options



-- | <p>Request to execute a scheduled managed action immediately.</p>
newtype ApplyEnvironmentManagedActionRequest = ApplyEnvironmentManagedActionRequest 
  { "EnvironmentName" :: NullOrUndefined (String)
  , "EnvironmentId" :: NullOrUndefined (String)
  , "ActionId" :: (String)
  }
derive instance newtypeApplyEnvironmentManagedActionRequest :: Newtype ApplyEnvironmentManagedActionRequest _
derive instance repGenericApplyEnvironmentManagedActionRequest :: Generic ApplyEnvironmentManagedActionRequest _
instance showApplyEnvironmentManagedActionRequest :: Show ApplyEnvironmentManagedActionRequest where show = genericShow
instance decodeApplyEnvironmentManagedActionRequest :: Decode ApplyEnvironmentManagedActionRequest where decode = genericDecode options
instance encodeApplyEnvironmentManagedActionRequest :: Encode ApplyEnvironmentManagedActionRequest where encode = genericEncode options

-- | Constructs ApplyEnvironmentManagedActionRequest from required parameters
newApplyEnvironmentManagedActionRequest :: String -> ApplyEnvironmentManagedActionRequest
newApplyEnvironmentManagedActionRequest _ActionId = ApplyEnvironmentManagedActionRequest { "ActionId": _ActionId, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs ApplyEnvironmentManagedActionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplyEnvironmentManagedActionRequest' :: String -> ( { "EnvironmentName" :: NullOrUndefined (String) , "EnvironmentId" :: NullOrUndefined (String) , "ActionId" :: (String) } -> {"EnvironmentName" :: NullOrUndefined (String) , "EnvironmentId" :: NullOrUndefined (String) , "ActionId" :: (String) } ) -> ApplyEnvironmentManagedActionRequest
newApplyEnvironmentManagedActionRequest' _ActionId customize = (ApplyEnvironmentManagedActionRequest <<< customize) { "ActionId": _ActionId, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



-- | <p>The result message containing information about the managed action.</p>
newtype ApplyEnvironmentManagedActionResult = ApplyEnvironmentManagedActionResult 
  { "ActionId" :: NullOrUndefined (String)
  , "ActionDescription" :: NullOrUndefined (String)
  , "ActionType" :: NullOrUndefined (ActionType)
  , "Status" :: NullOrUndefined (String)
  }
derive instance newtypeApplyEnvironmentManagedActionResult :: Newtype ApplyEnvironmentManagedActionResult _
derive instance repGenericApplyEnvironmentManagedActionResult :: Generic ApplyEnvironmentManagedActionResult _
instance showApplyEnvironmentManagedActionResult :: Show ApplyEnvironmentManagedActionResult where show = genericShow
instance decodeApplyEnvironmentManagedActionResult :: Decode ApplyEnvironmentManagedActionResult where decode = genericDecode options
instance encodeApplyEnvironmentManagedActionResult :: Encode ApplyEnvironmentManagedActionResult where encode = genericEncode options

-- | Constructs ApplyEnvironmentManagedActionResult from required parameters
newApplyEnvironmentManagedActionResult :: ApplyEnvironmentManagedActionResult
newApplyEnvironmentManagedActionResult  = ApplyEnvironmentManagedActionResult { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ApplyEnvironmentManagedActionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplyEnvironmentManagedActionResult' :: ( { "ActionId" :: NullOrUndefined (String) , "ActionDescription" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "Status" :: NullOrUndefined (String) } -> {"ActionId" :: NullOrUndefined (String) , "ActionDescription" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "Status" :: NullOrUndefined (String) } ) -> ApplyEnvironmentManagedActionResult
newApplyEnvironmentManagedActionResult'  customize = (ApplyEnvironmentManagedActionResult <<< customize) { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype AutoCreateApplication = AutoCreateApplication Boolean
derive instance newtypeAutoCreateApplication :: Newtype AutoCreateApplication _
derive instance repGenericAutoCreateApplication :: Generic AutoCreateApplication _
instance showAutoCreateApplication :: Show AutoCreateApplication where show = genericShow
instance decodeAutoCreateApplication :: Decode AutoCreateApplication where decode = genericDecode options
instance encodeAutoCreateApplication :: Encode AutoCreateApplication where encode = genericEncode options



-- | <p>Describes an Auto Scaling launch configuration.</p>
newtype AutoScalingGroup = AutoScalingGroup 
  { "Name" :: NullOrUndefined (ResourceId)
  }
derive instance newtypeAutoScalingGroup :: Newtype AutoScalingGroup _
derive instance repGenericAutoScalingGroup :: Generic AutoScalingGroup _
instance showAutoScalingGroup :: Show AutoScalingGroup where show = genericShow
instance decodeAutoScalingGroup :: Decode AutoScalingGroup where decode = genericDecode options
instance encodeAutoScalingGroup :: Encode AutoScalingGroup where encode = genericEncode options

-- | Constructs AutoScalingGroup from required parameters
newAutoScalingGroup :: AutoScalingGroup
newAutoScalingGroup  = AutoScalingGroup { "Name": (NullOrUndefined Nothing) }

-- | Constructs AutoScalingGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingGroup' :: ( { "Name" :: NullOrUndefined (ResourceId) } -> {"Name" :: NullOrUndefined (ResourceId) } ) -> AutoScalingGroup
newAutoScalingGroup'  customize = (AutoScalingGroup <<< customize) { "Name": (NullOrUndefined Nothing) }



newtype AutoScalingGroupList = AutoScalingGroupList (Array AutoScalingGroup)
derive instance newtypeAutoScalingGroupList :: Newtype AutoScalingGroupList _
derive instance repGenericAutoScalingGroupList :: Generic AutoScalingGroupList _
instance showAutoScalingGroupList :: Show AutoScalingGroupList where show = genericShow
instance decodeAutoScalingGroupList :: Decode AutoScalingGroupList where decode = genericDecode options
instance encodeAutoScalingGroupList :: Encode AutoScalingGroupList where encode = genericEncode options



newtype AvailableSolutionStackDetailsList = AvailableSolutionStackDetailsList (Array SolutionStackDescription)
derive instance newtypeAvailableSolutionStackDetailsList :: Newtype AvailableSolutionStackDetailsList _
derive instance repGenericAvailableSolutionStackDetailsList :: Generic AvailableSolutionStackDetailsList _
instance showAvailableSolutionStackDetailsList :: Show AvailableSolutionStackDetailsList where show = genericShow
instance decodeAvailableSolutionStackDetailsList :: Decode AvailableSolutionStackDetailsList where decode = genericDecode options
instance encodeAvailableSolutionStackDetailsList :: Encode AvailableSolutionStackDetailsList where encode = genericEncode options



newtype AvailableSolutionStackNamesList = AvailableSolutionStackNamesList (Array SolutionStackName)
derive instance newtypeAvailableSolutionStackNamesList :: Newtype AvailableSolutionStackNamesList _
derive instance repGenericAvailableSolutionStackNamesList :: Generic AvailableSolutionStackNamesList _
instance showAvailableSolutionStackNamesList :: Show AvailableSolutionStackNamesList where show = genericShow
instance decodeAvailableSolutionStackNamesList :: Decode AvailableSolutionStackNamesList where decode = genericDecode options
instance encodeAvailableSolutionStackNamesList :: Encode AvailableSolutionStackNamesList where encode = genericEncode options



newtype BoxedBoolean = BoxedBoolean Boolean
derive instance newtypeBoxedBoolean :: Newtype BoxedBoolean _
derive instance repGenericBoxedBoolean :: Generic BoxedBoolean _
instance showBoxedBoolean :: Show BoxedBoolean where show = genericShow
instance decodeBoxedBoolean :: Decode BoxedBoolean where decode = genericDecode options
instance encodeBoxedBoolean :: Encode BoxedBoolean where encode = genericEncode options



newtype BoxedInt = BoxedInt Int
derive instance newtypeBoxedInt :: Newtype BoxedInt _
derive instance repGenericBoxedInt :: Generic BoxedInt _
instance showBoxedInt :: Show BoxedInt where show = genericShow
instance decodeBoxedInt :: Decode BoxedInt where decode = genericDecode options
instance encodeBoxedInt :: Encode BoxedInt where encode = genericEncode options



-- | <p>Settings for an AWS CodeBuild build.</p>
newtype BuildConfiguration = BuildConfiguration 
  { "ArtifactName" :: NullOrUndefined (String)
  , "CodeBuildServiceRole" :: (NonEmptyString)
  , "ComputeType" :: NullOrUndefined (ComputeType)
  , "Image" :: (NonEmptyString)
  , "TimeoutInMinutes" :: NullOrUndefined (BoxedInt)
  }
derive instance newtypeBuildConfiguration :: Newtype BuildConfiguration _
derive instance repGenericBuildConfiguration :: Generic BuildConfiguration _
instance showBuildConfiguration :: Show BuildConfiguration where show = genericShow
instance decodeBuildConfiguration :: Decode BuildConfiguration where decode = genericDecode options
instance encodeBuildConfiguration :: Encode BuildConfiguration where encode = genericEncode options

-- | Constructs BuildConfiguration from required parameters
newBuildConfiguration :: NonEmptyString -> NonEmptyString -> BuildConfiguration
newBuildConfiguration _CodeBuildServiceRole _Image = BuildConfiguration { "CodeBuildServiceRole": _CodeBuildServiceRole, "Image": _Image, "ArtifactName": (NullOrUndefined Nothing), "ComputeType": (NullOrUndefined Nothing), "TimeoutInMinutes": (NullOrUndefined Nothing) }

-- | Constructs BuildConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuildConfiguration' :: NonEmptyString -> NonEmptyString -> ( { "ArtifactName" :: NullOrUndefined (String) , "CodeBuildServiceRole" :: (NonEmptyString) , "ComputeType" :: NullOrUndefined (ComputeType) , "Image" :: (NonEmptyString) , "TimeoutInMinutes" :: NullOrUndefined (BoxedInt) } -> {"ArtifactName" :: NullOrUndefined (String) , "CodeBuildServiceRole" :: (NonEmptyString) , "ComputeType" :: NullOrUndefined (ComputeType) , "Image" :: (NonEmptyString) , "TimeoutInMinutes" :: NullOrUndefined (BoxedInt) } ) -> BuildConfiguration
newBuildConfiguration' _CodeBuildServiceRole _Image customize = (BuildConfiguration <<< customize) { "CodeBuildServiceRole": _CodeBuildServiceRole, "Image": _Image, "ArtifactName": (NullOrUndefined Nothing), "ComputeType": (NullOrUndefined Nothing), "TimeoutInMinutes": (NullOrUndefined Nothing) }



-- | <p>The builder used to build the custom platform.</p>
newtype Builder = Builder 
  { "ARN" :: NullOrUndefined (ARN)
  }
derive instance newtypeBuilder :: Newtype Builder _
derive instance repGenericBuilder :: Generic Builder _
instance showBuilder :: Show Builder where show = genericShow
instance decodeBuilder :: Decode Builder where decode = genericDecode options
instance encodeBuilder :: Encode Builder where encode = genericEncode options

-- | Constructs Builder from required parameters
newBuilder :: Builder
newBuilder  = Builder { "ARN": (NullOrUndefined Nothing) }

-- | Constructs Builder's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuilder' :: ( { "ARN" :: NullOrUndefined (ARN) } -> {"ARN" :: NullOrUndefined (ARN) } ) -> Builder
newBuilder'  customize = (Builder <<< customize) { "ARN": (NullOrUndefined Nothing) }



-- | <p>CPU utilization metrics for an instance.</p>
newtype CPUUtilization = CPUUtilization 
  { "User" :: NullOrUndefined (NullableDouble)
  , "Nice" :: NullOrUndefined (NullableDouble)
  , "System" :: NullOrUndefined (NullableDouble)
  , "Idle" :: NullOrUndefined (NullableDouble)
  , "IOWait" :: NullOrUndefined (NullableDouble)
  , "IRQ" :: NullOrUndefined (NullableDouble)
  , "SoftIRQ" :: NullOrUndefined (NullableDouble)
  }
derive instance newtypeCPUUtilization :: Newtype CPUUtilization _
derive instance repGenericCPUUtilization :: Generic CPUUtilization _
instance showCPUUtilization :: Show CPUUtilization where show = genericShow
instance decodeCPUUtilization :: Decode CPUUtilization where decode = genericDecode options
instance encodeCPUUtilization :: Encode CPUUtilization where encode = genericEncode options

-- | Constructs CPUUtilization from required parameters
newCPUUtilization :: CPUUtilization
newCPUUtilization  = CPUUtilization { "IOWait": (NullOrUndefined Nothing), "IRQ": (NullOrUndefined Nothing), "Idle": (NullOrUndefined Nothing), "Nice": (NullOrUndefined Nothing), "SoftIRQ": (NullOrUndefined Nothing), "System": (NullOrUndefined Nothing), "User": (NullOrUndefined Nothing) }

-- | Constructs CPUUtilization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCPUUtilization' :: ( { "User" :: NullOrUndefined (NullableDouble) , "Nice" :: NullOrUndefined (NullableDouble) , "System" :: NullOrUndefined (NullableDouble) , "Idle" :: NullOrUndefined (NullableDouble) , "IOWait" :: NullOrUndefined (NullableDouble) , "IRQ" :: NullOrUndefined (NullableDouble) , "SoftIRQ" :: NullOrUndefined (NullableDouble) } -> {"User" :: NullOrUndefined (NullableDouble) , "Nice" :: NullOrUndefined (NullableDouble) , "System" :: NullOrUndefined (NullableDouble) , "Idle" :: NullOrUndefined (NullableDouble) , "IOWait" :: NullOrUndefined (NullableDouble) , "IRQ" :: NullOrUndefined (NullableDouble) , "SoftIRQ" :: NullOrUndefined (NullableDouble) } ) -> CPUUtilization
newCPUUtilization'  customize = (CPUUtilization <<< customize) { "IOWait": (NullOrUndefined Nothing), "IRQ": (NullOrUndefined Nothing), "Idle": (NullOrUndefined Nothing), "Nice": (NullOrUndefined Nothing), "SoftIRQ": (NullOrUndefined Nothing), "System": (NullOrUndefined Nothing), "User": (NullOrUndefined Nothing) }



newtype Cause = Cause String
derive instance newtypeCause :: Newtype Cause _
derive instance repGenericCause :: Generic Cause _
instance showCause :: Show Cause where show = genericShow
instance decodeCause :: Decode Cause where decode = genericDecode options
instance encodeCause :: Encode Cause where encode = genericEncode options



newtype Causes = Causes (Array Cause)
derive instance newtypeCauses :: Newtype Causes _
derive instance repGenericCauses :: Generic Causes _
instance showCauses :: Show Causes where show = genericShow
instance decodeCauses :: Decode Causes where decode = genericDecode options
instance encodeCauses :: Encode Causes where encode = genericEncode options



-- | <p>Results message indicating whether a CNAME is available.</p>
newtype CheckDNSAvailabilityMessage = CheckDNSAvailabilityMessage 
  { "CNAMEPrefix" :: (DNSCnamePrefix)
  }
derive instance newtypeCheckDNSAvailabilityMessage :: Newtype CheckDNSAvailabilityMessage _
derive instance repGenericCheckDNSAvailabilityMessage :: Generic CheckDNSAvailabilityMessage _
instance showCheckDNSAvailabilityMessage :: Show CheckDNSAvailabilityMessage where show = genericShow
instance decodeCheckDNSAvailabilityMessage :: Decode CheckDNSAvailabilityMessage where decode = genericDecode options
instance encodeCheckDNSAvailabilityMessage :: Encode CheckDNSAvailabilityMessage where encode = genericEncode options

-- | Constructs CheckDNSAvailabilityMessage from required parameters
newCheckDNSAvailabilityMessage :: DNSCnamePrefix -> CheckDNSAvailabilityMessage
newCheckDNSAvailabilityMessage _CNAMEPrefix = CheckDNSAvailabilityMessage { "CNAMEPrefix": _CNAMEPrefix }

-- | Constructs CheckDNSAvailabilityMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDNSAvailabilityMessage' :: DNSCnamePrefix -> ( { "CNAMEPrefix" :: (DNSCnamePrefix) } -> {"CNAMEPrefix" :: (DNSCnamePrefix) } ) -> CheckDNSAvailabilityMessage
newCheckDNSAvailabilityMessage' _CNAMEPrefix customize = (CheckDNSAvailabilityMessage <<< customize) { "CNAMEPrefix": _CNAMEPrefix }



-- | <p>Indicates if the specified CNAME is available.</p>
newtype CheckDNSAvailabilityResultMessage = CheckDNSAvailabilityResultMessage 
  { "Available" :: NullOrUndefined (CnameAvailability)
  , "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname)
  }
derive instance newtypeCheckDNSAvailabilityResultMessage :: Newtype CheckDNSAvailabilityResultMessage _
derive instance repGenericCheckDNSAvailabilityResultMessage :: Generic CheckDNSAvailabilityResultMessage _
instance showCheckDNSAvailabilityResultMessage :: Show CheckDNSAvailabilityResultMessage where show = genericShow
instance decodeCheckDNSAvailabilityResultMessage :: Decode CheckDNSAvailabilityResultMessage where decode = genericDecode options
instance encodeCheckDNSAvailabilityResultMessage :: Encode CheckDNSAvailabilityResultMessage where encode = genericEncode options

-- | Constructs CheckDNSAvailabilityResultMessage from required parameters
newCheckDNSAvailabilityResultMessage :: CheckDNSAvailabilityResultMessage
newCheckDNSAvailabilityResultMessage  = CheckDNSAvailabilityResultMessage { "Available": (NullOrUndefined Nothing), "FullyQualifiedCNAME": (NullOrUndefined Nothing) }

-- | Constructs CheckDNSAvailabilityResultMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDNSAvailabilityResultMessage' :: ( { "Available" :: NullOrUndefined (CnameAvailability) , "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname) } -> {"Available" :: NullOrUndefined (CnameAvailability) , "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname) } ) -> CheckDNSAvailabilityResultMessage
newCheckDNSAvailabilityResultMessage'  customize = (CheckDNSAvailabilityResultMessage <<< customize) { "Available": (NullOrUndefined Nothing), "FullyQualifiedCNAME": (NullOrUndefined Nothing) }



newtype CnameAvailability = CnameAvailability Boolean
derive instance newtypeCnameAvailability :: Newtype CnameAvailability _
derive instance repGenericCnameAvailability :: Generic CnameAvailability _
instance showCnameAvailability :: Show CnameAvailability where show = genericShow
instance decodeCnameAvailability :: Decode CnameAvailability where decode = genericDecode options
instance encodeCnameAvailability :: Encode CnameAvailability where encode = genericEncode options



-- | <p>AWS CodeBuild is not available in the specified region.</p>
newtype CodeBuildNotInServiceRegionException = CodeBuildNotInServiceRegionException Types.NoArguments
derive instance newtypeCodeBuildNotInServiceRegionException :: Newtype CodeBuildNotInServiceRegionException _
derive instance repGenericCodeBuildNotInServiceRegionException :: Generic CodeBuildNotInServiceRegionException _
instance showCodeBuildNotInServiceRegionException :: Show CodeBuildNotInServiceRegionException where show = genericShow
instance decodeCodeBuildNotInServiceRegionException :: Decode CodeBuildNotInServiceRegionException where decode = genericDecode options
instance encodeCodeBuildNotInServiceRegionException :: Encode CodeBuildNotInServiceRegionException where encode = genericEncode options



-- | <p>Request to create or update a group of environments.</p>
newtype ComposeEnvironmentsMessage = ComposeEnvironmentsMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "GroupName" :: NullOrUndefined (GroupName)
  , "VersionLabels" :: NullOrUndefined (VersionLabels)
  }
derive instance newtypeComposeEnvironmentsMessage :: Newtype ComposeEnvironmentsMessage _
derive instance repGenericComposeEnvironmentsMessage :: Generic ComposeEnvironmentsMessage _
instance showComposeEnvironmentsMessage :: Show ComposeEnvironmentsMessage where show = genericShow
instance decodeComposeEnvironmentsMessage :: Decode ComposeEnvironmentsMessage where decode = genericDecode options
instance encodeComposeEnvironmentsMessage :: Encode ComposeEnvironmentsMessage where encode = genericEncode options

-- | Constructs ComposeEnvironmentsMessage from required parameters
newComposeEnvironmentsMessage :: ComposeEnvironmentsMessage
newComposeEnvironmentsMessage  = ComposeEnvironmentsMessage { "ApplicationName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "VersionLabels": (NullOrUndefined Nothing) }

-- | Constructs ComposeEnvironmentsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComposeEnvironmentsMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "GroupName" :: NullOrUndefined (GroupName) , "VersionLabels" :: NullOrUndefined (VersionLabels) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "GroupName" :: NullOrUndefined (GroupName) , "VersionLabels" :: NullOrUndefined (VersionLabels) } ) -> ComposeEnvironmentsMessage
newComposeEnvironmentsMessage'  customize = (ComposeEnvironmentsMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "VersionLabels": (NullOrUndefined Nothing) }



newtype ComputeType = ComputeType String
derive instance newtypeComputeType :: Newtype ComputeType _
derive instance repGenericComputeType :: Generic ComputeType _
instance showComputeType :: Show ComputeType where show = genericShow
instance decodeComputeType :: Decode ComputeType where decode = genericDecode options
instance encodeComputeType :: Encode ComputeType where encode = genericEncode options



newtype ConfigurationDeploymentStatus = ConfigurationDeploymentStatus String
derive instance newtypeConfigurationDeploymentStatus :: Newtype ConfigurationDeploymentStatus _
derive instance repGenericConfigurationDeploymentStatus :: Generic ConfigurationDeploymentStatus _
instance showConfigurationDeploymentStatus :: Show ConfigurationDeploymentStatus where show = genericShow
instance decodeConfigurationDeploymentStatus :: Decode ConfigurationDeploymentStatus where decode = genericDecode options
instance encodeConfigurationDeploymentStatus :: Encode ConfigurationDeploymentStatus where encode = genericEncode options



newtype ConfigurationOptionDefaultValue = ConfigurationOptionDefaultValue String
derive instance newtypeConfigurationOptionDefaultValue :: Newtype ConfigurationOptionDefaultValue _
derive instance repGenericConfigurationOptionDefaultValue :: Generic ConfigurationOptionDefaultValue _
instance showConfigurationOptionDefaultValue :: Show ConfigurationOptionDefaultValue where show = genericShow
instance decodeConfigurationOptionDefaultValue :: Decode ConfigurationOptionDefaultValue where decode = genericDecode options
instance encodeConfigurationOptionDefaultValue :: Encode ConfigurationOptionDefaultValue where encode = genericEncode options



-- | <p>Describes the possible values for a configuration option.</p>
newtype ConfigurationOptionDescription = ConfigurationOptionDescription 
  { "Namespace" :: NullOrUndefined (OptionNamespace)
  , "Name" :: NullOrUndefined (ConfigurationOptionName)
  , "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue)
  , "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity)
  , "UserDefined" :: NullOrUndefined (UserDefinedOption)
  , "ValueType" :: NullOrUndefined (ConfigurationOptionValueType)
  , "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues)
  , "MinValue" :: NullOrUndefined (OptionRestrictionMinValue)
  , "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue)
  , "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength)
  , "Regex" :: NullOrUndefined (OptionRestrictionRegex)
  }
derive instance newtypeConfigurationOptionDescription :: Newtype ConfigurationOptionDescription _
derive instance repGenericConfigurationOptionDescription :: Generic ConfigurationOptionDescription _
instance showConfigurationOptionDescription :: Show ConfigurationOptionDescription where show = genericShow
instance decodeConfigurationOptionDescription :: Decode ConfigurationOptionDescription where decode = genericDecode options
instance encodeConfigurationOptionDescription :: Encode ConfigurationOptionDescription where encode = genericEncode options

-- | Constructs ConfigurationOptionDescription from required parameters
newConfigurationOptionDescription :: ConfigurationOptionDescription
newConfigurationOptionDescription  = ConfigurationOptionDescription { "ChangeSeverity": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing), "MaxLength": (NullOrUndefined Nothing), "MaxValue": (NullOrUndefined Nothing), "MinValue": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "Regex": (NullOrUndefined Nothing), "UserDefined": (NullOrUndefined Nothing), "ValueOptions": (NullOrUndefined Nothing), "ValueType": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationOptionDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationOptionDescription' :: ( { "Namespace" :: NullOrUndefined (OptionNamespace) , "Name" :: NullOrUndefined (ConfigurationOptionName) , "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue) , "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity) , "UserDefined" :: NullOrUndefined (UserDefinedOption) , "ValueType" :: NullOrUndefined (ConfigurationOptionValueType) , "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues) , "MinValue" :: NullOrUndefined (OptionRestrictionMinValue) , "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue) , "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength) , "Regex" :: NullOrUndefined (OptionRestrictionRegex) } -> {"Namespace" :: NullOrUndefined (OptionNamespace) , "Name" :: NullOrUndefined (ConfigurationOptionName) , "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue) , "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity) , "UserDefined" :: NullOrUndefined (UserDefinedOption) , "ValueType" :: NullOrUndefined (ConfigurationOptionValueType) , "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues) , "MinValue" :: NullOrUndefined (OptionRestrictionMinValue) , "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue) , "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength) , "Regex" :: NullOrUndefined (OptionRestrictionRegex) } ) -> ConfigurationOptionDescription
newConfigurationOptionDescription'  customize = (ConfigurationOptionDescription <<< customize) { "ChangeSeverity": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing), "MaxLength": (NullOrUndefined Nothing), "MaxValue": (NullOrUndefined Nothing), "MinValue": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "Regex": (NullOrUndefined Nothing), "UserDefined": (NullOrUndefined Nothing), "ValueOptions": (NullOrUndefined Nothing), "ValueType": (NullOrUndefined Nothing) }



newtype ConfigurationOptionDescriptionsList = ConfigurationOptionDescriptionsList (Array ConfigurationOptionDescription)
derive instance newtypeConfigurationOptionDescriptionsList :: Newtype ConfigurationOptionDescriptionsList _
derive instance repGenericConfigurationOptionDescriptionsList :: Generic ConfigurationOptionDescriptionsList _
instance showConfigurationOptionDescriptionsList :: Show ConfigurationOptionDescriptionsList where show = genericShow
instance decodeConfigurationOptionDescriptionsList :: Decode ConfigurationOptionDescriptionsList where decode = genericDecode options
instance encodeConfigurationOptionDescriptionsList :: Encode ConfigurationOptionDescriptionsList where encode = genericEncode options



newtype ConfigurationOptionName = ConfigurationOptionName String
derive instance newtypeConfigurationOptionName :: Newtype ConfigurationOptionName _
derive instance repGenericConfigurationOptionName :: Generic ConfigurationOptionName _
instance showConfigurationOptionName :: Show ConfigurationOptionName where show = genericShow
instance decodeConfigurationOptionName :: Decode ConfigurationOptionName where decode = genericDecode options
instance encodeConfigurationOptionName :: Encode ConfigurationOptionName where encode = genericEncode options



newtype ConfigurationOptionPossibleValue = ConfigurationOptionPossibleValue String
derive instance newtypeConfigurationOptionPossibleValue :: Newtype ConfigurationOptionPossibleValue _
derive instance repGenericConfigurationOptionPossibleValue :: Generic ConfigurationOptionPossibleValue _
instance showConfigurationOptionPossibleValue :: Show ConfigurationOptionPossibleValue where show = genericShow
instance decodeConfigurationOptionPossibleValue :: Decode ConfigurationOptionPossibleValue where decode = genericDecode options
instance encodeConfigurationOptionPossibleValue :: Encode ConfigurationOptionPossibleValue where encode = genericEncode options



newtype ConfigurationOptionPossibleValues = ConfigurationOptionPossibleValues (Array ConfigurationOptionPossibleValue)
derive instance newtypeConfigurationOptionPossibleValues :: Newtype ConfigurationOptionPossibleValues _
derive instance repGenericConfigurationOptionPossibleValues :: Generic ConfigurationOptionPossibleValues _
instance showConfigurationOptionPossibleValues :: Show ConfigurationOptionPossibleValues where show = genericShow
instance decodeConfigurationOptionPossibleValues :: Decode ConfigurationOptionPossibleValues where decode = genericDecode options
instance encodeConfigurationOptionPossibleValues :: Encode ConfigurationOptionPossibleValues where encode = genericEncode options



-- | <p> A specification identifying an individual configuration option along with its current value. For a list of possible option values, go to <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>
newtype ConfigurationOptionSetting = ConfigurationOptionSetting 
  { "ResourceName" :: NullOrUndefined (ResourceName)
  , "Namespace" :: NullOrUndefined (OptionNamespace)
  , "OptionName" :: NullOrUndefined (ConfigurationOptionName)
  , "Value" :: NullOrUndefined (ConfigurationOptionValue)
  }
derive instance newtypeConfigurationOptionSetting :: Newtype ConfigurationOptionSetting _
derive instance repGenericConfigurationOptionSetting :: Generic ConfigurationOptionSetting _
instance showConfigurationOptionSetting :: Show ConfigurationOptionSetting where show = genericShow
instance decodeConfigurationOptionSetting :: Decode ConfigurationOptionSetting where decode = genericDecode options
instance encodeConfigurationOptionSetting :: Encode ConfigurationOptionSetting where encode = genericEncode options

-- | Constructs ConfigurationOptionSetting from required parameters
newConfigurationOptionSetting :: ConfigurationOptionSetting
newConfigurationOptionSetting  = ConfigurationOptionSetting { "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationOptionSetting's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationOptionSetting' :: ( { "ResourceName" :: NullOrUndefined (ResourceName) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) , "Value" :: NullOrUndefined (ConfigurationOptionValue) } -> {"ResourceName" :: NullOrUndefined (ResourceName) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) , "Value" :: NullOrUndefined (ConfigurationOptionValue) } ) -> ConfigurationOptionSetting
newConfigurationOptionSetting'  customize = (ConfigurationOptionSetting <<< customize) { "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype ConfigurationOptionSettingsList = ConfigurationOptionSettingsList (Array ConfigurationOptionSetting)
derive instance newtypeConfigurationOptionSettingsList :: Newtype ConfigurationOptionSettingsList _
derive instance repGenericConfigurationOptionSettingsList :: Generic ConfigurationOptionSettingsList _
instance showConfigurationOptionSettingsList :: Show ConfigurationOptionSettingsList where show = genericShow
instance decodeConfigurationOptionSettingsList :: Decode ConfigurationOptionSettingsList where decode = genericDecode options
instance encodeConfigurationOptionSettingsList :: Encode ConfigurationOptionSettingsList where encode = genericEncode options



newtype ConfigurationOptionSeverity = ConfigurationOptionSeverity String
derive instance newtypeConfigurationOptionSeverity :: Newtype ConfigurationOptionSeverity _
derive instance repGenericConfigurationOptionSeverity :: Generic ConfigurationOptionSeverity _
instance showConfigurationOptionSeverity :: Show ConfigurationOptionSeverity where show = genericShow
instance decodeConfigurationOptionSeverity :: Decode ConfigurationOptionSeverity where decode = genericDecode options
instance encodeConfigurationOptionSeverity :: Encode ConfigurationOptionSeverity where encode = genericEncode options



newtype ConfigurationOptionValue = ConfigurationOptionValue String
derive instance newtypeConfigurationOptionValue :: Newtype ConfigurationOptionValue _
derive instance repGenericConfigurationOptionValue :: Generic ConfigurationOptionValue _
instance showConfigurationOptionValue :: Show ConfigurationOptionValue where show = genericShow
instance decodeConfigurationOptionValue :: Decode ConfigurationOptionValue where decode = genericDecode options
instance encodeConfigurationOptionValue :: Encode ConfigurationOptionValue where encode = genericEncode options



newtype ConfigurationOptionValueType = ConfigurationOptionValueType String
derive instance newtypeConfigurationOptionValueType :: Newtype ConfigurationOptionValueType _
derive instance repGenericConfigurationOptionValueType :: Generic ConfigurationOptionValueType _
instance showConfigurationOptionValueType :: Show ConfigurationOptionValueType where show = genericShow
instance decodeConfigurationOptionValueType :: Decode ConfigurationOptionValueType where decode = genericDecode options
instance encodeConfigurationOptionValueType :: Encode ConfigurationOptionValueType where encode = genericEncode options



-- | <p>Describes the settings for a specified configuration set.</p>
newtype ConfigurationOptionsDescription = ConfigurationOptionsDescription 
  { "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList)
  }
derive instance newtypeConfigurationOptionsDescription :: Newtype ConfigurationOptionsDescription _
derive instance repGenericConfigurationOptionsDescription :: Generic ConfigurationOptionsDescription _
instance showConfigurationOptionsDescription :: Show ConfigurationOptionsDescription where show = genericShow
instance decodeConfigurationOptionsDescription :: Decode ConfigurationOptionsDescription where decode = genericDecode options
instance encodeConfigurationOptionsDescription :: Encode ConfigurationOptionsDescription where encode = genericEncode options

-- | Constructs ConfigurationOptionsDescription from required parameters
newConfigurationOptionsDescription :: ConfigurationOptionsDescription
newConfigurationOptionsDescription  = ConfigurationOptionsDescription { "Options": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationOptionsDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationOptionsDescription' :: ( { "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList) } -> {"SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList) } ) -> ConfigurationOptionsDescription
newConfigurationOptionsDescription'  customize = (ConfigurationOptionsDescription <<< customize) { "Options": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing) }



-- | <p>Describes the settings for a configuration set.</p>
newtype ConfigurationSettingsDescription = ConfigurationSettingsDescription 
  { "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "Description" :: NullOrUndefined (Description)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus)
  , "DateCreated" :: NullOrUndefined (CreationDate)
  , "DateUpdated" :: NullOrUndefined (UpdateDate)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  }
derive instance newtypeConfigurationSettingsDescription :: Newtype ConfigurationSettingsDescription _
derive instance repGenericConfigurationSettingsDescription :: Generic ConfigurationSettingsDescription _
instance showConfigurationSettingsDescription :: Show ConfigurationSettingsDescription where show = genericShow
instance decodeConfigurationSettingsDescription :: Decode ConfigurationSettingsDescription where decode = genericDecode options
instance encodeConfigurationSettingsDescription :: Encode ConfigurationSettingsDescription where encode = genericEncode options

-- | Constructs ConfigurationSettingsDescription from required parameters
newConfigurationSettingsDescription :: ConfigurationSettingsDescription
newConfigurationSettingsDescription  = ConfigurationSettingsDescription { "ApplicationName": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "DeploymentStatus": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationSettingsDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSettingsDescription' :: ( { "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> {"SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } ) -> ConfigurationSettingsDescription
newConfigurationSettingsDescription'  customize = (ConfigurationSettingsDescription <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "DeploymentStatus": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }



newtype ConfigurationSettingsDescriptionList = ConfigurationSettingsDescriptionList (Array ConfigurationSettingsDescription)
derive instance newtypeConfigurationSettingsDescriptionList :: Newtype ConfigurationSettingsDescriptionList _
derive instance repGenericConfigurationSettingsDescriptionList :: Generic ConfigurationSettingsDescriptionList _
instance showConfigurationSettingsDescriptionList :: Show ConfigurationSettingsDescriptionList where show = genericShow
instance decodeConfigurationSettingsDescriptionList :: Decode ConfigurationSettingsDescriptionList where decode = genericDecode options
instance encodeConfigurationSettingsDescriptionList :: Encode ConfigurationSettingsDescriptionList where encode = genericEncode options



-- | <p>The results from a request to change the configuration settings of an environment.</p>
newtype ConfigurationSettingsDescriptions = ConfigurationSettingsDescriptions 
  { "ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList)
  }
derive instance newtypeConfigurationSettingsDescriptions :: Newtype ConfigurationSettingsDescriptions _
derive instance repGenericConfigurationSettingsDescriptions :: Generic ConfigurationSettingsDescriptions _
instance showConfigurationSettingsDescriptions :: Show ConfigurationSettingsDescriptions where show = genericShow
instance decodeConfigurationSettingsDescriptions :: Decode ConfigurationSettingsDescriptions where decode = genericDecode options
instance encodeConfigurationSettingsDescriptions :: Encode ConfigurationSettingsDescriptions where encode = genericEncode options

-- | Constructs ConfigurationSettingsDescriptions from required parameters
newConfigurationSettingsDescriptions :: ConfigurationSettingsDescriptions
newConfigurationSettingsDescriptions  = ConfigurationSettingsDescriptions { "ConfigurationSettings": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationSettingsDescriptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSettingsDescriptions' :: ( { "ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList) } -> {"ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList) } ) -> ConfigurationSettingsDescriptions
newConfigurationSettingsDescriptions'  customize = (ConfigurationSettingsDescriptions <<< customize) { "ConfigurationSettings": (NullOrUndefined Nothing) }



-- | <p>Provides a list of validation messages.</p>
newtype ConfigurationSettingsValidationMessages = ConfigurationSettingsValidationMessages 
  { "Messages" :: NullOrUndefined (ValidationMessagesList)
  }
derive instance newtypeConfigurationSettingsValidationMessages :: Newtype ConfigurationSettingsValidationMessages _
derive instance repGenericConfigurationSettingsValidationMessages :: Generic ConfigurationSettingsValidationMessages _
instance showConfigurationSettingsValidationMessages :: Show ConfigurationSettingsValidationMessages where show = genericShow
instance decodeConfigurationSettingsValidationMessages :: Decode ConfigurationSettingsValidationMessages where decode = genericDecode options
instance encodeConfigurationSettingsValidationMessages :: Encode ConfigurationSettingsValidationMessages where encode = genericEncode options

-- | Constructs ConfigurationSettingsValidationMessages from required parameters
newConfigurationSettingsValidationMessages :: ConfigurationSettingsValidationMessages
newConfigurationSettingsValidationMessages  = ConfigurationSettingsValidationMessages { "Messages": (NullOrUndefined Nothing) }

-- | Constructs ConfigurationSettingsValidationMessages's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationSettingsValidationMessages' :: ( { "Messages" :: NullOrUndefined (ValidationMessagesList) } -> {"Messages" :: NullOrUndefined (ValidationMessagesList) } ) -> ConfigurationSettingsValidationMessages
newConfigurationSettingsValidationMessages'  customize = (ConfigurationSettingsValidationMessages <<< customize) { "Messages": (NullOrUndefined Nothing) }



newtype ConfigurationTemplateName = ConfigurationTemplateName String
derive instance newtypeConfigurationTemplateName :: Newtype ConfigurationTemplateName _
derive instance repGenericConfigurationTemplateName :: Generic ConfigurationTemplateName _
instance showConfigurationTemplateName :: Show ConfigurationTemplateName where show = genericShow
instance decodeConfigurationTemplateName :: Decode ConfigurationTemplateName where decode = genericDecode options
instance encodeConfigurationTemplateName :: Encode ConfigurationTemplateName where encode = genericEncode options



newtype ConfigurationTemplateNamesList = ConfigurationTemplateNamesList (Array ConfigurationTemplateName)
derive instance newtypeConfigurationTemplateNamesList :: Newtype ConfigurationTemplateNamesList _
derive instance repGenericConfigurationTemplateNamesList :: Generic ConfigurationTemplateNamesList _
instance showConfigurationTemplateNamesList :: Show ConfigurationTemplateNamesList where show = genericShow
instance decodeConfigurationTemplateNamesList :: Decode ConfigurationTemplateNamesList where decode = genericDecode options
instance encodeConfigurationTemplateNamesList :: Encode ConfigurationTemplateNamesList where encode = genericEncode options



-- | <p>Request to create an application.</p>
newtype CreateApplicationMessage = CreateApplicationMessage 
  { "ApplicationName" :: (ApplicationName)
  , "Description" :: NullOrUndefined (Description)
  , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig)
  }
derive instance newtypeCreateApplicationMessage :: Newtype CreateApplicationMessage _
derive instance repGenericCreateApplicationMessage :: Generic CreateApplicationMessage _
instance showCreateApplicationMessage :: Show CreateApplicationMessage where show = genericShow
instance decodeCreateApplicationMessage :: Decode CreateApplicationMessage where decode = genericDecode options
instance encodeCreateApplicationMessage :: Encode CreateApplicationMessage where encode = genericEncode options

-- | Constructs CreateApplicationMessage from required parameters
newCreateApplicationMessage :: ApplicationName -> CreateApplicationMessage
newCreateApplicationMessage _ApplicationName = CreateApplicationMessage { "ApplicationName": _ApplicationName, "Description": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationMessage' :: ApplicationName -> ( { "ApplicationName" :: (ApplicationName) , "Description" :: NullOrUndefined (Description) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> {"ApplicationName" :: (ApplicationName) , "Description" :: NullOrUndefined (Description) , "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } ) -> CreateApplicationMessage
newCreateApplicationMessage' _ApplicationName customize = (CreateApplicationMessage <<< customize) { "ApplicationName": _ApplicationName, "Description": (NullOrUndefined Nothing), "ResourceLifecycleConfig": (NullOrUndefined Nothing) }



-- | <p/>
newtype CreateApplicationVersionMessage = CreateApplicationVersionMessage 
  { "ApplicationName" :: (ApplicationName)
  , "VersionLabel" :: (VersionLabel)
  , "Description" :: NullOrUndefined (Description)
  , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation)
  , "SourceBundle" :: NullOrUndefined (S3Location)
  , "BuildConfiguration" :: NullOrUndefined (BuildConfiguration)
  , "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication)
  , "Process" :: NullOrUndefined (ApplicationVersionProccess)
  }
derive instance newtypeCreateApplicationVersionMessage :: Newtype CreateApplicationVersionMessage _
derive instance repGenericCreateApplicationVersionMessage :: Generic CreateApplicationVersionMessage _
instance showCreateApplicationVersionMessage :: Show CreateApplicationVersionMessage where show = genericShow
instance decodeCreateApplicationVersionMessage :: Decode CreateApplicationVersionMessage where decode = genericDecode options
instance encodeCreateApplicationVersionMessage :: Encode CreateApplicationVersionMessage where encode = genericEncode options

-- | Constructs CreateApplicationVersionMessage from required parameters
newCreateApplicationVersionMessage :: ApplicationName -> VersionLabel -> CreateApplicationVersionMessage
newCreateApplicationVersionMessage _ApplicationName _VersionLabel = CreateApplicationVersionMessage { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "AutoCreateApplication": (NullOrUndefined Nothing), "BuildConfiguration": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Process": (NullOrUndefined Nothing), "SourceBuildInformation": (NullOrUndefined Nothing), "SourceBundle": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationVersionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ( { "ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "Description" :: NullOrUndefined (Description) , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation) , "SourceBundle" :: NullOrUndefined (S3Location) , "BuildConfiguration" :: NullOrUndefined (BuildConfiguration) , "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication) , "Process" :: NullOrUndefined (ApplicationVersionProccess) } -> {"ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "Description" :: NullOrUndefined (Description) , "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation) , "SourceBundle" :: NullOrUndefined (S3Location) , "BuildConfiguration" :: NullOrUndefined (BuildConfiguration) , "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication) , "Process" :: NullOrUndefined (ApplicationVersionProccess) } ) -> CreateApplicationVersionMessage
newCreateApplicationVersionMessage' _ApplicationName _VersionLabel customize = (CreateApplicationVersionMessage <<< customize) { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "AutoCreateApplication": (NullOrUndefined Nothing), "BuildConfiguration": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Process": (NullOrUndefined Nothing), "SourceBuildInformation": (NullOrUndefined Nothing), "SourceBundle": (NullOrUndefined Nothing) }



-- | <p>Request to create a configuration template.</p>
newtype CreateConfigurationTemplateMessage = CreateConfigurationTemplateMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TemplateName" :: (ConfigurationTemplateName)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "SourceConfiguration" :: NullOrUndefined (SourceConfiguration)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "Description" :: NullOrUndefined (Description)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  }
derive instance newtypeCreateConfigurationTemplateMessage :: Newtype CreateConfigurationTemplateMessage _
derive instance repGenericCreateConfigurationTemplateMessage :: Generic CreateConfigurationTemplateMessage _
instance showCreateConfigurationTemplateMessage :: Show CreateConfigurationTemplateMessage where show = genericShow
instance decodeCreateConfigurationTemplateMessage :: Decode CreateConfigurationTemplateMessage where decode = genericDecode options
instance encodeCreateConfigurationTemplateMessage :: Encode CreateConfigurationTemplateMessage where encode = genericEncode options

-- | Constructs CreateConfigurationTemplateMessage from required parameters
newCreateConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> CreateConfigurationTemplateMessage
newCreateConfigurationTemplateMessage _ApplicationName _TemplateName = CreateConfigurationTemplateMessage { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName, "Description": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "SourceConfiguration": (NullOrUndefined Nothing) }

-- | Constructs CreateConfigurationTemplateMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ( { "ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "SourceConfiguration" :: NullOrUndefined (SourceConfiguration) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "Description" :: NullOrUndefined (Description) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> {"ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "SourceConfiguration" :: NullOrUndefined (SourceConfiguration) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "Description" :: NullOrUndefined (Description) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } ) -> CreateConfigurationTemplateMessage
newCreateConfigurationTemplateMessage' _ApplicationName _TemplateName customize = (CreateConfigurationTemplateMessage <<< customize) { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName, "Description": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "SourceConfiguration": (NullOrUndefined Nothing) }



-- | <p/>
newtype CreateEnvironmentMessage = CreateEnvironmentMessage 
  { "ApplicationName" :: (ApplicationName)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "GroupName" :: NullOrUndefined (GroupName)
  , "Description" :: NullOrUndefined (Description)
  , "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix)
  , "Tier" :: NullOrUndefined (EnvironmentTier)
  , "Tags" :: NullOrUndefined (Tags)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList)
  }
derive instance newtypeCreateEnvironmentMessage :: Newtype CreateEnvironmentMessage _
derive instance repGenericCreateEnvironmentMessage :: Generic CreateEnvironmentMessage _
instance showCreateEnvironmentMessage :: Show CreateEnvironmentMessage where show = genericShow
instance decodeCreateEnvironmentMessage :: Decode CreateEnvironmentMessage where decode = genericDecode options
instance encodeCreateEnvironmentMessage :: Encode CreateEnvironmentMessage where encode = genericEncode options

-- | Constructs CreateEnvironmentMessage from required parameters
newCreateEnvironmentMessage :: ApplicationName -> CreateEnvironmentMessage
newCreateEnvironmentMessage _ApplicationName = CreateEnvironmentMessage { "ApplicationName": _ApplicationName, "CNAMEPrefix": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs CreateEnvironmentMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEnvironmentMessage' :: ApplicationName -> ( { "ApplicationName" :: (ApplicationName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "GroupName" :: NullOrUndefined (GroupName) , "Description" :: NullOrUndefined (Description) , "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix) , "Tier" :: NullOrUndefined (EnvironmentTier) , "Tags" :: NullOrUndefined (Tags) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> {"ApplicationName" :: (ApplicationName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "GroupName" :: NullOrUndefined (GroupName) , "Description" :: NullOrUndefined (Description) , "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix) , "Tier" :: NullOrUndefined (EnvironmentTier) , "Tags" :: NullOrUndefined (Tags) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } ) -> CreateEnvironmentMessage
newCreateEnvironmentMessage' _ApplicationName customize = (CreateEnvironmentMessage <<< customize) { "ApplicationName": _ApplicationName, "CNAMEPrefix": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



-- | <p>Request to create a new platform version.</p>
newtype CreatePlatformVersionRequest = CreatePlatformVersionRequest 
  { "PlatformName" :: (PlatformName)
  , "PlatformVersion" :: (PlatformVersion)
  , "PlatformDefinitionBundle" :: (S3Location)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  }
derive instance newtypeCreatePlatformVersionRequest :: Newtype CreatePlatformVersionRequest _
derive instance repGenericCreatePlatformVersionRequest :: Generic CreatePlatformVersionRequest _
instance showCreatePlatformVersionRequest :: Show CreatePlatformVersionRequest where show = genericShow
instance decodeCreatePlatformVersionRequest :: Decode CreatePlatformVersionRequest where decode = genericDecode options
instance encodeCreatePlatformVersionRequest :: Encode CreatePlatformVersionRequest where encode = genericEncode options

-- | Constructs CreatePlatformVersionRequest from required parameters
newCreatePlatformVersionRequest :: S3Location -> PlatformName -> PlatformVersion -> CreatePlatformVersionRequest
newCreatePlatformVersionRequest _PlatformDefinitionBundle _PlatformName _PlatformVersion = CreatePlatformVersionRequest { "PlatformDefinitionBundle": _PlatformDefinitionBundle, "PlatformName": _PlatformName, "PlatformVersion": _PlatformVersion, "EnvironmentName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformVersionRequest' :: S3Location -> PlatformName -> PlatformVersion -> ( { "PlatformName" :: (PlatformName) , "PlatformVersion" :: (PlatformVersion) , "PlatformDefinitionBundle" :: (S3Location) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> {"PlatformName" :: (PlatformName) , "PlatformVersion" :: (PlatformVersion) , "PlatformDefinitionBundle" :: (S3Location) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } ) -> CreatePlatformVersionRequest
newCreatePlatformVersionRequest' _PlatformDefinitionBundle _PlatformName _PlatformVersion customize = (CreatePlatformVersionRequest <<< customize) { "PlatformDefinitionBundle": _PlatformDefinitionBundle, "PlatformName": _PlatformName, "PlatformVersion": _PlatformVersion, "EnvironmentName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing) }



newtype CreatePlatformVersionResult = CreatePlatformVersionResult 
  { "PlatformSummary" :: NullOrUndefined (PlatformSummary)
  , "Builder" :: NullOrUndefined (Builder)
  }
derive instance newtypeCreatePlatformVersionResult :: Newtype CreatePlatformVersionResult _
derive instance repGenericCreatePlatformVersionResult :: Generic CreatePlatformVersionResult _
instance showCreatePlatformVersionResult :: Show CreatePlatformVersionResult where show = genericShow
instance decodeCreatePlatformVersionResult :: Decode CreatePlatformVersionResult where decode = genericDecode options
instance encodeCreatePlatformVersionResult :: Encode CreatePlatformVersionResult where encode = genericEncode options

-- | Constructs CreatePlatformVersionResult from required parameters
newCreatePlatformVersionResult :: CreatePlatformVersionResult
newCreatePlatformVersionResult  = CreatePlatformVersionResult { "Builder": (NullOrUndefined Nothing), "PlatformSummary": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformVersionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformVersionResult' :: ( { "PlatformSummary" :: NullOrUndefined (PlatformSummary) , "Builder" :: NullOrUndefined (Builder) } -> {"PlatformSummary" :: NullOrUndefined (PlatformSummary) , "Builder" :: NullOrUndefined (Builder) } ) -> CreatePlatformVersionResult
newCreatePlatformVersionResult'  customize = (CreatePlatformVersionResult <<< customize) { "Builder": (NullOrUndefined Nothing), "PlatformSummary": (NullOrUndefined Nothing) }



-- | <p>Results of a <a>CreateStorageLocationResult</a> call.</p>
newtype CreateStorageLocationResultMessage = CreateStorageLocationResultMessage 
  { "S3Bucket" :: NullOrUndefined (S3Bucket)
  }
derive instance newtypeCreateStorageLocationResultMessage :: Newtype CreateStorageLocationResultMessage _
derive instance repGenericCreateStorageLocationResultMessage :: Generic CreateStorageLocationResultMessage _
instance showCreateStorageLocationResultMessage :: Show CreateStorageLocationResultMessage where show = genericShow
instance decodeCreateStorageLocationResultMessage :: Decode CreateStorageLocationResultMessage where decode = genericDecode options
instance encodeCreateStorageLocationResultMessage :: Encode CreateStorageLocationResultMessage where encode = genericEncode options

-- | Constructs CreateStorageLocationResultMessage from required parameters
newCreateStorageLocationResultMessage :: CreateStorageLocationResultMessage
newCreateStorageLocationResultMessage  = CreateStorageLocationResultMessage { "S3Bucket": (NullOrUndefined Nothing) }

-- | Constructs CreateStorageLocationResultMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStorageLocationResultMessage' :: ( { "S3Bucket" :: NullOrUndefined (S3Bucket) } -> {"S3Bucket" :: NullOrUndefined (S3Bucket) } ) -> CreateStorageLocationResultMessage
newCreateStorageLocationResultMessage'  customize = (CreateStorageLocationResultMessage <<< customize) { "S3Bucket": (NullOrUndefined Nothing) }



newtype CreationDate = CreationDate Types.Timestamp
derive instance newtypeCreationDate :: Newtype CreationDate _
derive instance repGenericCreationDate :: Generic CreationDate _
instance showCreationDate :: Show CreationDate where show = genericShow
instance decodeCreationDate :: Decode CreationDate where decode = genericDecode options
instance encodeCreationDate :: Encode CreationDate where encode = genericEncode options



-- | <p>A custom AMI available to platforms.</p>
newtype CustomAmi = CustomAmi 
  { "VirtualizationType" :: NullOrUndefined (VirtualizationType)
  , "ImageId" :: NullOrUndefined (ImageId)
  }
derive instance newtypeCustomAmi :: Newtype CustomAmi _
derive instance repGenericCustomAmi :: Generic CustomAmi _
instance showCustomAmi :: Show CustomAmi where show = genericShow
instance decodeCustomAmi :: Decode CustomAmi where decode = genericDecode options
instance encodeCustomAmi :: Encode CustomAmi where encode = genericEncode options

-- | Constructs CustomAmi from required parameters
newCustomAmi :: CustomAmi
newCustomAmi  = CustomAmi { "ImageId": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }

-- | Constructs CustomAmi's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomAmi' :: ( { "VirtualizationType" :: NullOrUndefined (VirtualizationType) , "ImageId" :: NullOrUndefined (ImageId) } -> {"VirtualizationType" :: NullOrUndefined (VirtualizationType) , "ImageId" :: NullOrUndefined (ImageId) } ) -> CustomAmi
newCustomAmi'  customize = (CustomAmi <<< customize) { "ImageId": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }



newtype CustomAmiList = CustomAmiList (Array CustomAmi)
derive instance newtypeCustomAmiList :: Newtype CustomAmiList _
derive instance repGenericCustomAmiList :: Generic CustomAmiList _
instance showCustomAmiList :: Show CustomAmiList where show = genericShow
instance decodeCustomAmiList :: Decode CustomAmiList where decode = genericDecode options
instance encodeCustomAmiList :: Encode CustomAmiList where encode = genericEncode options



newtype DNSCname = DNSCname String
derive instance newtypeDNSCname :: Newtype DNSCname _
derive instance repGenericDNSCname :: Generic DNSCname _
instance showDNSCname :: Show DNSCname where show = genericShow
instance decodeDNSCname :: Decode DNSCname where decode = genericDecode options
instance encodeDNSCname :: Encode DNSCname where encode = genericEncode options



newtype DNSCnamePrefix = DNSCnamePrefix String
derive instance newtypeDNSCnamePrefix :: Newtype DNSCnamePrefix _
derive instance repGenericDNSCnamePrefix :: Generic DNSCnamePrefix _
instance showDNSCnamePrefix :: Show DNSCnamePrefix where show = genericShow
instance decodeDNSCnamePrefix :: Decode DNSCnamePrefix where decode = genericDecode options
instance encodeDNSCnamePrefix :: Encode DNSCnamePrefix where encode = genericEncode options



-- | <p>Request to delete an application.</p>
newtype DeleteApplicationMessage = DeleteApplicationMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce)
  }
derive instance newtypeDeleteApplicationMessage :: Newtype DeleteApplicationMessage _
derive instance repGenericDeleteApplicationMessage :: Generic DeleteApplicationMessage _
instance showDeleteApplicationMessage :: Show DeleteApplicationMessage where show = genericShow
instance decodeDeleteApplicationMessage :: Decode DeleteApplicationMessage where decode = genericDecode options
instance encodeDeleteApplicationMessage :: Encode DeleteApplicationMessage where encode = genericEncode options

-- | Constructs DeleteApplicationMessage from required parameters
newDeleteApplicationMessage :: ApplicationName -> DeleteApplicationMessage
newDeleteApplicationMessage _ApplicationName = DeleteApplicationMessage { "ApplicationName": _ApplicationName, "TerminateEnvByForce": (NullOrUndefined Nothing) }

-- | Constructs DeleteApplicationMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteApplicationMessage' :: ApplicationName -> ( { "ApplicationName" :: (ApplicationName) , "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce) } -> {"ApplicationName" :: (ApplicationName) , "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce) } ) -> DeleteApplicationMessage
newDeleteApplicationMessage' _ApplicationName customize = (DeleteApplicationMessage <<< customize) { "ApplicationName": _ApplicationName, "TerminateEnvByForce": (NullOrUndefined Nothing) }



-- | <p>Request to delete an application version.</p>
newtype DeleteApplicationVersionMessage = DeleteApplicationVersionMessage 
  { "ApplicationName" :: (ApplicationName)
  , "VersionLabel" :: (VersionLabel)
  , "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle)
  }
derive instance newtypeDeleteApplicationVersionMessage :: Newtype DeleteApplicationVersionMessage _
derive instance repGenericDeleteApplicationVersionMessage :: Generic DeleteApplicationVersionMessage _
instance showDeleteApplicationVersionMessage :: Show DeleteApplicationVersionMessage where show = genericShow
instance decodeDeleteApplicationVersionMessage :: Decode DeleteApplicationVersionMessage where decode = genericDecode options
instance encodeDeleteApplicationVersionMessage :: Encode DeleteApplicationVersionMessage where encode = genericEncode options

-- | Constructs DeleteApplicationVersionMessage from required parameters
newDeleteApplicationVersionMessage :: ApplicationName -> VersionLabel -> DeleteApplicationVersionMessage
newDeleteApplicationVersionMessage _ApplicationName _VersionLabel = DeleteApplicationVersionMessage { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "DeleteSourceBundle": (NullOrUndefined Nothing) }

-- | Constructs DeleteApplicationVersionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ( { "ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle) } -> {"ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle) } ) -> DeleteApplicationVersionMessage
newDeleteApplicationVersionMessage' _ApplicationName _VersionLabel customize = (DeleteApplicationVersionMessage <<< customize) { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "DeleteSourceBundle": (NullOrUndefined Nothing) }



-- | <p>Request to delete a configuration template.</p>
newtype DeleteConfigurationTemplateMessage = DeleteConfigurationTemplateMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TemplateName" :: (ConfigurationTemplateName)
  }
derive instance newtypeDeleteConfigurationTemplateMessage :: Newtype DeleteConfigurationTemplateMessage _
derive instance repGenericDeleteConfigurationTemplateMessage :: Generic DeleteConfigurationTemplateMessage _
instance showDeleteConfigurationTemplateMessage :: Show DeleteConfigurationTemplateMessage where show = genericShow
instance decodeDeleteConfigurationTemplateMessage :: Decode DeleteConfigurationTemplateMessage where decode = genericDecode options
instance encodeDeleteConfigurationTemplateMessage :: Encode DeleteConfigurationTemplateMessage where encode = genericEncode options

-- | Constructs DeleteConfigurationTemplateMessage from required parameters
newDeleteConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> DeleteConfigurationTemplateMessage
newDeleteConfigurationTemplateMessage _ApplicationName _TemplateName = DeleteConfigurationTemplateMessage { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName }

-- | Constructs DeleteConfigurationTemplateMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ( { "ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) } -> {"ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) } ) -> DeleteConfigurationTemplateMessage
newDeleteConfigurationTemplateMessage' _ApplicationName _TemplateName customize = (DeleteConfigurationTemplateMessage <<< customize) { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName }



-- | <p>Request to delete a draft environment configuration.</p>
newtype DeleteEnvironmentConfigurationMessage = DeleteEnvironmentConfigurationMessage 
  { "ApplicationName" :: (ApplicationName)
  , "EnvironmentName" :: (EnvironmentName)
  }
derive instance newtypeDeleteEnvironmentConfigurationMessage :: Newtype DeleteEnvironmentConfigurationMessage _
derive instance repGenericDeleteEnvironmentConfigurationMessage :: Generic DeleteEnvironmentConfigurationMessage _
instance showDeleteEnvironmentConfigurationMessage :: Show DeleteEnvironmentConfigurationMessage where show = genericShow
instance decodeDeleteEnvironmentConfigurationMessage :: Decode DeleteEnvironmentConfigurationMessage where decode = genericDecode options
instance encodeDeleteEnvironmentConfigurationMessage :: Encode DeleteEnvironmentConfigurationMessage where encode = genericEncode options

-- | Constructs DeleteEnvironmentConfigurationMessage from required parameters
newDeleteEnvironmentConfigurationMessage :: ApplicationName -> EnvironmentName -> DeleteEnvironmentConfigurationMessage
newDeleteEnvironmentConfigurationMessage _ApplicationName _EnvironmentName = DeleteEnvironmentConfigurationMessage { "ApplicationName": _ApplicationName, "EnvironmentName": _EnvironmentName }

-- | Constructs DeleteEnvironmentConfigurationMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEnvironmentConfigurationMessage' :: ApplicationName -> EnvironmentName -> ( { "ApplicationName" :: (ApplicationName) , "EnvironmentName" :: (EnvironmentName) } -> {"ApplicationName" :: (ApplicationName) , "EnvironmentName" :: (EnvironmentName) } ) -> DeleteEnvironmentConfigurationMessage
newDeleteEnvironmentConfigurationMessage' _ApplicationName _EnvironmentName customize = (DeleteEnvironmentConfigurationMessage <<< customize) { "ApplicationName": _ApplicationName, "EnvironmentName": _EnvironmentName }



newtype DeletePlatformVersionRequest = DeletePlatformVersionRequest 
  { "PlatformArn" :: NullOrUndefined (PlatformArn)
  }
derive instance newtypeDeletePlatformVersionRequest :: Newtype DeletePlatformVersionRequest _
derive instance repGenericDeletePlatformVersionRequest :: Generic DeletePlatformVersionRequest _
instance showDeletePlatformVersionRequest :: Show DeletePlatformVersionRequest where show = genericShow
instance decodeDeletePlatformVersionRequest :: Decode DeletePlatformVersionRequest where decode = genericDecode options
instance encodeDeletePlatformVersionRequest :: Encode DeletePlatformVersionRequest where encode = genericEncode options

-- | Constructs DeletePlatformVersionRequest from required parameters
newDeletePlatformVersionRequest :: DeletePlatformVersionRequest
newDeletePlatformVersionRequest  = DeletePlatformVersionRequest { "PlatformArn": (NullOrUndefined Nothing) }

-- | Constructs DeletePlatformVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePlatformVersionRequest' :: ( { "PlatformArn" :: NullOrUndefined (PlatformArn) } -> {"PlatformArn" :: NullOrUndefined (PlatformArn) } ) -> DeletePlatformVersionRequest
newDeletePlatformVersionRequest'  customize = (DeletePlatformVersionRequest <<< customize) { "PlatformArn": (NullOrUndefined Nothing) }



newtype DeletePlatformVersionResult = DeletePlatformVersionResult 
  { "PlatformSummary" :: NullOrUndefined (PlatformSummary)
  }
derive instance newtypeDeletePlatformVersionResult :: Newtype DeletePlatformVersionResult _
derive instance repGenericDeletePlatformVersionResult :: Generic DeletePlatformVersionResult _
instance showDeletePlatformVersionResult :: Show DeletePlatformVersionResult where show = genericShow
instance decodeDeletePlatformVersionResult :: Decode DeletePlatformVersionResult where decode = genericDecode options
instance encodeDeletePlatformVersionResult :: Encode DeletePlatformVersionResult where encode = genericEncode options

-- | Constructs DeletePlatformVersionResult from required parameters
newDeletePlatformVersionResult :: DeletePlatformVersionResult
newDeletePlatformVersionResult  = DeletePlatformVersionResult { "PlatformSummary": (NullOrUndefined Nothing) }

-- | Constructs DeletePlatformVersionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePlatformVersionResult' :: ( { "PlatformSummary" :: NullOrUndefined (PlatformSummary) } -> {"PlatformSummary" :: NullOrUndefined (PlatformSummary) } ) -> DeletePlatformVersionResult
newDeletePlatformVersionResult'  customize = (DeletePlatformVersionResult <<< customize) { "PlatformSummary": (NullOrUndefined Nothing) }



newtype DeleteSourceBundle = DeleteSourceBundle Boolean
derive instance newtypeDeleteSourceBundle :: Newtype DeleteSourceBundle _
derive instance repGenericDeleteSourceBundle :: Generic DeleteSourceBundle _
instance showDeleteSourceBundle :: Show DeleteSourceBundle where show = genericShow
instance decodeDeleteSourceBundle :: Decode DeleteSourceBundle where decode = genericDecode options
instance encodeDeleteSourceBundle :: Encode DeleteSourceBundle where encode = genericEncode options



-- | <p>Information about an application version deployment.</p>
newtype Deployment = Deployment 
  { "VersionLabel" :: NullOrUndefined (String)
  , "DeploymentId" :: NullOrUndefined (NullableLong)
  , "Status" :: NullOrUndefined (String)
  , "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp)
  }
derive instance newtypeDeployment :: Newtype Deployment _
derive instance repGenericDeployment :: Generic Deployment _
instance showDeployment :: Show Deployment where show = genericShow
instance decodeDeployment :: Decode Deployment where decode = genericDecode options
instance encodeDeployment :: Encode Deployment where encode = genericEncode options

-- | Constructs Deployment from required parameters
newDeployment :: Deployment
newDeployment  = Deployment { "DeploymentId": (NullOrUndefined Nothing), "DeploymentTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs Deployment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeployment' :: ( { "VersionLabel" :: NullOrUndefined (String) , "DeploymentId" :: NullOrUndefined (NullableLong) , "Status" :: NullOrUndefined (String) , "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp) } -> {"VersionLabel" :: NullOrUndefined (String) , "DeploymentId" :: NullOrUndefined (NullableLong) , "Status" :: NullOrUndefined (String) , "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp) } ) -> Deployment
newDeployment'  customize = (Deployment <<< customize) { "DeploymentId": (NullOrUndefined Nothing), "DeploymentTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



newtype DeploymentTimestamp = DeploymentTimestamp Types.Timestamp
derive instance newtypeDeploymentTimestamp :: Newtype DeploymentTimestamp _
derive instance repGenericDeploymentTimestamp :: Generic DeploymentTimestamp _
instance showDeploymentTimestamp :: Show DeploymentTimestamp where show = genericShow
instance decodeDeploymentTimestamp :: Decode DeploymentTimestamp where decode = genericDecode options
instance encodeDeploymentTimestamp :: Encode DeploymentTimestamp where encode = genericEncode options



-- | <p>Request to describe application versions.</p>
newtype DescribeApplicationVersionsMessage = DescribeApplicationVersionsMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "VersionLabels" :: NullOrUndefined (VersionLabelsList)
  , "MaxRecords" :: NullOrUndefined (MaxRecords)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeDescribeApplicationVersionsMessage :: Newtype DescribeApplicationVersionsMessage _
derive instance repGenericDescribeApplicationVersionsMessage :: Generic DescribeApplicationVersionsMessage _
instance showDescribeApplicationVersionsMessage :: Show DescribeApplicationVersionsMessage where show = genericShow
instance decodeDescribeApplicationVersionsMessage :: Decode DescribeApplicationVersionsMessage where decode = genericDecode options
instance encodeDescribeApplicationVersionsMessage :: Encode DescribeApplicationVersionsMessage where encode = genericEncode options

-- | Constructs DescribeApplicationVersionsMessage from required parameters
newDescribeApplicationVersionsMessage :: DescribeApplicationVersionsMessage
newDescribeApplicationVersionsMessage  = DescribeApplicationVersionsMessage { "ApplicationName": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "VersionLabels": (NullOrUndefined Nothing) }

-- | Constructs DescribeApplicationVersionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationVersionsMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabels" :: NullOrUndefined (VersionLabelsList) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabels" :: NullOrUndefined (VersionLabelsList) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } ) -> DescribeApplicationVersionsMessage
newDescribeApplicationVersionsMessage'  customize = (DescribeApplicationVersionsMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "VersionLabels": (NullOrUndefined Nothing) }



-- | <p>Request to describe one or more applications.</p>
newtype DescribeApplicationsMessage = DescribeApplicationsMessage 
  { "ApplicationNames" :: NullOrUndefined (ApplicationNamesList)
  }
derive instance newtypeDescribeApplicationsMessage :: Newtype DescribeApplicationsMessage _
derive instance repGenericDescribeApplicationsMessage :: Generic DescribeApplicationsMessage _
instance showDescribeApplicationsMessage :: Show DescribeApplicationsMessage where show = genericShow
instance decodeDescribeApplicationsMessage :: Decode DescribeApplicationsMessage where decode = genericDecode options
instance encodeDescribeApplicationsMessage :: Encode DescribeApplicationsMessage where encode = genericEncode options

-- | Constructs DescribeApplicationsMessage from required parameters
newDescribeApplicationsMessage :: DescribeApplicationsMessage
newDescribeApplicationsMessage  = DescribeApplicationsMessage { "ApplicationNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeApplicationsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeApplicationsMessage' :: ( { "ApplicationNames" :: NullOrUndefined (ApplicationNamesList) } -> {"ApplicationNames" :: NullOrUndefined (ApplicationNamesList) } ) -> DescribeApplicationsMessage
newDescribeApplicationsMessage'  customize = (DescribeApplicationsMessage <<< customize) { "ApplicationNames": (NullOrUndefined Nothing) }



-- | <p>Result message containing a list of application version descriptions.</p>
newtype DescribeConfigurationOptionsMessage = DescribeConfigurationOptionsMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "Options" :: NullOrUndefined (OptionsSpecifierList)
  }
derive instance newtypeDescribeConfigurationOptionsMessage :: Newtype DescribeConfigurationOptionsMessage _
derive instance repGenericDescribeConfigurationOptionsMessage :: Generic DescribeConfigurationOptionsMessage _
instance showDescribeConfigurationOptionsMessage :: Show DescribeConfigurationOptionsMessage where show = genericShow
instance decodeDescribeConfigurationOptionsMessage :: Decode DescribeConfigurationOptionsMessage where decode = genericDecode options
instance encodeDescribeConfigurationOptionsMessage :: Encode DescribeConfigurationOptionsMessage where encode = genericEncode options

-- | Constructs DescribeConfigurationOptionsMessage from required parameters
newDescribeConfigurationOptionsMessage :: DescribeConfigurationOptionsMessage
newDescribeConfigurationOptionsMessage  = DescribeConfigurationOptionsMessage { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Options": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationOptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationOptionsMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "Options" :: NullOrUndefined (OptionsSpecifierList) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "Options" :: NullOrUndefined (OptionsSpecifierList) } ) -> DescribeConfigurationOptionsMessage
newDescribeConfigurationOptionsMessage'  customize = (DescribeConfigurationOptionsMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Options": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }



-- | <p>Result message containing all of the configuration settings for a specified solution stack or configuration template.</p>
newtype DescribeConfigurationSettingsMessage = DescribeConfigurationSettingsMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeDescribeConfigurationSettingsMessage :: Newtype DescribeConfigurationSettingsMessage _
derive instance repGenericDescribeConfigurationSettingsMessage :: Generic DescribeConfigurationSettingsMessage _
instance showDescribeConfigurationSettingsMessage :: Show DescribeConfigurationSettingsMessage where show = genericShow
instance decodeDescribeConfigurationSettingsMessage :: Decode DescribeConfigurationSettingsMessage where decode = genericDecode options
instance encodeDescribeConfigurationSettingsMessage :: Encode DescribeConfigurationSettingsMessage where encode = genericEncode options

-- | Constructs DescribeConfigurationSettingsMessage from required parameters
newDescribeConfigurationSettingsMessage :: ApplicationName -> DescribeConfigurationSettingsMessage
newDescribeConfigurationSettingsMessage _ApplicationName = DescribeConfigurationSettingsMessage { "ApplicationName": _ApplicationName, "EnvironmentName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }

-- | Constructs DescribeConfigurationSettingsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationSettingsMessage' :: ApplicationName -> ( { "ApplicationName" :: (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"ApplicationName" :: (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> DescribeConfigurationSettingsMessage
newDescribeConfigurationSettingsMessage' _ApplicationName customize = (DescribeConfigurationSettingsMessage <<< customize) { "ApplicationName": _ApplicationName, "EnvironmentName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }



-- | <p>See the example below to learn how to create a request body.</p>
newtype DescribeEnvironmentHealthRequest = DescribeEnvironmentHealthRequest 
  { "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes)
  }
derive instance newtypeDescribeEnvironmentHealthRequest :: Newtype DescribeEnvironmentHealthRequest _
derive instance repGenericDescribeEnvironmentHealthRequest :: Generic DescribeEnvironmentHealthRequest _
instance showDescribeEnvironmentHealthRequest :: Show DescribeEnvironmentHealthRequest where show = genericShow
instance decodeDescribeEnvironmentHealthRequest :: Decode DescribeEnvironmentHealthRequest where decode = genericDecode options
instance encodeDescribeEnvironmentHealthRequest :: Encode DescribeEnvironmentHealthRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentHealthRequest from required parameters
newDescribeEnvironmentHealthRequest :: DescribeEnvironmentHealthRequest
newDescribeEnvironmentHealthRequest  = DescribeEnvironmentHealthRequest { "AttributeNames": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentHealthRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentHealthRequest' :: ( { "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes) } -> {"EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes) } ) -> DescribeEnvironmentHealthRequest
newDescribeEnvironmentHealthRequest'  customize = (DescribeEnvironmentHealthRequest <<< customize) { "AttributeNames": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



-- | <p>Health details for an AWS Elastic Beanstalk environment.</p>
newtype DescribeEnvironmentHealthResult = DescribeEnvironmentHealthResult 
  { "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "HealthStatus" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (EnvironmentHealth)
  , "Color" :: NullOrUndefined (String)
  , "Causes" :: NullOrUndefined (Causes)
  , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics)
  , "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary)
  , "RefreshedAt" :: NullOrUndefined (RefreshedAt)
  }
derive instance newtypeDescribeEnvironmentHealthResult :: Newtype DescribeEnvironmentHealthResult _
derive instance repGenericDescribeEnvironmentHealthResult :: Generic DescribeEnvironmentHealthResult _
instance showDescribeEnvironmentHealthResult :: Show DescribeEnvironmentHealthResult where show = genericShow
instance decodeDescribeEnvironmentHealthResult :: Decode DescribeEnvironmentHealthResult where decode = genericDecode options
instance encodeDescribeEnvironmentHealthResult :: Encode DescribeEnvironmentHealthResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentHealthResult from required parameters
newDescribeEnvironmentHealthResult :: DescribeEnvironmentHealthResult
newDescribeEnvironmentHealthResult  = DescribeEnvironmentHealthResult { "ApplicationMetrics": (NullOrUndefined Nothing), "Causes": (NullOrUndefined Nothing), "Color": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "InstancesHealth": (NullOrUndefined Nothing), "RefreshedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentHealthResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentHealthResult' :: ( { "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "HealthStatus" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (EnvironmentHealth) , "Color" :: NullOrUndefined (String) , "Causes" :: NullOrUndefined (Causes) , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics) , "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary) , "RefreshedAt" :: NullOrUndefined (RefreshedAt) } -> {"EnvironmentName" :: NullOrUndefined (EnvironmentName) , "HealthStatus" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (EnvironmentHealth) , "Color" :: NullOrUndefined (String) , "Causes" :: NullOrUndefined (Causes) , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics) , "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary) , "RefreshedAt" :: NullOrUndefined (RefreshedAt) } ) -> DescribeEnvironmentHealthResult
newDescribeEnvironmentHealthResult'  customize = (DescribeEnvironmentHealthResult <<< customize) { "ApplicationMetrics": (NullOrUndefined Nothing), "Causes": (NullOrUndefined Nothing), "Color": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "InstancesHealth": (NullOrUndefined Nothing), "RefreshedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>Request to list completed and failed managed actions.</p>
newtype DescribeEnvironmentManagedActionHistoryRequest = DescribeEnvironmentManagedActionHistoryRequest 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "NextToken" :: NullOrUndefined (String)
  , "MaxItems" :: NullOrUndefined (Int)
  }
derive instance newtypeDescribeEnvironmentManagedActionHistoryRequest :: Newtype DescribeEnvironmentManagedActionHistoryRequest _
derive instance repGenericDescribeEnvironmentManagedActionHistoryRequest :: Generic DescribeEnvironmentManagedActionHistoryRequest _
instance showDescribeEnvironmentManagedActionHistoryRequest :: Show DescribeEnvironmentManagedActionHistoryRequest where show = genericShow
instance decodeDescribeEnvironmentManagedActionHistoryRequest :: Decode DescribeEnvironmentManagedActionHistoryRequest where decode = genericDecode options
instance encodeDescribeEnvironmentManagedActionHistoryRequest :: Encode DescribeEnvironmentManagedActionHistoryRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentManagedActionHistoryRequest from required parameters
newDescribeEnvironmentManagedActionHistoryRequest :: DescribeEnvironmentManagedActionHistoryRequest
newDescribeEnvironmentManagedActionHistoryRequest  = DescribeEnvironmentManagedActionHistoryRequest { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentManagedActionHistoryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentManagedActionHistoryRequest' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "NextToken" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (Int) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "NextToken" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (Int) } ) -> DescribeEnvironmentManagedActionHistoryRequest
newDescribeEnvironmentManagedActionHistoryRequest'  customize = (DescribeEnvironmentManagedActionHistoryRequest <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>A result message containing a list of completed and failed managed actions.</p>
newtype DescribeEnvironmentManagedActionHistoryResult = DescribeEnvironmentManagedActionHistoryResult 
  { "ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeEnvironmentManagedActionHistoryResult :: Newtype DescribeEnvironmentManagedActionHistoryResult _
derive instance repGenericDescribeEnvironmentManagedActionHistoryResult :: Generic DescribeEnvironmentManagedActionHistoryResult _
instance showDescribeEnvironmentManagedActionHistoryResult :: Show DescribeEnvironmentManagedActionHistoryResult where show = genericShow
instance decodeDescribeEnvironmentManagedActionHistoryResult :: Decode DescribeEnvironmentManagedActionHistoryResult where decode = genericDecode options
instance encodeDescribeEnvironmentManagedActionHistoryResult :: Encode DescribeEnvironmentManagedActionHistoryResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentManagedActionHistoryResult from required parameters
newDescribeEnvironmentManagedActionHistoryResult :: DescribeEnvironmentManagedActionHistoryResult
newDescribeEnvironmentManagedActionHistoryResult  = DescribeEnvironmentManagedActionHistoryResult { "ManagedActionHistoryItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentManagedActionHistoryResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentManagedActionHistoryResult' :: ( { "ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems) , "NextToken" :: NullOrUndefined (String) } -> {"ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeEnvironmentManagedActionHistoryResult
newDescribeEnvironmentManagedActionHistoryResult'  customize = (DescribeEnvironmentManagedActionHistoryResult <<< customize) { "ManagedActionHistoryItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Request to list an environment's upcoming and in-progress managed actions.</p>
newtype DescribeEnvironmentManagedActionsRequest = DescribeEnvironmentManagedActionsRequest 
  { "EnvironmentName" :: NullOrUndefined (String)
  , "EnvironmentId" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (ActionStatus)
  }
derive instance newtypeDescribeEnvironmentManagedActionsRequest :: Newtype DescribeEnvironmentManagedActionsRequest _
derive instance repGenericDescribeEnvironmentManagedActionsRequest :: Generic DescribeEnvironmentManagedActionsRequest _
instance showDescribeEnvironmentManagedActionsRequest :: Show DescribeEnvironmentManagedActionsRequest where show = genericShow
instance decodeDescribeEnvironmentManagedActionsRequest :: Decode DescribeEnvironmentManagedActionsRequest where decode = genericDecode options
instance encodeDescribeEnvironmentManagedActionsRequest :: Encode DescribeEnvironmentManagedActionsRequest where encode = genericEncode options

-- | Constructs DescribeEnvironmentManagedActionsRequest from required parameters
newDescribeEnvironmentManagedActionsRequest :: DescribeEnvironmentManagedActionsRequest
newDescribeEnvironmentManagedActionsRequest  = DescribeEnvironmentManagedActionsRequest { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentManagedActionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentManagedActionsRequest' :: ( { "EnvironmentName" :: NullOrUndefined (String) , "EnvironmentId" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (ActionStatus) } -> {"EnvironmentName" :: NullOrUndefined (String) , "EnvironmentId" :: NullOrUndefined (String) , "Status" :: NullOrUndefined (ActionStatus) } ) -> DescribeEnvironmentManagedActionsRequest
newDescribeEnvironmentManagedActionsRequest'  customize = (DescribeEnvironmentManagedActionsRequest <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>The result message containing a list of managed actions.</p>
newtype DescribeEnvironmentManagedActionsResult = DescribeEnvironmentManagedActionsResult 
  { "ManagedActions" :: NullOrUndefined (ManagedActions)
  }
derive instance newtypeDescribeEnvironmentManagedActionsResult :: Newtype DescribeEnvironmentManagedActionsResult _
derive instance repGenericDescribeEnvironmentManagedActionsResult :: Generic DescribeEnvironmentManagedActionsResult _
instance showDescribeEnvironmentManagedActionsResult :: Show DescribeEnvironmentManagedActionsResult where show = genericShow
instance decodeDescribeEnvironmentManagedActionsResult :: Decode DescribeEnvironmentManagedActionsResult where decode = genericDecode options
instance encodeDescribeEnvironmentManagedActionsResult :: Encode DescribeEnvironmentManagedActionsResult where encode = genericEncode options

-- | Constructs DescribeEnvironmentManagedActionsResult from required parameters
newDescribeEnvironmentManagedActionsResult :: DescribeEnvironmentManagedActionsResult
newDescribeEnvironmentManagedActionsResult  = DescribeEnvironmentManagedActionsResult { "ManagedActions": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentManagedActionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentManagedActionsResult' :: ( { "ManagedActions" :: NullOrUndefined (ManagedActions) } -> {"ManagedActions" :: NullOrUndefined (ManagedActions) } ) -> DescribeEnvironmentManagedActionsResult
newDescribeEnvironmentManagedActionsResult'  customize = (DescribeEnvironmentManagedActionsResult <<< customize) { "ManagedActions": (NullOrUndefined Nothing) }



-- | <p>Request to describe the resources in an environment.</p>
newtype DescribeEnvironmentResourcesMessage = DescribeEnvironmentResourcesMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeDescribeEnvironmentResourcesMessage :: Newtype DescribeEnvironmentResourcesMessage _
derive instance repGenericDescribeEnvironmentResourcesMessage :: Generic DescribeEnvironmentResourcesMessage _
instance showDescribeEnvironmentResourcesMessage :: Show DescribeEnvironmentResourcesMessage where show = genericShow
instance decodeDescribeEnvironmentResourcesMessage :: Decode DescribeEnvironmentResourcesMessage where decode = genericDecode options
instance encodeDescribeEnvironmentResourcesMessage :: Encode DescribeEnvironmentResourcesMessage where encode = genericEncode options

-- | Constructs DescribeEnvironmentResourcesMessage from required parameters
newDescribeEnvironmentResourcesMessage :: DescribeEnvironmentResourcesMessage
newDescribeEnvironmentResourcesMessage  = DescribeEnvironmentResourcesMessage { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentResourcesMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentResourcesMessage' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> DescribeEnvironmentResourcesMessage
newDescribeEnvironmentResourcesMessage'  customize = (DescribeEnvironmentResourcesMessage <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



-- | <p>Request to describe one or more environments.</p>
newtype DescribeEnvironmentsMessage = DescribeEnvironmentsMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList)
  , "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList)
  , "IncludeDeleted" :: NullOrUndefined (IncludeDeleted)
  , "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo)
  , "MaxRecords" :: NullOrUndefined (MaxRecords)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeDescribeEnvironmentsMessage :: Newtype DescribeEnvironmentsMessage _
derive instance repGenericDescribeEnvironmentsMessage :: Generic DescribeEnvironmentsMessage _
instance showDescribeEnvironmentsMessage :: Show DescribeEnvironmentsMessage where show = genericShow
instance decodeDescribeEnvironmentsMessage :: Decode DescribeEnvironmentsMessage where decode = genericDecode options
instance encodeDescribeEnvironmentsMessage :: Encode DescribeEnvironmentsMessage where encode = genericEncode options

-- | Constructs DescribeEnvironmentsMessage from required parameters
newDescribeEnvironmentsMessage :: DescribeEnvironmentsMessage
newDescribeEnvironmentsMessage  = DescribeEnvironmentsMessage { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentIds": (NullOrUndefined Nothing), "EnvironmentNames": (NullOrUndefined Nothing), "IncludeDeleted": (NullOrUndefined Nothing), "IncludedDeletedBackTo": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs DescribeEnvironmentsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEnvironmentsMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList) , "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList) , "IncludeDeleted" :: NullOrUndefined (IncludeDeleted) , "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList) , "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList) , "IncludeDeleted" :: NullOrUndefined (IncludeDeleted) , "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } ) -> DescribeEnvironmentsMessage
newDescribeEnvironmentsMessage'  customize = (DescribeEnvironmentsMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentIds": (NullOrUndefined Nothing), "EnvironmentNames": (NullOrUndefined Nothing), "IncludeDeleted": (NullOrUndefined Nothing), "IncludedDeletedBackTo": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



-- | <p>Request to retrieve a list of events for an environment.</p>
newtype DescribeEventsMessage = DescribeEventsMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "RequestId" :: NullOrUndefined (RequestId)
  , "Severity" :: NullOrUndefined (EventSeverity)
  , "StartTime" :: NullOrUndefined (TimeFilterStart)
  , "EndTime" :: NullOrUndefined (TimeFilterEnd)
  , "MaxRecords" :: NullOrUndefined (MaxRecords)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeDescribeEventsMessage :: Newtype DescribeEventsMessage _
derive instance repGenericDescribeEventsMessage :: Generic DescribeEventsMessage _
instance showDescribeEventsMessage :: Show DescribeEventsMessage where show = genericShow
instance decodeDescribeEventsMessage :: Decode DescribeEventsMessage where decode = genericDecode options
instance encodeDescribeEventsMessage :: Encode DescribeEventsMessage where encode = genericEncode options

-- | Constructs DescribeEventsMessage from required parameters
newDescribeEventsMessage :: DescribeEventsMessage
newDescribeEventsMessage  = DescribeEventsMessage { "ApplicationName": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "RequestId": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs DescribeEventsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventsMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "RequestId" :: NullOrUndefined (RequestId) , "Severity" :: NullOrUndefined (EventSeverity) , "StartTime" :: NullOrUndefined (TimeFilterStart) , "EndTime" :: NullOrUndefined (TimeFilterEnd) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "RequestId" :: NullOrUndefined (RequestId) , "Severity" :: NullOrUndefined (EventSeverity) , "StartTime" :: NullOrUndefined (TimeFilterStart) , "EndTime" :: NullOrUndefined (TimeFilterEnd) , "MaxRecords" :: NullOrUndefined (MaxRecords) , "NextToken" :: NullOrUndefined (Token) } ) -> DescribeEventsMessage
newDescribeEventsMessage'  customize = (DescribeEventsMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "RequestId": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



-- | <p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>
newtype DescribeInstancesHealthRequest = DescribeInstancesHealthRequest 
  { "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeInstancesHealthRequest :: Newtype DescribeInstancesHealthRequest _
derive instance repGenericDescribeInstancesHealthRequest :: Generic DescribeInstancesHealthRequest _
instance showDescribeInstancesHealthRequest :: Show DescribeInstancesHealthRequest where show = genericShow
instance decodeDescribeInstancesHealthRequest :: Decode DescribeInstancesHealthRequest where decode = genericDecode options
instance encodeDescribeInstancesHealthRequest :: Encode DescribeInstancesHealthRequest where encode = genericEncode options

-- | Constructs DescribeInstancesHealthRequest from required parameters
newDescribeInstancesHealthRequest :: DescribeInstancesHealthRequest
newDescribeInstancesHealthRequest  = DescribeInstancesHealthRequest { "AttributeNames": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesHealthRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesHealthRequest' :: ( { "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes) , "NextToken" :: NullOrUndefined (NextToken) } -> {"EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeInstancesHealthRequest
newDescribeInstancesHealthRequest'  customize = (DescribeInstancesHealthRequest <<< customize) { "AttributeNames": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk environment.</p>
newtype DescribeInstancesHealthResult = DescribeInstancesHealthResult 
  { "InstanceHealthList" :: NullOrUndefined (InstanceHealthList)
  , "RefreshedAt" :: NullOrUndefined (RefreshedAt)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeDescribeInstancesHealthResult :: Newtype DescribeInstancesHealthResult _
derive instance repGenericDescribeInstancesHealthResult :: Generic DescribeInstancesHealthResult _
instance showDescribeInstancesHealthResult :: Show DescribeInstancesHealthResult where show = genericShow
instance decodeDescribeInstancesHealthResult :: Decode DescribeInstancesHealthResult where decode = genericDecode options
instance encodeDescribeInstancesHealthResult :: Encode DescribeInstancesHealthResult where encode = genericEncode options

-- | Constructs DescribeInstancesHealthResult from required parameters
newDescribeInstancesHealthResult :: DescribeInstancesHealthResult
newDescribeInstancesHealthResult  = DescribeInstancesHealthResult { "InstanceHealthList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RefreshedAt": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesHealthResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesHealthResult' :: ( { "InstanceHealthList" :: NullOrUndefined (InstanceHealthList) , "RefreshedAt" :: NullOrUndefined (RefreshedAt) , "NextToken" :: NullOrUndefined (NextToken) } -> {"InstanceHealthList" :: NullOrUndefined (InstanceHealthList) , "RefreshedAt" :: NullOrUndefined (RefreshedAt) , "NextToken" :: NullOrUndefined (NextToken) } ) -> DescribeInstancesHealthResult
newDescribeInstancesHealthResult'  customize = (DescribeInstancesHealthResult <<< customize) { "InstanceHealthList": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RefreshedAt": (NullOrUndefined Nothing) }



newtype DescribePlatformVersionRequest = DescribePlatformVersionRequest 
  { "PlatformArn" :: NullOrUndefined (PlatformArn)
  }
derive instance newtypeDescribePlatformVersionRequest :: Newtype DescribePlatformVersionRequest _
derive instance repGenericDescribePlatformVersionRequest :: Generic DescribePlatformVersionRequest _
instance showDescribePlatformVersionRequest :: Show DescribePlatformVersionRequest where show = genericShow
instance decodeDescribePlatformVersionRequest :: Decode DescribePlatformVersionRequest where decode = genericDecode options
instance encodeDescribePlatformVersionRequest :: Encode DescribePlatformVersionRequest where encode = genericEncode options

-- | Constructs DescribePlatformVersionRequest from required parameters
newDescribePlatformVersionRequest :: DescribePlatformVersionRequest
newDescribePlatformVersionRequest  = DescribePlatformVersionRequest { "PlatformArn": (NullOrUndefined Nothing) }

-- | Constructs DescribePlatformVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePlatformVersionRequest' :: ( { "PlatformArn" :: NullOrUndefined (PlatformArn) } -> {"PlatformArn" :: NullOrUndefined (PlatformArn) } ) -> DescribePlatformVersionRequest
newDescribePlatformVersionRequest'  customize = (DescribePlatformVersionRequest <<< customize) { "PlatformArn": (NullOrUndefined Nothing) }



newtype DescribePlatformVersionResult = DescribePlatformVersionResult 
  { "PlatformDescription" :: NullOrUndefined (PlatformDescription)
  }
derive instance newtypeDescribePlatformVersionResult :: Newtype DescribePlatformVersionResult _
derive instance repGenericDescribePlatformVersionResult :: Generic DescribePlatformVersionResult _
instance showDescribePlatformVersionResult :: Show DescribePlatformVersionResult where show = genericShow
instance decodeDescribePlatformVersionResult :: Decode DescribePlatformVersionResult where decode = genericDecode options
instance encodeDescribePlatformVersionResult :: Encode DescribePlatformVersionResult where encode = genericEncode options

-- | Constructs DescribePlatformVersionResult from required parameters
newDescribePlatformVersionResult :: DescribePlatformVersionResult
newDescribePlatformVersionResult  = DescribePlatformVersionResult { "PlatformDescription": (NullOrUndefined Nothing) }

-- | Constructs DescribePlatformVersionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePlatformVersionResult' :: ( { "PlatformDescription" :: NullOrUndefined (PlatformDescription) } -> {"PlatformDescription" :: NullOrUndefined (PlatformDescription) } ) -> DescribePlatformVersionResult
newDescribePlatformVersionResult'  customize = (DescribePlatformVersionResult <<< customize) { "PlatformDescription": (NullOrUndefined Nothing) }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



newtype Ec2InstanceId = Ec2InstanceId String
derive instance newtypeEc2InstanceId :: Newtype Ec2InstanceId _
derive instance repGenericEc2InstanceId :: Generic Ec2InstanceId _
instance showEc2InstanceId :: Show Ec2InstanceId where show = genericShow
instance decodeEc2InstanceId :: Decode Ec2InstanceId where decode = genericDecode options
instance encodeEc2InstanceId :: Encode Ec2InstanceId where encode = genericEncode options



-- | <p>A generic service exception has occurred.</p>
newtype ElasticBeanstalkServiceException = ElasticBeanstalkServiceException 
  { "message" :: NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeElasticBeanstalkServiceException :: Newtype ElasticBeanstalkServiceException _
derive instance repGenericElasticBeanstalkServiceException :: Generic ElasticBeanstalkServiceException _
instance showElasticBeanstalkServiceException :: Show ElasticBeanstalkServiceException where show = genericShow
instance decodeElasticBeanstalkServiceException :: Decode ElasticBeanstalkServiceException where decode = genericDecode options
instance encodeElasticBeanstalkServiceException :: Encode ElasticBeanstalkServiceException where encode = genericEncode options

-- | Constructs ElasticBeanstalkServiceException from required parameters
newElasticBeanstalkServiceException :: ElasticBeanstalkServiceException
newElasticBeanstalkServiceException  = ElasticBeanstalkServiceException { "message": (NullOrUndefined Nothing) }

-- | Constructs ElasticBeanstalkServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticBeanstalkServiceException' :: ( { "message" :: NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined (ExceptionMessage) } ) -> ElasticBeanstalkServiceException
newElasticBeanstalkServiceException'  customize = (ElasticBeanstalkServiceException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EndpointURL = EndpointURL String
derive instance newtypeEndpointURL :: Newtype EndpointURL _
derive instance repGenericEndpointURL :: Generic EndpointURL _
instance showEndpointURL :: Show EndpointURL where show = genericShow
instance decodeEndpointURL :: Decode EndpointURL where decode = genericDecode options
instance encodeEndpointURL :: Encode EndpointURL where encode = genericEncode options



newtype EnvironmentArn = EnvironmentArn String
derive instance newtypeEnvironmentArn :: Newtype EnvironmentArn _
derive instance repGenericEnvironmentArn :: Generic EnvironmentArn _
instance showEnvironmentArn :: Show EnvironmentArn where show = genericShow
instance decodeEnvironmentArn :: Decode EnvironmentArn where decode = genericDecode options
instance encodeEnvironmentArn :: Encode EnvironmentArn where encode = genericEncode options



-- | <p>Describes the properties of an environment.</p>
newtype EnvironmentDescription = EnvironmentDescription 
  { "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "Description" :: NullOrUndefined (Description)
  , "EndpointURL" :: NullOrUndefined (EndpointURL)
  , "CNAME" :: NullOrUndefined (DNSCname)
  , "DateCreated" :: NullOrUndefined (CreationDate)
  , "DateUpdated" :: NullOrUndefined (UpdateDate)
  , "Status" :: NullOrUndefined (EnvironmentStatus)
  , "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress)
  , "Health" :: NullOrUndefined (EnvironmentHealth)
  , "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus)
  , "Resources" :: NullOrUndefined (EnvironmentResourcesDescription)
  , "Tier" :: NullOrUndefined (EnvironmentTier)
  , "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks)
  , "EnvironmentArn" :: NullOrUndefined (EnvironmentArn)
  }
derive instance newtypeEnvironmentDescription :: Newtype EnvironmentDescription _
derive instance repGenericEnvironmentDescription :: Generic EnvironmentDescription _
instance showEnvironmentDescription :: Show EnvironmentDescription where show = genericShow
instance decodeEnvironmentDescription :: Decode EnvironmentDescription where decode = genericDecode options
instance encodeEnvironmentDescription :: Encode EnvironmentDescription where encode = genericEncode options

-- | Constructs EnvironmentDescription from required parameters
newEnvironmentDescription :: EnvironmentDescription
newEnvironmentDescription  = EnvironmentDescription { "AbortableOperationInProgress": (NullOrUndefined Nothing), "ApplicationName": (NullOrUndefined Nothing), "CNAME": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EndpointURL": (NullOrUndefined Nothing), "EnvironmentArn": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentLinks": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Health": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentDescription' :: ( { "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "EndpointURL" :: NullOrUndefined (EndpointURL) , "CNAME" :: NullOrUndefined (DNSCname) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Status" :: NullOrUndefined (EnvironmentStatus) , "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress) , "Health" :: NullOrUndefined (EnvironmentHealth) , "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus) , "Resources" :: NullOrUndefined (EnvironmentResourcesDescription) , "Tier" :: NullOrUndefined (EnvironmentTier) , "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks) , "EnvironmentArn" :: NullOrUndefined (EnvironmentArn) } -> {"EnvironmentName" :: NullOrUndefined (EnvironmentName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "EndpointURL" :: NullOrUndefined (EndpointURL) , "CNAME" :: NullOrUndefined (DNSCname) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "Status" :: NullOrUndefined (EnvironmentStatus) , "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress) , "Health" :: NullOrUndefined (EnvironmentHealth) , "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus) , "Resources" :: NullOrUndefined (EnvironmentResourcesDescription) , "Tier" :: NullOrUndefined (EnvironmentTier) , "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks) , "EnvironmentArn" :: NullOrUndefined (EnvironmentArn) } ) -> EnvironmentDescription
newEnvironmentDescription'  customize = (EnvironmentDescription <<< customize) { "AbortableOperationInProgress": (NullOrUndefined Nothing), "ApplicationName": (NullOrUndefined Nothing), "CNAME": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EndpointURL": (NullOrUndefined Nothing), "EnvironmentArn": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentLinks": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Health": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



newtype EnvironmentDescriptionsList = EnvironmentDescriptionsList (Array EnvironmentDescription)
derive instance newtypeEnvironmentDescriptionsList :: Newtype EnvironmentDescriptionsList _
derive instance repGenericEnvironmentDescriptionsList :: Generic EnvironmentDescriptionsList _
instance showEnvironmentDescriptionsList :: Show EnvironmentDescriptionsList where show = genericShow
instance decodeEnvironmentDescriptionsList :: Decode EnvironmentDescriptionsList where decode = genericDecode options
instance encodeEnvironmentDescriptionsList :: Encode EnvironmentDescriptionsList where encode = genericEncode options



-- | <p>Result message containing a list of environment descriptions.</p>
newtype EnvironmentDescriptionsMessage = EnvironmentDescriptionsMessage 
  { "Environments" :: NullOrUndefined (EnvironmentDescriptionsList)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeEnvironmentDescriptionsMessage :: Newtype EnvironmentDescriptionsMessage _
derive instance repGenericEnvironmentDescriptionsMessage :: Generic EnvironmentDescriptionsMessage _
instance showEnvironmentDescriptionsMessage :: Show EnvironmentDescriptionsMessage where show = genericShow
instance decodeEnvironmentDescriptionsMessage :: Decode EnvironmentDescriptionsMessage where decode = genericDecode options
instance encodeEnvironmentDescriptionsMessage :: Encode EnvironmentDescriptionsMessage where encode = genericEncode options

-- | Constructs EnvironmentDescriptionsMessage from required parameters
newEnvironmentDescriptionsMessage :: EnvironmentDescriptionsMessage
newEnvironmentDescriptionsMessage  = EnvironmentDescriptionsMessage { "Environments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentDescriptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentDescriptionsMessage' :: ( { "Environments" :: NullOrUndefined (EnvironmentDescriptionsList) , "NextToken" :: NullOrUndefined (Token) } -> {"Environments" :: NullOrUndefined (EnvironmentDescriptionsList) , "NextToken" :: NullOrUndefined (Token) } ) -> EnvironmentDescriptionsMessage
newEnvironmentDescriptionsMessage'  customize = (EnvironmentDescriptionsMessage <<< customize) { "Environments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype EnvironmentHealth = EnvironmentHealth String
derive instance newtypeEnvironmentHealth :: Newtype EnvironmentHealth _
derive instance repGenericEnvironmentHealth :: Generic EnvironmentHealth _
instance showEnvironmentHealth :: Show EnvironmentHealth where show = genericShow
instance decodeEnvironmentHealth :: Decode EnvironmentHealth where decode = genericDecode options
instance encodeEnvironmentHealth :: Encode EnvironmentHealth where encode = genericEncode options



newtype EnvironmentHealthAttribute = EnvironmentHealthAttribute String
derive instance newtypeEnvironmentHealthAttribute :: Newtype EnvironmentHealthAttribute _
derive instance repGenericEnvironmentHealthAttribute :: Generic EnvironmentHealthAttribute _
instance showEnvironmentHealthAttribute :: Show EnvironmentHealthAttribute where show = genericShow
instance decodeEnvironmentHealthAttribute :: Decode EnvironmentHealthAttribute where decode = genericDecode options
instance encodeEnvironmentHealthAttribute :: Encode EnvironmentHealthAttribute where encode = genericEncode options



newtype EnvironmentHealthAttributes = EnvironmentHealthAttributes (Array EnvironmentHealthAttribute)
derive instance newtypeEnvironmentHealthAttributes :: Newtype EnvironmentHealthAttributes _
derive instance repGenericEnvironmentHealthAttributes :: Generic EnvironmentHealthAttributes _
instance showEnvironmentHealthAttributes :: Show EnvironmentHealthAttributes where show = genericShow
instance decodeEnvironmentHealthAttributes :: Decode EnvironmentHealthAttributes where decode = genericDecode options
instance encodeEnvironmentHealthAttributes :: Encode EnvironmentHealthAttributes where encode = genericEncode options



newtype EnvironmentHealthStatus = EnvironmentHealthStatus String
derive instance newtypeEnvironmentHealthStatus :: Newtype EnvironmentHealthStatus _
derive instance repGenericEnvironmentHealthStatus :: Generic EnvironmentHealthStatus _
instance showEnvironmentHealthStatus :: Show EnvironmentHealthStatus where show = genericShow
instance decodeEnvironmentHealthStatus :: Decode EnvironmentHealthStatus where decode = genericDecode options
instance encodeEnvironmentHealthStatus :: Encode EnvironmentHealthStatus where encode = genericEncode options



newtype EnvironmentId = EnvironmentId String
derive instance newtypeEnvironmentId :: Newtype EnvironmentId _
derive instance repGenericEnvironmentId :: Generic EnvironmentId _
instance showEnvironmentId :: Show EnvironmentId where show = genericShow
instance decodeEnvironmentId :: Decode EnvironmentId where decode = genericDecode options
instance encodeEnvironmentId :: Encode EnvironmentId where encode = genericEncode options



newtype EnvironmentIdList = EnvironmentIdList (Array EnvironmentId)
derive instance newtypeEnvironmentIdList :: Newtype EnvironmentIdList _
derive instance repGenericEnvironmentIdList :: Generic EnvironmentIdList _
instance showEnvironmentIdList :: Show EnvironmentIdList where show = genericShow
instance decodeEnvironmentIdList :: Decode EnvironmentIdList where decode = genericDecode options
instance encodeEnvironmentIdList :: Encode EnvironmentIdList where encode = genericEncode options



-- | <p>The information retrieved from the Amazon EC2 instances.</p>
newtype EnvironmentInfoDescription = EnvironmentInfoDescription 
  { "InfoType" :: NullOrUndefined (EnvironmentInfoType)
  , "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId)
  , "SampleTimestamp" :: NullOrUndefined (SampleTimestamp)
  , "Message" :: NullOrUndefined (Message)
  }
derive instance newtypeEnvironmentInfoDescription :: Newtype EnvironmentInfoDescription _
derive instance repGenericEnvironmentInfoDescription :: Generic EnvironmentInfoDescription _
instance showEnvironmentInfoDescription :: Show EnvironmentInfoDescription where show = genericShow
instance decodeEnvironmentInfoDescription :: Decode EnvironmentInfoDescription where decode = genericDecode options
instance encodeEnvironmentInfoDescription :: Encode EnvironmentInfoDescription where encode = genericEncode options

-- | Constructs EnvironmentInfoDescription from required parameters
newEnvironmentInfoDescription :: EnvironmentInfoDescription
newEnvironmentInfoDescription  = EnvironmentInfoDescription { "Ec2InstanceId": (NullOrUndefined Nothing), "InfoType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "SampleTimestamp": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentInfoDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentInfoDescription' :: ( { "InfoType" :: NullOrUndefined (EnvironmentInfoType) , "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId) , "SampleTimestamp" :: NullOrUndefined (SampleTimestamp) , "Message" :: NullOrUndefined (Message) } -> {"InfoType" :: NullOrUndefined (EnvironmentInfoType) , "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId) , "SampleTimestamp" :: NullOrUndefined (SampleTimestamp) , "Message" :: NullOrUndefined (Message) } ) -> EnvironmentInfoDescription
newEnvironmentInfoDescription'  customize = (EnvironmentInfoDescription <<< customize) { "Ec2InstanceId": (NullOrUndefined Nothing), "InfoType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "SampleTimestamp": (NullOrUndefined Nothing) }



newtype EnvironmentInfoDescriptionList = EnvironmentInfoDescriptionList (Array EnvironmentInfoDescription)
derive instance newtypeEnvironmentInfoDescriptionList :: Newtype EnvironmentInfoDescriptionList _
derive instance repGenericEnvironmentInfoDescriptionList :: Generic EnvironmentInfoDescriptionList _
instance showEnvironmentInfoDescriptionList :: Show EnvironmentInfoDescriptionList where show = genericShow
instance decodeEnvironmentInfoDescriptionList :: Decode EnvironmentInfoDescriptionList where decode = genericDecode options
instance encodeEnvironmentInfoDescriptionList :: Encode EnvironmentInfoDescriptionList where encode = genericEncode options



newtype EnvironmentInfoType = EnvironmentInfoType String
derive instance newtypeEnvironmentInfoType :: Newtype EnvironmentInfoType _
derive instance repGenericEnvironmentInfoType :: Generic EnvironmentInfoType _
instance showEnvironmentInfoType :: Show EnvironmentInfoType where show = genericShow
instance decodeEnvironmentInfoType :: Decode EnvironmentInfoType where decode = genericDecode options
instance encodeEnvironmentInfoType :: Encode EnvironmentInfoType where encode = genericEncode options



-- | <p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
newtype EnvironmentLink = EnvironmentLink 
  { "LinkName" :: NullOrUndefined (String)
  , "EnvironmentName" :: NullOrUndefined (String)
  }
derive instance newtypeEnvironmentLink :: Newtype EnvironmentLink _
derive instance repGenericEnvironmentLink :: Generic EnvironmentLink _
instance showEnvironmentLink :: Show EnvironmentLink where show = genericShow
instance decodeEnvironmentLink :: Decode EnvironmentLink where decode = genericDecode options
instance encodeEnvironmentLink :: Encode EnvironmentLink where encode = genericEncode options

-- | Constructs EnvironmentLink from required parameters
newEnvironmentLink :: EnvironmentLink
newEnvironmentLink  = EnvironmentLink { "EnvironmentName": (NullOrUndefined Nothing), "LinkName": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentLink's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentLink' :: ( { "LinkName" :: NullOrUndefined (String) , "EnvironmentName" :: NullOrUndefined (String) } -> {"LinkName" :: NullOrUndefined (String) , "EnvironmentName" :: NullOrUndefined (String) } ) -> EnvironmentLink
newEnvironmentLink'  customize = (EnvironmentLink <<< customize) { "EnvironmentName": (NullOrUndefined Nothing), "LinkName": (NullOrUndefined Nothing) }



newtype EnvironmentLinks = EnvironmentLinks (Array EnvironmentLink)
derive instance newtypeEnvironmentLinks :: Newtype EnvironmentLinks _
derive instance repGenericEnvironmentLinks :: Generic EnvironmentLinks _
instance showEnvironmentLinks :: Show EnvironmentLinks where show = genericShow
instance decodeEnvironmentLinks :: Decode EnvironmentLinks where decode = genericDecode options
instance encodeEnvironmentLinks :: Encode EnvironmentLinks where encode = genericEncode options



newtype EnvironmentName = EnvironmentName String
derive instance newtypeEnvironmentName :: Newtype EnvironmentName _
derive instance repGenericEnvironmentName :: Generic EnvironmentName _
instance showEnvironmentName :: Show EnvironmentName where show = genericShow
instance decodeEnvironmentName :: Decode EnvironmentName where decode = genericDecode options
instance encodeEnvironmentName :: Encode EnvironmentName where encode = genericEncode options



newtype EnvironmentNamesList = EnvironmentNamesList (Array EnvironmentName)
derive instance newtypeEnvironmentNamesList :: Newtype EnvironmentNamesList _
derive instance repGenericEnvironmentNamesList :: Generic EnvironmentNamesList _
instance showEnvironmentNamesList :: Show EnvironmentNamesList where show = genericShow
instance decodeEnvironmentNamesList :: Decode EnvironmentNamesList where decode = genericDecode options
instance encodeEnvironmentNamesList :: Encode EnvironmentNamesList where encode = genericEncode options



-- | <p>Describes the AWS resources in use by this environment. This data is live.</p>
newtype EnvironmentResourceDescription = EnvironmentResourceDescription 
  { "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList)
  , "Instances" :: NullOrUndefined (InstanceList)
  , "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList)
  , "LoadBalancers" :: NullOrUndefined (LoadBalancerList)
  , "Triggers" :: NullOrUndefined (TriggerList)
  , "Queues" :: NullOrUndefined (QueueList)
  }
derive instance newtypeEnvironmentResourceDescription :: Newtype EnvironmentResourceDescription _
derive instance repGenericEnvironmentResourceDescription :: Generic EnvironmentResourceDescription _
instance showEnvironmentResourceDescription :: Show EnvironmentResourceDescription where show = genericShow
instance decodeEnvironmentResourceDescription :: Decode EnvironmentResourceDescription where decode = genericDecode options
instance encodeEnvironmentResourceDescription :: Encode EnvironmentResourceDescription where encode = genericEncode options

-- | Constructs EnvironmentResourceDescription from required parameters
newEnvironmentResourceDescription :: EnvironmentResourceDescription
newEnvironmentResourceDescription  = EnvironmentResourceDescription { "AutoScalingGroups": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Instances": (NullOrUndefined Nothing), "LaunchConfigurations": (NullOrUndefined Nothing), "LoadBalancers": (NullOrUndefined Nothing), "Queues": (NullOrUndefined Nothing), "Triggers": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentResourceDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentResourceDescription' :: ( { "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList) , "Instances" :: NullOrUndefined (InstanceList) , "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList) , "LoadBalancers" :: NullOrUndefined (LoadBalancerList) , "Triggers" :: NullOrUndefined (TriggerList) , "Queues" :: NullOrUndefined (QueueList) } -> {"EnvironmentName" :: NullOrUndefined (EnvironmentName) , "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList) , "Instances" :: NullOrUndefined (InstanceList) , "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList) , "LoadBalancers" :: NullOrUndefined (LoadBalancerList) , "Triggers" :: NullOrUndefined (TriggerList) , "Queues" :: NullOrUndefined (QueueList) } ) -> EnvironmentResourceDescription
newEnvironmentResourceDescription'  customize = (EnvironmentResourceDescription <<< customize) { "AutoScalingGroups": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "Instances": (NullOrUndefined Nothing), "LaunchConfigurations": (NullOrUndefined Nothing), "LoadBalancers": (NullOrUndefined Nothing), "Queues": (NullOrUndefined Nothing), "Triggers": (NullOrUndefined Nothing) }



-- | <p>Result message containing a list of environment resource descriptions.</p>
newtype EnvironmentResourceDescriptionsMessage = EnvironmentResourceDescriptionsMessage 
  { "EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription)
  }
derive instance newtypeEnvironmentResourceDescriptionsMessage :: Newtype EnvironmentResourceDescriptionsMessage _
derive instance repGenericEnvironmentResourceDescriptionsMessage :: Generic EnvironmentResourceDescriptionsMessage _
instance showEnvironmentResourceDescriptionsMessage :: Show EnvironmentResourceDescriptionsMessage where show = genericShow
instance decodeEnvironmentResourceDescriptionsMessage :: Decode EnvironmentResourceDescriptionsMessage where decode = genericDecode options
instance encodeEnvironmentResourceDescriptionsMessage :: Encode EnvironmentResourceDescriptionsMessage where encode = genericEncode options

-- | Constructs EnvironmentResourceDescriptionsMessage from required parameters
newEnvironmentResourceDescriptionsMessage :: EnvironmentResourceDescriptionsMessage
newEnvironmentResourceDescriptionsMessage  = EnvironmentResourceDescriptionsMessage { "EnvironmentResources": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentResourceDescriptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentResourceDescriptionsMessage' :: ( { "EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription) } -> {"EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription) } ) -> EnvironmentResourceDescriptionsMessage
newEnvironmentResourceDescriptionsMessage'  customize = (EnvironmentResourceDescriptionsMessage <<< customize) { "EnvironmentResources": (NullOrUndefined Nothing) }



-- | <p>Describes the AWS resources in use by this environment. This data is not live data.</p>
newtype EnvironmentResourcesDescription = EnvironmentResourcesDescription 
  { "LoadBalancer" :: NullOrUndefined (LoadBalancerDescription)
  }
derive instance newtypeEnvironmentResourcesDescription :: Newtype EnvironmentResourcesDescription _
derive instance repGenericEnvironmentResourcesDescription :: Generic EnvironmentResourcesDescription _
instance showEnvironmentResourcesDescription :: Show EnvironmentResourcesDescription where show = genericShow
instance decodeEnvironmentResourcesDescription :: Decode EnvironmentResourcesDescription where decode = genericDecode options
instance encodeEnvironmentResourcesDescription :: Encode EnvironmentResourcesDescription where encode = genericEncode options

-- | Constructs EnvironmentResourcesDescription from required parameters
newEnvironmentResourcesDescription :: EnvironmentResourcesDescription
newEnvironmentResourcesDescription  = EnvironmentResourcesDescription { "LoadBalancer": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentResourcesDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentResourcesDescription' :: ( { "LoadBalancer" :: NullOrUndefined (LoadBalancerDescription) } -> {"LoadBalancer" :: NullOrUndefined (LoadBalancerDescription) } ) -> EnvironmentResourcesDescription
newEnvironmentResourcesDescription'  customize = (EnvironmentResourcesDescription <<< customize) { "LoadBalancer": (NullOrUndefined Nothing) }



newtype EnvironmentStatus = EnvironmentStatus String
derive instance newtypeEnvironmentStatus :: Newtype EnvironmentStatus _
derive instance repGenericEnvironmentStatus :: Generic EnvironmentStatus _
instance showEnvironmentStatus :: Show EnvironmentStatus where show = genericShow
instance decodeEnvironmentStatus :: Decode EnvironmentStatus where decode = genericDecode options
instance encodeEnvironmentStatus :: Encode EnvironmentStatus where encode = genericEncode options



-- | <p>Describes the properties of an environment tier</p>
newtype EnvironmentTier = EnvironmentTier 
  { "Name" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  , "Version" :: NullOrUndefined (String)
  }
derive instance newtypeEnvironmentTier :: Newtype EnvironmentTier _
derive instance repGenericEnvironmentTier :: Generic EnvironmentTier _
instance showEnvironmentTier :: Show EnvironmentTier where show = genericShow
instance decodeEnvironmentTier :: Decode EnvironmentTier where decode = genericDecode options
instance encodeEnvironmentTier :: Encode EnvironmentTier where encode = genericEncode options

-- | Constructs EnvironmentTier from required parameters
newEnvironmentTier :: EnvironmentTier
newEnvironmentTier  = EnvironmentTier { "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentTier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentTier' :: ( { "Name" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } ) -> EnvironmentTier
newEnvironmentTier'  customize = (EnvironmentTier <<< customize) { "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype EventDate = EventDate Types.Timestamp
derive instance newtypeEventDate :: Newtype EventDate _
derive instance repGenericEventDate :: Generic EventDate _
instance showEventDate :: Show EventDate where show = genericShow
instance decodeEventDate :: Decode EventDate where decode = genericDecode options
instance encodeEventDate :: Encode EventDate where encode = genericEncode options



-- | <p>Describes an event.</p>
newtype EventDescription = EventDescription 
  { "EventDate" :: NullOrUndefined (EventDate)
  , "Message" :: NullOrUndefined (EventMessage)
  , "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "RequestId" :: NullOrUndefined (RequestId)
  , "Severity" :: NullOrUndefined (EventSeverity)
  }
derive instance newtypeEventDescription :: Newtype EventDescription _
derive instance repGenericEventDescription :: Generic EventDescription _
instance showEventDescription :: Show EventDescription where show = genericShow
instance decodeEventDescription :: Decode EventDescription where decode = genericDecode options
instance encodeEventDescription :: Encode EventDescription where encode = genericEncode options

-- | Constructs EventDescription from required parameters
newEventDescription :: EventDescription
newEventDescription  = EventDescription { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "EventDate": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "RequestId": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs EventDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDescription' :: ( { "EventDate" :: NullOrUndefined (EventDate) , "Message" :: NullOrUndefined (EventMessage) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "RequestId" :: NullOrUndefined (RequestId) , "Severity" :: NullOrUndefined (EventSeverity) } -> {"EventDate" :: NullOrUndefined (EventDate) , "Message" :: NullOrUndefined (EventMessage) , "ApplicationName" :: NullOrUndefined (ApplicationName) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "RequestId" :: NullOrUndefined (RequestId) , "Severity" :: NullOrUndefined (EventSeverity) } ) -> EventDescription
newEventDescription'  customize = (EventDescription <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "EventDate": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "RequestId": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



newtype EventDescriptionList = EventDescriptionList (Array EventDescription)
derive instance newtypeEventDescriptionList :: Newtype EventDescriptionList _
derive instance repGenericEventDescriptionList :: Generic EventDescriptionList _
instance showEventDescriptionList :: Show EventDescriptionList where show = genericShow
instance decodeEventDescriptionList :: Decode EventDescriptionList where decode = genericDecode options
instance encodeEventDescriptionList :: Encode EventDescriptionList where encode = genericEncode options



-- | <p>Result message wrapping a list of event descriptions.</p>
newtype EventDescriptionsMessage = EventDescriptionsMessage 
  { "Events" :: NullOrUndefined (EventDescriptionList)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeEventDescriptionsMessage :: Newtype EventDescriptionsMessage _
derive instance repGenericEventDescriptionsMessage :: Generic EventDescriptionsMessage _
instance showEventDescriptionsMessage :: Show EventDescriptionsMessage where show = genericShow
instance decodeEventDescriptionsMessage :: Decode EventDescriptionsMessage where decode = genericDecode options
instance encodeEventDescriptionsMessage :: Encode EventDescriptionsMessage where encode = genericEncode options

-- | Constructs EventDescriptionsMessage from required parameters
newEventDescriptionsMessage :: EventDescriptionsMessage
newEventDescriptionsMessage  = EventDescriptionsMessage { "Events": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs EventDescriptionsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventDescriptionsMessage' :: ( { "Events" :: NullOrUndefined (EventDescriptionList) , "NextToken" :: NullOrUndefined (Token) } -> {"Events" :: NullOrUndefined (EventDescriptionList) , "NextToken" :: NullOrUndefined (Token) } ) -> EventDescriptionsMessage
newEventDescriptionsMessage'  customize = (EventDescriptionsMessage <<< customize) { "Events": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype EventMessage = EventMessage String
derive instance newtypeEventMessage :: Newtype EventMessage _
derive instance repGenericEventMessage :: Generic EventMessage _
instance showEventMessage :: Show EventMessage where show = genericShow
instance decodeEventMessage :: Decode EventMessage where decode = genericDecode options
instance encodeEventMessage :: Encode EventMessage where encode = genericEncode options



newtype EventSeverity = EventSeverity String
derive instance newtypeEventSeverity :: Newtype EventSeverity _
derive instance repGenericEventSeverity :: Generic EventSeverity _
instance showEventSeverity :: Show EventSeverity where show = genericShow
instance decodeEventSeverity :: Decode EventSeverity where decode = genericDecode options
instance encodeEventSeverity :: Encode EventSeverity where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



newtype FailureType = FailureType String
derive instance newtypeFailureType :: Newtype FailureType _
derive instance repGenericFailureType :: Generic FailureType _
instance showFailureType :: Show FailureType where show = genericShow
instance decodeFailureType :: Decode FailureType where decode = genericDecode options
instance encodeFailureType :: Encode FailureType where encode = genericEncode options



newtype FileTypeExtension = FileTypeExtension String
derive instance newtypeFileTypeExtension :: Newtype FileTypeExtension _
derive instance repGenericFileTypeExtension :: Generic FileTypeExtension _
instance showFileTypeExtension :: Show FileTypeExtension where show = genericShow
instance decodeFileTypeExtension :: Decode FileTypeExtension where decode = genericDecode options
instance encodeFileTypeExtension :: Encode FileTypeExtension where encode = genericEncode options



newtype ForceTerminate = ForceTerminate Boolean
derive instance newtypeForceTerminate :: Newtype ForceTerminate _
derive instance repGenericForceTerminate :: Generic ForceTerminate _
instance showForceTerminate :: Show ForceTerminate where show = genericShow
instance decodeForceTerminate :: Decode ForceTerminate where decode = genericDecode options
instance encodeForceTerminate :: Encode ForceTerminate where encode = genericEncode options



newtype GroupName = GroupName String
derive instance newtypeGroupName :: Newtype GroupName _
derive instance repGenericGroupName :: Generic GroupName _
instance showGroupName :: Show GroupName where show = genericShow
instance decodeGroupName :: Decode GroupName where decode = genericDecode options
instance encodeGroupName :: Encode GroupName where encode = genericEncode options



newtype ImageId = ImageId String
derive instance newtypeImageId :: Newtype ImageId _
derive instance repGenericImageId :: Generic ImageId _
instance showImageId :: Show ImageId where show = genericShow
instance decodeImageId :: Decode ImageId where decode = genericDecode options
instance encodeImageId :: Encode ImageId where encode = genericEncode options



newtype IncludeDeleted = IncludeDeleted Boolean
derive instance newtypeIncludeDeleted :: Newtype IncludeDeleted _
derive instance repGenericIncludeDeleted :: Generic IncludeDeleted _
instance showIncludeDeleted :: Show IncludeDeleted where show = genericShow
instance decodeIncludeDeleted :: Decode IncludeDeleted where decode = genericDecode options
instance encodeIncludeDeleted :: Encode IncludeDeleted where encode = genericEncode options



newtype IncludeDeletedBackTo = IncludeDeletedBackTo Types.Timestamp
derive instance newtypeIncludeDeletedBackTo :: Newtype IncludeDeletedBackTo _
derive instance repGenericIncludeDeletedBackTo :: Generic IncludeDeletedBackTo _
instance showIncludeDeletedBackTo :: Show IncludeDeletedBackTo where show = genericShow
instance decodeIncludeDeletedBackTo :: Decode IncludeDeletedBackTo where decode = genericDecode options
instance encodeIncludeDeletedBackTo :: Encode IncludeDeletedBackTo where encode = genericEncode options



-- | <p>The description of an Amazon EC2 instance.</p>
newtype Instance = Instance 
  { "Id" :: NullOrUndefined (ResourceId)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where show = genericShow
instance decodeInstance :: Decode Instance where decode = genericDecode options
instance encodeInstance :: Encode Instance where encode = genericEncode options

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "Id": (NullOrUndefined Nothing) }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "Id" :: NullOrUndefined (ResourceId) } -> {"Id" :: NullOrUndefined (ResourceId) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "Id": (NullOrUndefined Nothing) }



newtype InstanceHealthList = InstanceHealthList (Array SingleInstanceHealth)
derive instance newtypeInstanceHealthList :: Newtype InstanceHealthList _
derive instance repGenericInstanceHealthList :: Generic InstanceHealthList _
instance showInstanceHealthList :: Show InstanceHealthList where show = genericShow
instance decodeInstanceHealthList :: Decode InstanceHealthList where decode = genericDecode options
instance encodeInstanceHealthList :: Encode InstanceHealthList where encode = genericEncode options



-- | <p>Represents summary information about the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
newtype InstanceHealthSummary = InstanceHealthSummary 
  { "NoData" :: NullOrUndefined (NullableInteger)
  , "Unknown" :: NullOrUndefined (NullableInteger)
  , "Pending" :: NullOrUndefined (NullableInteger)
  , "Ok" :: NullOrUndefined (NullableInteger)
  , "Info" :: NullOrUndefined (NullableInteger)
  , "Warning" :: NullOrUndefined (NullableInteger)
  , "Degraded" :: NullOrUndefined (NullableInteger)
  , "Severe" :: NullOrUndefined (NullableInteger)
  }
derive instance newtypeInstanceHealthSummary :: Newtype InstanceHealthSummary _
derive instance repGenericInstanceHealthSummary :: Generic InstanceHealthSummary _
instance showInstanceHealthSummary :: Show InstanceHealthSummary where show = genericShow
instance decodeInstanceHealthSummary :: Decode InstanceHealthSummary where decode = genericDecode options
instance encodeInstanceHealthSummary :: Encode InstanceHealthSummary where encode = genericEncode options

-- | Constructs InstanceHealthSummary from required parameters
newInstanceHealthSummary :: InstanceHealthSummary
newInstanceHealthSummary  = InstanceHealthSummary { "Degraded": (NullOrUndefined Nothing), "Info": (NullOrUndefined Nothing), "NoData": (NullOrUndefined Nothing), "Ok": (NullOrUndefined Nothing), "Pending": (NullOrUndefined Nothing), "Severe": (NullOrUndefined Nothing), "Unknown": (NullOrUndefined Nothing), "Warning": (NullOrUndefined Nothing) }

-- | Constructs InstanceHealthSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceHealthSummary' :: ( { "NoData" :: NullOrUndefined (NullableInteger) , "Unknown" :: NullOrUndefined (NullableInteger) , "Pending" :: NullOrUndefined (NullableInteger) , "Ok" :: NullOrUndefined (NullableInteger) , "Info" :: NullOrUndefined (NullableInteger) , "Warning" :: NullOrUndefined (NullableInteger) , "Degraded" :: NullOrUndefined (NullableInteger) , "Severe" :: NullOrUndefined (NullableInteger) } -> {"NoData" :: NullOrUndefined (NullableInteger) , "Unknown" :: NullOrUndefined (NullableInteger) , "Pending" :: NullOrUndefined (NullableInteger) , "Ok" :: NullOrUndefined (NullableInteger) , "Info" :: NullOrUndefined (NullableInteger) , "Warning" :: NullOrUndefined (NullableInteger) , "Degraded" :: NullOrUndefined (NullableInteger) , "Severe" :: NullOrUndefined (NullableInteger) } ) -> InstanceHealthSummary
newInstanceHealthSummary'  customize = (InstanceHealthSummary <<< customize) { "Degraded": (NullOrUndefined Nothing), "Info": (NullOrUndefined Nothing), "NoData": (NullOrUndefined Nothing), "Ok": (NullOrUndefined Nothing), "Pending": (NullOrUndefined Nothing), "Severe": (NullOrUndefined Nothing), "Unknown": (NullOrUndefined Nothing), "Warning": (NullOrUndefined Nothing) }



newtype InstanceId = InstanceId String
derive instance newtypeInstanceId :: Newtype InstanceId _
derive instance repGenericInstanceId :: Generic InstanceId _
instance showInstanceId :: Show InstanceId where show = genericShow
instance decodeInstanceId :: Decode InstanceId where decode = genericDecode options
instance encodeInstanceId :: Encode InstanceId where encode = genericEncode options



newtype InstanceList = InstanceList (Array Instance)
derive instance newtypeInstanceList :: Newtype InstanceList _
derive instance repGenericInstanceList :: Generic InstanceList _
instance showInstanceList :: Show InstanceList where show = genericShow
instance decodeInstanceList :: Decode InstanceList where decode = genericDecode options
instance encodeInstanceList :: Encode InstanceList where encode = genericEncode options



newtype InstancesHealthAttribute = InstancesHealthAttribute String
derive instance newtypeInstancesHealthAttribute :: Newtype InstancesHealthAttribute _
derive instance repGenericInstancesHealthAttribute :: Generic InstancesHealthAttribute _
instance showInstancesHealthAttribute :: Show InstancesHealthAttribute where show = genericShow
instance decodeInstancesHealthAttribute :: Decode InstancesHealthAttribute where decode = genericDecode options
instance encodeInstancesHealthAttribute :: Encode InstancesHealthAttribute where encode = genericEncode options



newtype InstancesHealthAttributes = InstancesHealthAttributes (Array InstancesHealthAttribute)
derive instance newtypeInstancesHealthAttributes :: Newtype InstancesHealthAttributes _
derive instance repGenericInstancesHealthAttributes :: Generic InstancesHealthAttributes _
instance showInstancesHealthAttributes :: Show InstancesHealthAttributes where show = genericShow
instance decodeInstancesHealthAttributes :: Decode InstancesHealthAttributes where decode = genericDecode options
instance encodeInstancesHealthAttributes :: Encode InstancesHealthAttributes where encode = genericEncode options



-- | <p>The specified account does not have sufficient privileges for one of more AWS services.</p>
newtype InsufficientPrivilegesException = InsufficientPrivilegesException Types.NoArguments
derive instance newtypeInsufficientPrivilegesException :: Newtype InsufficientPrivilegesException _
derive instance repGenericInsufficientPrivilegesException :: Generic InsufficientPrivilegesException _
instance showInsufficientPrivilegesException :: Show InsufficientPrivilegesException where show = genericShow
instance decodeInsufficientPrivilegesException :: Decode InsufficientPrivilegesException where decode = genericDecode options
instance encodeInsufficientPrivilegesException :: Encode InsufficientPrivilegesException where encode = genericEncode options



-- | <p>One or more input parameters is not valid. Please correct the input parameters and try the operation again.</p>
newtype InvalidRequestException = InvalidRequestException Types.NoArguments
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options



-- | <p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>
newtype Latency = Latency 
  { "P999" :: NullOrUndefined (NullableDouble)
  , "P99" :: NullOrUndefined (NullableDouble)
  , "P95" :: NullOrUndefined (NullableDouble)
  , "P90" :: NullOrUndefined (NullableDouble)
  , "P85" :: NullOrUndefined (NullableDouble)
  , "P75" :: NullOrUndefined (NullableDouble)
  , "P50" :: NullOrUndefined (NullableDouble)
  , "P10" :: NullOrUndefined (NullableDouble)
  }
derive instance newtypeLatency :: Newtype Latency _
derive instance repGenericLatency :: Generic Latency _
instance showLatency :: Show Latency where show = genericShow
instance decodeLatency :: Decode Latency where decode = genericDecode options
instance encodeLatency :: Encode Latency where encode = genericEncode options

-- | Constructs Latency from required parameters
newLatency :: Latency
newLatency  = Latency { "P10": (NullOrUndefined Nothing), "P50": (NullOrUndefined Nothing), "P75": (NullOrUndefined Nothing), "P85": (NullOrUndefined Nothing), "P90": (NullOrUndefined Nothing), "P95": (NullOrUndefined Nothing), "P99": (NullOrUndefined Nothing), "P999": (NullOrUndefined Nothing) }

-- | Constructs Latency's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLatency' :: ( { "P999" :: NullOrUndefined (NullableDouble) , "P99" :: NullOrUndefined (NullableDouble) , "P95" :: NullOrUndefined (NullableDouble) , "P90" :: NullOrUndefined (NullableDouble) , "P85" :: NullOrUndefined (NullableDouble) , "P75" :: NullOrUndefined (NullableDouble) , "P50" :: NullOrUndefined (NullableDouble) , "P10" :: NullOrUndefined (NullableDouble) } -> {"P999" :: NullOrUndefined (NullableDouble) , "P99" :: NullOrUndefined (NullableDouble) , "P95" :: NullOrUndefined (NullableDouble) , "P90" :: NullOrUndefined (NullableDouble) , "P85" :: NullOrUndefined (NullableDouble) , "P75" :: NullOrUndefined (NullableDouble) , "P50" :: NullOrUndefined (NullableDouble) , "P10" :: NullOrUndefined (NullableDouble) } ) -> Latency
newLatency'  customize = (Latency <<< customize) { "P10": (NullOrUndefined Nothing), "P50": (NullOrUndefined Nothing), "P75": (NullOrUndefined Nothing), "P85": (NullOrUndefined Nothing), "P90": (NullOrUndefined Nothing), "P95": (NullOrUndefined Nothing), "P99": (NullOrUndefined Nothing), "P999": (NullOrUndefined Nothing) }



-- | <p>Describes an Auto Scaling launch configuration.</p>
newtype LaunchConfiguration = LaunchConfiguration 
  { "Name" :: NullOrUndefined (ResourceId)
  }
derive instance newtypeLaunchConfiguration :: Newtype LaunchConfiguration _
derive instance repGenericLaunchConfiguration :: Generic LaunchConfiguration _
instance showLaunchConfiguration :: Show LaunchConfiguration where show = genericShow
instance decodeLaunchConfiguration :: Decode LaunchConfiguration where decode = genericDecode options
instance encodeLaunchConfiguration :: Encode LaunchConfiguration where encode = genericEncode options

-- | Constructs LaunchConfiguration from required parameters
newLaunchConfiguration :: LaunchConfiguration
newLaunchConfiguration  = LaunchConfiguration { "Name": (NullOrUndefined Nothing) }

-- | Constructs LaunchConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLaunchConfiguration' :: ( { "Name" :: NullOrUndefined (ResourceId) } -> {"Name" :: NullOrUndefined (ResourceId) } ) -> LaunchConfiguration
newLaunchConfiguration'  customize = (LaunchConfiguration <<< customize) { "Name": (NullOrUndefined Nothing) }



newtype LaunchConfigurationList = LaunchConfigurationList (Array LaunchConfiguration)
derive instance newtypeLaunchConfigurationList :: Newtype LaunchConfigurationList _
derive instance repGenericLaunchConfigurationList :: Generic LaunchConfigurationList _
instance showLaunchConfigurationList :: Show LaunchConfigurationList where show = genericShow
instance decodeLaunchConfigurationList :: Decode LaunchConfigurationList where decode = genericDecode options
instance encodeLaunchConfigurationList :: Encode LaunchConfigurationList where encode = genericEncode options



newtype LaunchedAt = LaunchedAt Types.Timestamp
derive instance newtypeLaunchedAt :: Newtype LaunchedAt _
derive instance repGenericLaunchedAt :: Generic LaunchedAt _
instance showLaunchedAt :: Show LaunchedAt where show = genericShow
instance decodeLaunchedAt :: Decode LaunchedAt where decode = genericDecode options
instance encodeLaunchedAt :: Encode LaunchedAt where encode = genericEncode options



-- | <p>A list of available AWS Elastic Beanstalk solution stacks.</p>
newtype ListAvailableSolutionStacksResultMessage = ListAvailableSolutionStacksResultMessage 
  { "SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList)
  , "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList)
  }
derive instance newtypeListAvailableSolutionStacksResultMessage :: Newtype ListAvailableSolutionStacksResultMessage _
derive instance repGenericListAvailableSolutionStacksResultMessage :: Generic ListAvailableSolutionStacksResultMessage _
instance showListAvailableSolutionStacksResultMessage :: Show ListAvailableSolutionStacksResultMessage where show = genericShow
instance decodeListAvailableSolutionStacksResultMessage :: Decode ListAvailableSolutionStacksResultMessage where decode = genericDecode options
instance encodeListAvailableSolutionStacksResultMessage :: Encode ListAvailableSolutionStacksResultMessage where encode = genericEncode options

-- | Constructs ListAvailableSolutionStacksResultMessage from required parameters
newListAvailableSolutionStacksResultMessage :: ListAvailableSolutionStacksResultMessage
newListAvailableSolutionStacksResultMessage  = ListAvailableSolutionStacksResultMessage { "SolutionStackDetails": (NullOrUndefined Nothing), "SolutionStacks": (NullOrUndefined Nothing) }

-- | Constructs ListAvailableSolutionStacksResultMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAvailableSolutionStacksResultMessage' :: ( { "SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList) , "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList) } -> {"SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList) , "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList) } ) -> ListAvailableSolutionStacksResultMessage
newListAvailableSolutionStacksResultMessage'  customize = (ListAvailableSolutionStacksResultMessage <<< customize) { "SolutionStackDetails": (NullOrUndefined Nothing), "SolutionStacks": (NullOrUndefined Nothing) }



newtype ListPlatformVersionsRequest = ListPlatformVersionsRequest 
  { "Filters" :: NullOrUndefined (PlatformFilters)
  , "MaxRecords" :: NullOrUndefined (PlatformMaxRecords)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeListPlatformVersionsRequest :: Newtype ListPlatformVersionsRequest _
derive instance repGenericListPlatformVersionsRequest :: Generic ListPlatformVersionsRequest _
instance showListPlatformVersionsRequest :: Show ListPlatformVersionsRequest where show = genericShow
instance decodeListPlatformVersionsRequest :: Decode ListPlatformVersionsRequest where decode = genericDecode options
instance encodeListPlatformVersionsRequest :: Encode ListPlatformVersionsRequest where encode = genericEncode options

-- | Constructs ListPlatformVersionsRequest from required parameters
newListPlatformVersionsRequest :: ListPlatformVersionsRequest
newListPlatformVersionsRequest  = ListPlatformVersionsRequest { "Filters": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformVersionsRequest' :: ( { "Filters" :: NullOrUndefined (PlatformFilters) , "MaxRecords" :: NullOrUndefined (PlatformMaxRecords) , "NextToken" :: NullOrUndefined (Token) } -> {"Filters" :: NullOrUndefined (PlatformFilters) , "MaxRecords" :: NullOrUndefined (PlatformMaxRecords) , "NextToken" :: NullOrUndefined (Token) } ) -> ListPlatformVersionsRequest
newListPlatformVersionsRequest'  customize = (ListPlatformVersionsRequest <<< customize) { "Filters": (NullOrUndefined Nothing), "MaxRecords": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListPlatformVersionsResult = ListPlatformVersionsResult 
  { "PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList)
  , "NextToken" :: NullOrUndefined (Token)
  }
derive instance newtypeListPlatformVersionsResult :: Newtype ListPlatformVersionsResult _
derive instance repGenericListPlatformVersionsResult :: Generic ListPlatformVersionsResult _
instance showListPlatformVersionsResult :: Show ListPlatformVersionsResult where show = genericShow
instance decodeListPlatformVersionsResult :: Decode ListPlatformVersionsResult where decode = genericDecode options
instance encodeListPlatformVersionsResult :: Encode ListPlatformVersionsResult where encode = genericEncode options

-- | Constructs ListPlatformVersionsResult from required parameters
newListPlatformVersionsResult :: ListPlatformVersionsResult
newListPlatformVersionsResult  = ListPlatformVersionsResult { "NextToken": (NullOrUndefined Nothing), "PlatformSummaryList": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformVersionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformVersionsResult' :: ( { "PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList) , "NextToken" :: NullOrUndefined (Token) } -> {"PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList) , "NextToken" :: NullOrUndefined (Token) } ) -> ListPlatformVersionsResult
newListPlatformVersionsResult'  customize = (ListPlatformVersionsResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "PlatformSummaryList": (NullOrUndefined Nothing) }



newtype ListTagsForResourceMessage = ListTagsForResourceMessage 
  { "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeListTagsForResourceMessage :: Newtype ListTagsForResourceMessage _
derive instance repGenericListTagsForResourceMessage :: Generic ListTagsForResourceMessage _
instance showListTagsForResourceMessage :: Show ListTagsForResourceMessage where show = genericShow
instance decodeListTagsForResourceMessage :: Decode ListTagsForResourceMessage where decode = genericDecode options
instance encodeListTagsForResourceMessage :: Encode ListTagsForResourceMessage where encode = genericEncode options

-- | Constructs ListTagsForResourceMessage from required parameters
newListTagsForResourceMessage :: ResourceArn -> ListTagsForResourceMessage
newListTagsForResourceMessage _ResourceArn = ListTagsForResourceMessage { "ResourceArn": _ResourceArn }

-- | Constructs ListTagsForResourceMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceMessage' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) } -> {"ResourceArn" :: (ResourceArn) } ) -> ListTagsForResourceMessage
newListTagsForResourceMessage' _ResourceArn customize = (ListTagsForResourceMessage <<< customize) { "ResourceArn": _ResourceArn }



-- | <p>Describes the properties of a Listener for the LoadBalancer.</p>
newtype Listener = Listener 
  { "Protocol" :: NullOrUndefined (String)
  , "Port" :: NullOrUndefined (Int)
  }
derive instance newtypeListener :: Newtype Listener _
derive instance repGenericListener :: Generic Listener _
instance showListener :: Show Listener where show = genericShow
instance decodeListener :: Decode Listener where decode = genericDecode options
instance encodeListener :: Encode Listener where encode = genericEncode options

-- | Constructs Listener from required parameters
newListener :: Listener
newListener  = Listener { "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing) }

-- | Constructs Listener's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListener' :: ( { "Protocol" :: NullOrUndefined (String) , "Port" :: NullOrUndefined (Int) } -> {"Protocol" :: NullOrUndefined (String) , "Port" :: NullOrUndefined (Int) } ) -> Listener
newListener'  customize = (Listener <<< customize) { "Port": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing) }



newtype LoadAverage = LoadAverage (Array LoadAverageValue)
derive instance newtypeLoadAverage :: Newtype LoadAverage _
derive instance repGenericLoadAverage :: Generic LoadAverage _
instance showLoadAverage :: Show LoadAverage where show = genericShow
instance decodeLoadAverage :: Decode LoadAverage where decode = genericDecode options
instance encodeLoadAverage :: Encode LoadAverage where encode = genericEncode options



newtype LoadAverageValue = LoadAverageValue Number
derive instance newtypeLoadAverageValue :: Newtype LoadAverageValue _
derive instance repGenericLoadAverageValue :: Generic LoadAverageValue _
instance showLoadAverageValue :: Show LoadAverageValue where show = genericShow
instance decodeLoadAverageValue :: Decode LoadAverageValue where decode = genericDecode options
instance encodeLoadAverageValue :: Encode LoadAverageValue where encode = genericEncode options



-- | <p>Describes a LoadBalancer.</p>
newtype LoadBalancer = LoadBalancer 
  { "Name" :: NullOrUndefined (ResourceId)
  }
derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive instance repGenericLoadBalancer :: Generic LoadBalancer _
instance showLoadBalancer :: Show LoadBalancer where show = genericShow
instance decodeLoadBalancer :: Decode LoadBalancer where decode = genericDecode options
instance encodeLoadBalancer :: Encode LoadBalancer where encode = genericEncode options

-- | Constructs LoadBalancer from required parameters
newLoadBalancer :: LoadBalancer
newLoadBalancer  = LoadBalancer { "Name": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancer' :: ( { "Name" :: NullOrUndefined (ResourceId) } -> {"Name" :: NullOrUndefined (ResourceId) } ) -> LoadBalancer
newLoadBalancer'  customize = (LoadBalancer <<< customize) { "Name": (NullOrUndefined Nothing) }



-- | <p>Describes the details of a LoadBalancer.</p>
newtype LoadBalancerDescription = LoadBalancerDescription 
  { "LoadBalancerName" :: NullOrUndefined (String)
  , "Domain" :: NullOrUndefined (String)
  , "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription)
  }
derive instance newtypeLoadBalancerDescription :: Newtype LoadBalancerDescription _
derive instance repGenericLoadBalancerDescription :: Generic LoadBalancerDescription _
instance showLoadBalancerDescription :: Show LoadBalancerDescription where show = genericShow
instance decodeLoadBalancerDescription :: Decode LoadBalancerDescription where decode = genericDecode options
instance encodeLoadBalancerDescription :: Encode LoadBalancerDescription where encode = genericEncode options

-- | Constructs LoadBalancerDescription from required parameters
newLoadBalancerDescription :: LoadBalancerDescription
newLoadBalancerDescription  = LoadBalancerDescription { "Domain": (NullOrUndefined Nothing), "Listeners": (NullOrUndefined Nothing), "LoadBalancerName": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancerDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancerDescription' :: ( { "LoadBalancerName" :: NullOrUndefined (String) , "Domain" :: NullOrUndefined (String) , "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription) } -> {"LoadBalancerName" :: NullOrUndefined (String) , "Domain" :: NullOrUndefined (String) , "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription) } ) -> LoadBalancerDescription
newLoadBalancerDescription'  customize = (LoadBalancerDescription <<< customize) { "Domain": (NullOrUndefined Nothing), "Listeners": (NullOrUndefined Nothing), "LoadBalancerName": (NullOrUndefined Nothing) }



newtype LoadBalancerList = LoadBalancerList (Array LoadBalancer)
derive instance newtypeLoadBalancerList :: Newtype LoadBalancerList _
derive instance repGenericLoadBalancerList :: Generic LoadBalancerList _
instance showLoadBalancerList :: Show LoadBalancerList where show = genericShow
instance decodeLoadBalancerList :: Decode LoadBalancerList where decode = genericDecode options
instance encodeLoadBalancerList :: Encode LoadBalancerList where encode = genericEncode options



newtype LoadBalancerListenersDescription = LoadBalancerListenersDescription (Array Listener)
derive instance newtypeLoadBalancerListenersDescription :: Newtype LoadBalancerListenersDescription _
derive instance repGenericLoadBalancerListenersDescription :: Generic LoadBalancerListenersDescription _
instance showLoadBalancerListenersDescription :: Show LoadBalancerListenersDescription where show = genericShow
instance decodeLoadBalancerListenersDescription :: Decode LoadBalancerListenersDescription where decode = genericDecode options
instance encodeLoadBalancerListenersDescription :: Encode LoadBalancerListenersDescription where encode = genericEncode options



newtype Maintainer = Maintainer String
derive instance newtypeMaintainer :: Newtype Maintainer _
derive instance repGenericMaintainer :: Generic Maintainer _
instance showMaintainer :: Show Maintainer where show = genericShow
instance decodeMaintainer :: Decode Maintainer where decode = genericDecode options
instance encodeMaintainer :: Encode Maintainer where encode = genericEncode options



-- | <p>The record of an upcoming or in-progress managed action.</p>
newtype ManagedAction = ManagedAction 
  { "ActionId" :: NullOrUndefined (String)
  , "ActionDescription" :: NullOrUndefined (String)
  , "ActionType" :: NullOrUndefined (ActionType)
  , "Status" :: NullOrUndefined (ActionStatus)
  , "WindowStartTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeManagedAction :: Newtype ManagedAction _
derive instance repGenericManagedAction :: Generic ManagedAction _
instance showManagedAction :: Show ManagedAction where show = genericShow
instance decodeManagedAction :: Decode ManagedAction where decode = genericDecode options
instance encodeManagedAction :: Encode ManagedAction where encode = genericEncode options

-- | Constructs ManagedAction from required parameters
newManagedAction :: ManagedAction
newManagedAction  = ManagedAction { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "WindowStartTime": (NullOrUndefined Nothing) }

-- | Constructs ManagedAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newManagedAction' :: ( { "ActionId" :: NullOrUndefined (String) , "ActionDescription" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "Status" :: NullOrUndefined (ActionStatus) , "WindowStartTime" :: NullOrUndefined (Types.Timestamp) } -> {"ActionId" :: NullOrUndefined (String) , "ActionDescription" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "Status" :: NullOrUndefined (ActionStatus) , "WindowStartTime" :: NullOrUndefined (Types.Timestamp) } ) -> ManagedAction
newManagedAction'  customize = (ManagedAction <<< customize) { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "WindowStartTime": (NullOrUndefined Nothing) }



-- | <p>The record of a completed or failed managed action.</p>
newtype ManagedActionHistoryItem = ManagedActionHistoryItem 
  { "ActionId" :: NullOrUndefined (String)
  , "ActionType" :: NullOrUndefined (ActionType)
  , "ActionDescription" :: NullOrUndefined (String)
  , "FailureType" :: NullOrUndefined (FailureType)
  , "Status" :: NullOrUndefined (ActionHistoryStatus)
  , "FailureDescription" :: NullOrUndefined (String)
  , "ExecutedTime" :: NullOrUndefined (Types.Timestamp)
  , "FinishedTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeManagedActionHistoryItem :: Newtype ManagedActionHistoryItem _
derive instance repGenericManagedActionHistoryItem :: Generic ManagedActionHistoryItem _
instance showManagedActionHistoryItem :: Show ManagedActionHistoryItem where show = genericShow
instance decodeManagedActionHistoryItem :: Decode ManagedActionHistoryItem where decode = genericDecode options
instance encodeManagedActionHistoryItem :: Encode ManagedActionHistoryItem where encode = genericEncode options

-- | Constructs ManagedActionHistoryItem from required parameters
newManagedActionHistoryItem :: ManagedActionHistoryItem
newManagedActionHistoryItem  = ManagedActionHistoryItem { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "ExecutedTime": (NullOrUndefined Nothing), "FailureDescription": (NullOrUndefined Nothing), "FailureType": (NullOrUndefined Nothing), "FinishedTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ManagedActionHistoryItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newManagedActionHistoryItem' :: ( { "ActionId" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "ActionDescription" :: NullOrUndefined (String) , "FailureType" :: NullOrUndefined (FailureType) , "Status" :: NullOrUndefined (ActionHistoryStatus) , "FailureDescription" :: NullOrUndefined (String) , "ExecutedTime" :: NullOrUndefined (Types.Timestamp) , "FinishedTime" :: NullOrUndefined (Types.Timestamp) } -> {"ActionId" :: NullOrUndefined (String) , "ActionType" :: NullOrUndefined (ActionType) , "ActionDescription" :: NullOrUndefined (String) , "FailureType" :: NullOrUndefined (FailureType) , "Status" :: NullOrUndefined (ActionHistoryStatus) , "FailureDescription" :: NullOrUndefined (String) , "ExecutedTime" :: NullOrUndefined (Types.Timestamp) , "FinishedTime" :: NullOrUndefined (Types.Timestamp) } ) -> ManagedActionHistoryItem
newManagedActionHistoryItem'  customize = (ManagedActionHistoryItem <<< customize) { "ActionDescription": (NullOrUndefined Nothing), "ActionId": (NullOrUndefined Nothing), "ActionType": (NullOrUndefined Nothing), "ExecutedTime": (NullOrUndefined Nothing), "FailureDescription": (NullOrUndefined Nothing), "FailureType": (NullOrUndefined Nothing), "FinishedTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype ManagedActionHistoryItems = ManagedActionHistoryItems (Array ManagedActionHistoryItem)
derive instance newtypeManagedActionHistoryItems :: Newtype ManagedActionHistoryItems _
derive instance repGenericManagedActionHistoryItems :: Generic ManagedActionHistoryItems _
instance showManagedActionHistoryItems :: Show ManagedActionHistoryItems where show = genericShow
instance decodeManagedActionHistoryItems :: Decode ManagedActionHistoryItems where decode = genericDecode options
instance encodeManagedActionHistoryItems :: Encode ManagedActionHistoryItems where encode = genericEncode options



-- | <p>Cannot modify the managed action in its current state.</p>
newtype ManagedActionInvalidStateException = ManagedActionInvalidStateException Types.NoArguments
derive instance newtypeManagedActionInvalidStateException :: Newtype ManagedActionInvalidStateException _
derive instance repGenericManagedActionInvalidStateException :: Generic ManagedActionInvalidStateException _
instance showManagedActionInvalidStateException :: Show ManagedActionInvalidStateException where show = genericShow
instance decodeManagedActionInvalidStateException :: Decode ManagedActionInvalidStateException where decode = genericDecode options
instance encodeManagedActionInvalidStateException :: Encode ManagedActionInvalidStateException where encode = genericEncode options



newtype ManagedActions = ManagedActions (Array ManagedAction)
derive instance newtypeManagedActions :: Newtype ManagedActions _
derive instance repGenericManagedActions :: Generic ManagedActions _
instance showManagedActions :: Show ManagedActions where show = genericShow
instance decodeManagedActions :: Decode ManagedActions where decode = genericDecode options
instance encodeManagedActions :: Encode ManagedActions where encode = genericEncode options



-- | <p>A lifecycle rule that deletes application versions after the specified number of days.</p>
newtype MaxAgeRule = MaxAgeRule 
  { "Enabled" :: (BoxedBoolean)
  , "MaxAgeInDays" :: NullOrUndefined (BoxedInt)
  , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeMaxAgeRule :: Newtype MaxAgeRule _
derive instance repGenericMaxAgeRule :: Generic MaxAgeRule _
instance showMaxAgeRule :: Show MaxAgeRule where show = genericShow
instance decodeMaxAgeRule :: Decode MaxAgeRule where decode = genericDecode options
instance encodeMaxAgeRule :: Encode MaxAgeRule where encode = genericEncode options

-- | Constructs MaxAgeRule from required parameters
newMaxAgeRule :: BoxedBoolean -> MaxAgeRule
newMaxAgeRule _Enabled = MaxAgeRule { "Enabled": _Enabled, "DeleteSourceFromS3": (NullOrUndefined Nothing), "MaxAgeInDays": (NullOrUndefined Nothing) }

-- | Constructs MaxAgeRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMaxAgeRule' :: BoxedBoolean -> ( { "Enabled" :: (BoxedBoolean) , "MaxAgeInDays" :: NullOrUndefined (BoxedInt) , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } -> {"Enabled" :: (BoxedBoolean) , "MaxAgeInDays" :: NullOrUndefined (BoxedInt) , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } ) -> MaxAgeRule
newMaxAgeRule' _Enabled customize = (MaxAgeRule <<< customize) { "Enabled": _Enabled, "DeleteSourceFromS3": (NullOrUndefined Nothing), "MaxAgeInDays": (NullOrUndefined Nothing) }



-- | <p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>
newtype MaxCountRule = MaxCountRule 
  { "Enabled" :: (BoxedBoolean)
  , "MaxCount" :: NullOrUndefined (BoxedInt)
  , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeMaxCountRule :: Newtype MaxCountRule _
derive instance repGenericMaxCountRule :: Generic MaxCountRule _
instance showMaxCountRule :: Show MaxCountRule where show = genericShow
instance decodeMaxCountRule :: Decode MaxCountRule where decode = genericDecode options
instance encodeMaxCountRule :: Encode MaxCountRule where encode = genericEncode options

-- | Constructs MaxCountRule from required parameters
newMaxCountRule :: BoxedBoolean -> MaxCountRule
newMaxCountRule _Enabled = MaxCountRule { "Enabled": _Enabled, "DeleteSourceFromS3": (NullOrUndefined Nothing), "MaxCount": (NullOrUndefined Nothing) }

-- | Constructs MaxCountRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMaxCountRule' :: BoxedBoolean -> ( { "Enabled" :: (BoxedBoolean) , "MaxCount" :: NullOrUndefined (BoxedInt) , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } -> {"Enabled" :: (BoxedBoolean) , "MaxCount" :: NullOrUndefined (BoxedInt) , "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } ) -> MaxCountRule
newMaxCountRule' _Enabled customize = (MaxCountRule <<< customize) { "Enabled": _Enabled, "DeleteSourceFromS3": (NullOrUndefined Nothing), "MaxCount": (NullOrUndefined Nothing) }



newtype MaxRecords = MaxRecords Int
derive instance newtypeMaxRecords :: Newtype MaxRecords _
derive instance repGenericMaxRecords :: Generic MaxRecords _
instance showMaxRecords :: Show MaxRecords where show = genericShow
instance decodeMaxRecords :: Decode MaxRecords where decode = genericDecode options
instance encodeMaxRecords :: Encode MaxRecords where encode = genericEncode options



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype NonEmptyString = NonEmptyString String
derive instance newtypeNonEmptyString :: Newtype NonEmptyString _
derive instance repGenericNonEmptyString :: Generic NonEmptyString _
instance showNonEmptyString :: Show NonEmptyString where show = genericShow
instance decodeNonEmptyString :: Decode NonEmptyString where decode = genericDecode options
instance encodeNonEmptyString :: Encode NonEmptyString where encode = genericEncode options



newtype NullableDouble = NullableDouble Number
derive instance newtypeNullableDouble :: Newtype NullableDouble _
derive instance repGenericNullableDouble :: Generic NullableDouble _
instance showNullableDouble :: Show NullableDouble where show = genericShow
instance decodeNullableDouble :: Decode NullableDouble where decode = genericDecode options
instance encodeNullableDouble :: Encode NullableDouble where encode = genericEncode options



newtype NullableInteger = NullableInteger Int
derive instance newtypeNullableInteger :: Newtype NullableInteger _
derive instance repGenericNullableInteger :: Generic NullableInteger _
instance showNullableInteger :: Show NullableInteger where show = genericShow
instance decodeNullableInteger :: Decode NullableInteger where decode = genericDecode options
instance encodeNullableInteger :: Encode NullableInteger where encode = genericEncode options



newtype NullableLong = NullableLong Number
derive instance newtypeNullableLong :: Newtype NullableLong _
derive instance repGenericNullableLong :: Generic NullableLong _
instance showNullableLong :: Show NullableLong where show = genericShow
instance decodeNullableLong :: Decode NullableLong where decode = genericDecode options
instance encodeNullableLong :: Encode NullableLong where encode = genericEncode options



newtype OperatingSystemName = OperatingSystemName String
derive instance newtypeOperatingSystemName :: Newtype OperatingSystemName _
derive instance repGenericOperatingSystemName :: Generic OperatingSystemName _
instance showOperatingSystemName :: Show OperatingSystemName where show = genericShow
instance decodeOperatingSystemName :: Decode OperatingSystemName where decode = genericDecode options
instance encodeOperatingSystemName :: Encode OperatingSystemName where encode = genericEncode options



newtype OperatingSystemVersion = OperatingSystemVersion String
derive instance newtypeOperatingSystemVersion :: Newtype OperatingSystemVersion _
derive instance repGenericOperatingSystemVersion :: Generic OperatingSystemVersion _
instance showOperatingSystemVersion :: Show OperatingSystemVersion where show = genericShow
instance decodeOperatingSystemVersion :: Decode OperatingSystemVersion where decode = genericDecode options
instance encodeOperatingSystemVersion :: Encode OperatingSystemVersion where encode = genericEncode options



-- | <p>Unable to perform the specified operation because another operation that effects an element in this activity is already in progress.</p>
newtype OperationInProgressException = OperationInProgressException Types.NoArguments
derive instance newtypeOperationInProgressException :: Newtype OperationInProgressException _
derive instance repGenericOperationInProgressException :: Generic OperationInProgressException _
instance showOperationInProgressException :: Show OperationInProgressException where show = genericShow
instance decodeOperationInProgressException :: Decode OperationInProgressException where decode = genericDecode options
instance encodeOperationInProgressException :: Encode OperationInProgressException where encode = genericEncode options



newtype OptionNamespace = OptionNamespace String
derive instance newtypeOptionNamespace :: Newtype OptionNamespace _
derive instance repGenericOptionNamespace :: Generic OptionNamespace _
instance showOptionNamespace :: Show OptionNamespace where show = genericShow
instance decodeOptionNamespace :: Decode OptionNamespace where decode = genericDecode options
instance encodeOptionNamespace :: Encode OptionNamespace where encode = genericEncode options



newtype OptionRestrictionMaxLength = OptionRestrictionMaxLength Int
derive instance newtypeOptionRestrictionMaxLength :: Newtype OptionRestrictionMaxLength _
derive instance repGenericOptionRestrictionMaxLength :: Generic OptionRestrictionMaxLength _
instance showOptionRestrictionMaxLength :: Show OptionRestrictionMaxLength where show = genericShow
instance decodeOptionRestrictionMaxLength :: Decode OptionRestrictionMaxLength where decode = genericDecode options
instance encodeOptionRestrictionMaxLength :: Encode OptionRestrictionMaxLength where encode = genericEncode options



newtype OptionRestrictionMaxValue = OptionRestrictionMaxValue Int
derive instance newtypeOptionRestrictionMaxValue :: Newtype OptionRestrictionMaxValue _
derive instance repGenericOptionRestrictionMaxValue :: Generic OptionRestrictionMaxValue _
instance showOptionRestrictionMaxValue :: Show OptionRestrictionMaxValue where show = genericShow
instance decodeOptionRestrictionMaxValue :: Decode OptionRestrictionMaxValue where decode = genericDecode options
instance encodeOptionRestrictionMaxValue :: Encode OptionRestrictionMaxValue where encode = genericEncode options



newtype OptionRestrictionMinValue = OptionRestrictionMinValue Int
derive instance newtypeOptionRestrictionMinValue :: Newtype OptionRestrictionMinValue _
derive instance repGenericOptionRestrictionMinValue :: Generic OptionRestrictionMinValue _
instance showOptionRestrictionMinValue :: Show OptionRestrictionMinValue where show = genericShow
instance decodeOptionRestrictionMinValue :: Decode OptionRestrictionMinValue where decode = genericDecode options
instance encodeOptionRestrictionMinValue :: Encode OptionRestrictionMinValue where encode = genericEncode options



-- | <p>A regular expression representing a restriction on a string configuration option value.</p>
newtype OptionRestrictionRegex = OptionRestrictionRegex 
  { "Pattern" :: NullOrUndefined (RegexPattern)
  , "Label" :: NullOrUndefined (RegexLabel)
  }
derive instance newtypeOptionRestrictionRegex :: Newtype OptionRestrictionRegex _
derive instance repGenericOptionRestrictionRegex :: Generic OptionRestrictionRegex _
instance showOptionRestrictionRegex :: Show OptionRestrictionRegex where show = genericShow
instance decodeOptionRestrictionRegex :: Decode OptionRestrictionRegex where decode = genericDecode options
instance encodeOptionRestrictionRegex :: Encode OptionRestrictionRegex where encode = genericEncode options

-- | Constructs OptionRestrictionRegex from required parameters
newOptionRestrictionRegex :: OptionRestrictionRegex
newOptionRestrictionRegex  = OptionRestrictionRegex { "Label": (NullOrUndefined Nothing), "Pattern": (NullOrUndefined Nothing) }

-- | Constructs OptionRestrictionRegex's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptionRestrictionRegex' :: ( { "Pattern" :: NullOrUndefined (RegexPattern) , "Label" :: NullOrUndefined (RegexLabel) } -> {"Pattern" :: NullOrUndefined (RegexPattern) , "Label" :: NullOrUndefined (RegexLabel) } ) -> OptionRestrictionRegex
newOptionRestrictionRegex'  customize = (OptionRestrictionRegex <<< customize) { "Label": (NullOrUndefined Nothing), "Pattern": (NullOrUndefined Nothing) }



-- | <p>A specification identifying an individual configuration option.</p>
newtype OptionSpecification = OptionSpecification 
  { "ResourceName" :: NullOrUndefined (ResourceName)
  , "Namespace" :: NullOrUndefined (OptionNamespace)
  , "OptionName" :: NullOrUndefined (ConfigurationOptionName)
  }
derive instance newtypeOptionSpecification :: Newtype OptionSpecification _
derive instance repGenericOptionSpecification :: Generic OptionSpecification _
instance showOptionSpecification :: Show OptionSpecification where show = genericShow
instance decodeOptionSpecification :: Decode OptionSpecification where decode = genericDecode options
instance encodeOptionSpecification :: Encode OptionSpecification where encode = genericEncode options

-- | Constructs OptionSpecification from required parameters
newOptionSpecification :: OptionSpecification
newOptionSpecification  = OptionSpecification { "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }

-- | Constructs OptionSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptionSpecification' :: ( { "ResourceName" :: NullOrUndefined (ResourceName) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) } -> {"ResourceName" :: NullOrUndefined (ResourceName) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) } ) -> OptionSpecification
newOptionSpecification'  customize = (OptionSpecification <<< customize) { "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "ResourceName": (NullOrUndefined Nothing) }



newtype OptionsSpecifierList = OptionsSpecifierList (Array OptionSpecification)
derive instance newtypeOptionsSpecifierList :: Newtype OptionsSpecifierList _
derive instance repGenericOptionsSpecifierList :: Generic OptionsSpecifierList _
instance showOptionsSpecifierList :: Show OptionsSpecifierList where show = genericShow
instance decodeOptionsSpecifierList :: Decode OptionsSpecifierList where decode = genericDecode options
instance encodeOptionsSpecifierList :: Encode OptionsSpecifierList where encode = genericEncode options



newtype PlatformArn = PlatformArn String
derive instance newtypePlatformArn :: Newtype PlatformArn _
derive instance repGenericPlatformArn :: Generic PlatformArn _
instance showPlatformArn :: Show PlatformArn where show = genericShow
instance decodePlatformArn :: Decode PlatformArn where decode = genericDecode options
instance encodePlatformArn :: Encode PlatformArn where encode = genericEncode options



newtype PlatformCategory = PlatformCategory String
derive instance newtypePlatformCategory :: Newtype PlatformCategory _
derive instance repGenericPlatformCategory :: Generic PlatformCategory _
instance showPlatformCategory :: Show PlatformCategory where show = genericShow
instance decodePlatformCategory :: Decode PlatformCategory where decode = genericDecode options
instance encodePlatformCategory :: Encode PlatformCategory where encode = genericEncode options



-- | <p>Detailed information about a platform.</p>
newtype PlatformDescription = PlatformDescription 
  { "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "PlatformOwner" :: NullOrUndefined (PlatformOwner)
  , "PlatformName" :: NullOrUndefined (PlatformName)
  , "PlatformVersion" :: NullOrUndefined (PlatformVersion)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformStatus" :: NullOrUndefined (PlatformStatus)
  , "DateCreated" :: NullOrUndefined (CreationDate)
  , "DateUpdated" :: NullOrUndefined (UpdateDate)
  , "PlatformCategory" :: NullOrUndefined (PlatformCategory)
  , "Description" :: NullOrUndefined (Description)
  , "Maintainer" :: NullOrUndefined (Maintainer)
  , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName)
  , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion)
  , "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages)
  , "Frameworks" :: NullOrUndefined (PlatformFrameworks)
  , "CustomAmiList" :: NullOrUndefined (CustomAmiList)
  , "SupportedTierList" :: NullOrUndefined (SupportedTierList)
  , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList)
  }
derive instance newtypePlatformDescription :: Newtype PlatformDescription _
derive instance repGenericPlatformDescription :: Generic PlatformDescription _
instance showPlatformDescription :: Show PlatformDescription where show = genericShow
instance decodePlatformDescription :: Decode PlatformDescription where decode = genericDecode options
instance encodePlatformDescription :: Encode PlatformDescription where encode = genericEncode options

-- | Constructs PlatformDescription from required parameters
newPlatformDescription :: PlatformDescription
newPlatformDescription  = PlatformDescription { "CustomAmiList": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Frameworks": (NullOrUndefined Nothing), "Maintainer": (NullOrUndefined Nothing), "OperatingSystemName": (NullOrUndefined Nothing), "OperatingSystemVersion": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "PlatformCategory": (NullOrUndefined Nothing), "PlatformName": (NullOrUndefined Nothing), "PlatformOwner": (NullOrUndefined Nothing), "PlatformStatus": (NullOrUndefined Nothing), "PlatformVersion": (NullOrUndefined Nothing), "ProgrammingLanguages": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "SupportedAddonList": (NullOrUndefined Nothing), "SupportedTierList": (NullOrUndefined Nothing) }

-- | Constructs PlatformDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformDescription' :: ( { "PlatformArn" :: NullOrUndefined (PlatformArn) , "PlatformOwner" :: NullOrUndefined (PlatformOwner) , "PlatformName" :: NullOrUndefined (PlatformName) , "PlatformVersion" :: NullOrUndefined (PlatformVersion) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformStatus" :: NullOrUndefined (PlatformStatus) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "PlatformCategory" :: NullOrUndefined (PlatformCategory) , "Description" :: NullOrUndefined (Description) , "Maintainer" :: NullOrUndefined (Maintainer) , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName) , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion) , "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages) , "Frameworks" :: NullOrUndefined (PlatformFrameworks) , "CustomAmiList" :: NullOrUndefined (CustomAmiList) , "SupportedTierList" :: NullOrUndefined (SupportedTierList) , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } -> {"PlatformArn" :: NullOrUndefined (PlatformArn) , "PlatformOwner" :: NullOrUndefined (PlatformOwner) , "PlatformName" :: NullOrUndefined (PlatformName) , "PlatformVersion" :: NullOrUndefined (PlatformVersion) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformStatus" :: NullOrUndefined (PlatformStatus) , "DateCreated" :: NullOrUndefined (CreationDate) , "DateUpdated" :: NullOrUndefined (UpdateDate) , "PlatformCategory" :: NullOrUndefined (PlatformCategory) , "Description" :: NullOrUndefined (Description) , "Maintainer" :: NullOrUndefined (Maintainer) , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName) , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion) , "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages) , "Frameworks" :: NullOrUndefined (PlatformFrameworks) , "CustomAmiList" :: NullOrUndefined (CustomAmiList) , "SupportedTierList" :: NullOrUndefined (SupportedTierList) , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } ) -> PlatformDescription
newPlatformDescription'  customize = (PlatformDescription <<< customize) { "CustomAmiList": (NullOrUndefined Nothing), "DateCreated": (NullOrUndefined Nothing), "DateUpdated": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Frameworks": (NullOrUndefined Nothing), "Maintainer": (NullOrUndefined Nothing), "OperatingSystemName": (NullOrUndefined Nothing), "OperatingSystemVersion": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "PlatformCategory": (NullOrUndefined Nothing), "PlatformName": (NullOrUndefined Nothing), "PlatformOwner": (NullOrUndefined Nothing), "PlatformStatus": (NullOrUndefined Nothing), "PlatformVersion": (NullOrUndefined Nothing), "ProgrammingLanguages": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "SupportedAddonList": (NullOrUndefined Nothing), "SupportedTierList": (NullOrUndefined Nothing) }



-- | <p>Specify criteria to restrict the results when listing custom platforms.</p> <p>The filter is evaluated as the expression:</p> <p> <code>Type</code> <code>Operator</code> <code>Values[i]</code> </p>
newtype PlatformFilter = PlatformFilter 
  { "Type" :: NullOrUndefined (PlatformFilterType)
  , "Operator" :: NullOrUndefined (PlatformFilterOperator)
  , "Values" :: NullOrUndefined (PlatformFilterValueList)
  }
derive instance newtypePlatformFilter :: Newtype PlatformFilter _
derive instance repGenericPlatformFilter :: Generic PlatformFilter _
instance showPlatformFilter :: Show PlatformFilter where show = genericShow
instance decodePlatformFilter :: Decode PlatformFilter where decode = genericDecode options
instance encodePlatformFilter :: Encode PlatformFilter where encode = genericEncode options

-- | Constructs PlatformFilter from required parameters
newPlatformFilter :: PlatformFilter
newPlatformFilter  = PlatformFilter { "Operator": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs PlatformFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformFilter' :: ( { "Type" :: NullOrUndefined (PlatformFilterType) , "Operator" :: NullOrUndefined (PlatformFilterOperator) , "Values" :: NullOrUndefined (PlatformFilterValueList) } -> {"Type" :: NullOrUndefined (PlatformFilterType) , "Operator" :: NullOrUndefined (PlatformFilterOperator) , "Values" :: NullOrUndefined (PlatformFilterValueList) } ) -> PlatformFilter
newPlatformFilter'  customize = (PlatformFilter <<< customize) { "Operator": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



newtype PlatformFilterOperator = PlatformFilterOperator String
derive instance newtypePlatformFilterOperator :: Newtype PlatformFilterOperator _
derive instance repGenericPlatformFilterOperator :: Generic PlatformFilterOperator _
instance showPlatformFilterOperator :: Show PlatformFilterOperator where show = genericShow
instance decodePlatformFilterOperator :: Decode PlatformFilterOperator where decode = genericDecode options
instance encodePlatformFilterOperator :: Encode PlatformFilterOperator where encode = genericEncode options



newtype PlatformFilterType = PlatformFilterType String
derive instance newtypePlatformFilterType :: Newtype PlatformFilterType _
derive instance repGenericPlatformFilterType :: Generic PlatformFilterType _
instance showPlatformFilterType :: Show PlatformFilterType where show = genericShow
instance decodePlatformFilterType :: Decode PlatformFilterType where decode = genericDecode options
instance encodePlatformFilterType :: Encode PlatformFilterType where encode = genericEncode options



newtype PlatformFilterValue = PlatformFilterValue String
derive instance newtypePlatformFilterValue :: Newtype PlatformFilterValue _
derive instance repGenericPlatformFilterValue :: Generic PlatformFilterValue _
instance showPlatformFilterValue :: Show PlatformFilterValue where show = genericShow
instance decodePlatformFilterValue :: Decode PlatformFilterValue where decode = genericDecode options
instance encodePlatformFilterValue :: Encode PlatformFilterValue where encode = genericEncode options



newtype PlatformFilterValueList = PlatformFilterValueList (Array PlatformFilterValue)
derive instance newtypePlatformFilterValueList :: Newtype PlatformFilterValueList _
derive instance repGenericPlatformFilterValueList :: Generic PlatformFilterValueList _
instance showPlatformFilterValueList :: Show PlatformFilterValueList where show = genericShow
instance decodePlatformFilterValueList :: Decode PlatformFilterValueList where decode = genericDecode options
instance encodePlatformFilterValueList :: Encode PlatformFilterValueList where encode = genericEncode options



newtype PlatformFilters = PlatformFilters (Array PlatformFilter)
derive instance newtypePlatformFilters :: Newtype PlatformFilters _
derive instance repGenericPlatformFilters :: Generic PlatformFilters _
instance showPlatformFilters :: Show PlatformFilters where show = genericShow
instance decodePlatformFilters :: Decode PlatformFilters where decode = genericDecode options
instance encodePlatformFilters :: Encode PlatformFilters where encode = genericEncode options



-- | <p>A framework supported by the custom platform.</p>
newtype PlatformFramework = PlatformFramework 
  { "Name" :: NullOrUndefined (String)
  , "Version" :: NullOrUndefined (String)
  }
derive instance newtypePlatformFramework :: Newtype PlatformFramework _
derive instance repGenericPlatformFramework :: Generic PlatformFramework _
instance showPlatformFramework :: Show PlatformFramework where show = genericShow
instance decodePlatformFramework :: Decode PlatformFramework where decode = genericDecode options
instance encodePlatformFramework :: Encode PlatformFramework where encode = genericEncode options

-- | Constructs PlatformFramework from required parameters
newPlatformFramework :: PlatformFramework
newPlatformFramework  = PlatformFramework { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs PlatformFramework's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformFramework' :: ( { "Name" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } ) -> PlatformFramework
newPlatformFramework'  customize = (PlatformFramework <<< customize) { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype PlatformFrameworks = PlatformFrameworks (Array PlatformFramework)
derive instance newtypePlatformFrameworks :: Newtype PlatformFrameworks _
derive instance repGenericPlatformFrameworks :: Generic PlatformFrameworks _
instance showPlatformFrameworks :: Show PlatformFrameworks where show = genericShow
instance decodePlatformFrameworks :: Decode PlatformFrameworks where decode = genericDecode options
instance encodePlatformFrameworks :: Encode PlatformFrameworks where encode = genericEncode options



newtype PlatformMaxRecords = PlatformMaxRecords Int
derive instance newtypePlatformMaxRecords :: Newtype PlatformMaxRecords _
derive instance repGenericPlatformMaxRecords :: Generic PlatformMaxRecords _
instance showPlatformMaxRecords :: Show PlatformMaxRecords where show = genericShow
instance decodePlatformMaxRecords :: Decode PlatformMaxRecords where decode = genericDecode options
instance encodePlatformMaxRecords :: Encode PlatformMaxRecords where encode = genericEncode options



newtype PlatformName = PlatformName String
derive instance newtypePlatformName :: Newtype PlatformName _
derive instance repGenericPlatformName :: Generic PlatformName _
instance showPlatformName :: Show PlatformName where show = genericShow
instance decodePlatformName :: Decode PlatformName where decode = genericDecode options
instance encodePlatformName :: Encode PlatformName where encode = genericEncode options



newtype PlatformOwner = PlatformOwner String
derive instance newtypePlatformOwner :: Newtype PlatformOwner _
derive instance repGenericPlatformOwner :: Generic PlatformOwner _
instance showPlatformOwner :: Show PlatformOwner where show = genericShow
instance decodePlatformOwner :: Decode PlatformOwner where decode = genericDecode options
instance encodePlatformOwner :: Encode PlatformOwner where encode = genericEncode options



-- | <p>A programming language supported by the platform.</p>
newtype PlatformProgrammingLanguage = PlatformProgrammingLanguage 
  { "Name" :: NullOrUndefined (String)
  , "Version" :: NullOrUndefined (String)
  }
derive instance newtypePlatformProgrammingLanguage :: Newtype PlatformProgrammingLanguage _
derive instance repGenericPlatformProgrammingLanguage :: Generic PlatformProgrammingLanguage _
instance showPlatformProgrammingLanguage :: Show PlatformProgrammingLanguage where show = genericShow
instance decodePlatformProgrammingLanguage :: Decode PlatformProgrammingLanguage where decode = genericDecode options
instance encodePlatformProgrammingLanguage :: Encode PlatformProgrammingLanguage where encode = genericEncode options

-- | Constructs PlatformProgrammingLanguage from required parameters
newPlatformProgrammingLanguage :: PlatformProgrammingLanguage
newPlatformProgrammingLanguage  = PlatformProgrammingLanguage { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs PlatformProgrammingLanguage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformProgrammingLanguage' :: ( { "Name" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "Version" :: NullOrUndefined (String) } ) -> PlatformProgrammingLanguage
newPlatformProgrammingLanguage'  customize = (PlatformProgrammingLanguage <<< customize) { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype PlatformProgrammingLanguages = PlatformProgrammingLanguages (Array PlatformProgrammingLanguage)
derive instance newtypePlatformProgrammingLanguages :: Newtype PlatformProgrammingLanguages _
derive instance repGenericPlatformProgrammingLanguages :: Generic PlatformProgrammingLanguages _
instance showPlatformProgrammingLanguages :: Show PlatformProgrammingLanguages where show = genericShow
instance decodePlatformProgrammingLanguages :: Decode PlatformProgrammingLanguages where decode = genericDecode options
instance encodePlatformProgrammingLanguages :: Encode PlatformProgrammingLanguages where encode = genericEncode options



newtype PlatformStatus = PlatformStatus String
derive instance newtypePlatformStatus :: Newtype PlatformStatus _
derive instance repGenericPlatformStatus :: Generic PlatformStatus _
instance showPlatformStatus :: Show PlatformStatus where show = genericShow
instance decodePlatformStatus :: Decode PlatformStatus where decode = genericDecode options
instance encodePlatformStatus :: Encode PlatformStatus where encode = genericEncode options



-- | <p>Detailed information about a platform.</p>
newtype PlatformSummary = PlatformSummary 
  { "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "PlatformOwner" :: NullOrUndefined (PlatformOwner)
  , "PlatformStatus" :: NullOrUndefined (PlatformStatus)
  , "PlatformCategory" :: NullOrUndefined (PlatformCategory)
  , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName)
  , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion)
  , "SupportedTierList" :: NullOrUndefined (SupportedTierList)
  , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList)
  }
derive instance newtypePlatformSummary :: Newtype PlatformSummary _
derive instance repGenericPlatformSummary :: Generic PlatformSummary _
instance showPlatformSummary :: Show PlatformSummary where show = genericShow
instance decodePlatformSummary :: Decode PlatformSummary where decode = genericDecode options
instance encodePlatformSummary :: Encode PlatformSummary where encode = genericEncode options

-- | Constructs PlatformSummary from required parameters
newPlatformSummary :: PlatformSummary
newPlatformSummary  = PlatformSummary { "OperatingSystemName": (NullOrUndefined Nothing), "OperatingSystemVersion": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "PlatformCategory": (NullOrUndefined Nothing), "PlatformOwner": (NullOrUndefined Nothing), "PlatformStatus": (NullOrUndefined Nothing), "SupportedAddonList": (NullOrUndefined Nothing), "SupportedTierList": (NullOrUndefined Nothing) }

-- | Constructs PlatformSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformSummary' :: ( { "PlatformArn" :: NullOrUndefined (PlatformArn) , "PlatformOwner" :: NullOrUndefined (PlatformOwner) , "PlatformStatus" :: NullOrUndefined (PlatformStatus) , "PlatformCategory" :: NullOrUndefined (PlatformCategory) , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName) , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion) , "SupportedTierList" :: NullOrUndefined (SupportedTierList) , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } -> {"PlatformArn" :: NullOrUndefined (PlatformArn) , "PlatformOwner" :: NullOrUndefined (PlatformOwner) , "PlatformStatus" :: NullOrUndefined (PlatformStatus) , "PlatformCategory" :: NullOrUndefined (PlatformCategory) , "OperatingSystemName" :: NullOrUndefined (OperatingSystemName) , "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion) , "SupportedTierList" :: NullOrUndefined (SupportedTierList) , "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } ) -> PlatformSummary
newPlatformSummary'  customize = (PlatformSummary <<< customize) { "OperatingSystemName": (NullOrUndefined Nothing), "OperatingSystemVersion": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "PlatformCategory": (NullOrUndefined Nothing), "PlatformOwner": (NullOrUndefined Nothing), "PlatformStatus": (NullOrUndefined Nothing), "SupportedAddonList": (NullOrUndefined Nothing), "SupportedTierList": (NullOrUndefined Nothing) }



newtype PlatformSummaryList = PlatformSummaryList (Array PlatformSummary)
derive instance newtypePlatformSummaryList :: Newtype PlatformSummaryList _
derive instance repGenericPlatformSummaryList :: Generic PlatformSummaryList _
instance showPlatformSummaryList :: Show PlatformSummaryList where show = genericShow
instance decodePlatformSummaryList :: Decode PlatformSummaryList where decode = genericDecode options
instance encodePlatformSummaryList :: Encode PlatformSummaryList where encode = genericEncode options



newtype PlatformVersion = PlatformVersion String
derive instance newtypePlatformVersion :: Newtype PlatformVersion _
derive instance repGenericPlatformVersion :: Generic PlatformVersion _
instance showPlatformVersion :: Show PlatformVersion where show = genericShow
instance decodePlatformVersion :: Decode PlatformVersion where decode = genericDecode options
instance encodePlatformVersion :: Encode PlatformVersion where encode = genericEncode options



-- | <p>You cannot delete the platform version because there are still environments running on it.</p>
newtype PlatformVersionStillReferencedException = PlatformVersionStillReferencedException Types.NoArguments
derive instance newtypePlatformVersionStillReferencedException :: Newtype PlatformVersionStillReferencedException _
derive instance repGenericPlatformVersionStillReferencedException :: Generic PlatformVersionStillReferencedException _
instance showPlatformVersionStillReferencedException :: Show PlatformVersionStillReferencedException where show = genericShow
instance decodePlatformVersionStillReferencedException :: Decode PlatformVersionStillReferencedException where decode = genericDecode options
instance encodePlatformVersionStillReferencedException :: Encode PlatformVersionStillReferencedException where encode = genericEncode options



-- | <p>Describes a queue.</p>
newtype Queue = Queue 
  { "Name" :: NullOrUndefined (String)
  , "URL" :: NullOrUndefined (String)
  }
derive instance newtypeQueue :: Newtype Queue _
derive instance repGenericQueue :: Generic Queue _
instance showQueue :: Show Queue where show = genericShow
instance decodeQueue :: Decode Queue where decode = genericDecode options
instance encodeQueue :: Encode Queue where encode = genericEncode options

-- | Constructs Queue from required parameters
newQueue :: Queue
newQueue  = Queue { "Name": (NullOrUndefined Nothing), "URL": (NullOrUndefined Nothing) }

-- | Constructs Queue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueue' :: ( { "Name" :: NullOrUndefined (String) , "URL" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "URL" :: NullOrUndefined (String) } ) -> Queue
newQueue'  customize = (Queue <<< customize) { "Name": (NullOrUndefined Nothing), "URL": (NullOrUndefined Nothing) }



newtype QueueList = QueueList (Array Queue)
derive instance newtypeQueueList :: Newtype QueueList _
derive instance repGenericQueueList :: Generic QueueList _
instance showQueueList :: Show QueueList where show = genericShow
instance decodeQueueList :: Decode QueueList where decode = genericDecode options
instance encodeQueueList :: Encode QueueList where encode = genericEncode options



-- | <p/>
newtype RebuildEnvironmentMessage = RebuildEnvironmentMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeRebuildEnvironmentMessage :: Newtype RebuildEnvironmentMessage _
derive instance repGenericRebuildEnvironmentMessage :: Generic RebuildEnvironmentMessage _
instance showRebuildEnvironmentMessage :: Show RebuildEnvironmentMessage where show = genericShow
instance decodeRebuildEnvironmentMessage :: Decode RebuildEnvironmentMessage where decode = genericDecode options
instance encodeRebuildEnvironmentMessage :: Encode RebuildEnvironmentMessage where encode = genericEncode options

-- | Constructs RebuildEnvironmentMessage from required parameters
newRebuildEnvironmentMessage :: RebuildEnvironmentMessage
newRebuildEnvironmentMessage  = RebuildEnvironmentMessage { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs RebuildEnvironmentMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRebuildEnvironmentMessage' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> RebuildEnvironmentMessage
newRebuildEnvironmentMessage'  customize = (RebuildEnvironmentMessage <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



newtype RefreshedAt = RefreshedAt Types.Timestamp
derive instance newtypeRefreshedAt :: Newtype RefreshedAt _
derive instance repGenericRefreshedAt :: Generic RefreshedAt _
instance showRefreshedAt :: Show RefreshedAt where show = genericShow
instance decodeRefreshedAt :: Decode RefreshedAt where decode = genericDecode options
instance encodeRefreshedAt :: Encode RefreshedAt where encode = genericEncode options



newtype RegexLabel = RegexLabel String
derive instance newtypeRegexLabel :: Newtype RegexLabel _
derive instance repGenericRegexLabel :: Generic RegexLabel _
instance showRegexLabel :: Show RegexLabel where show = genericShow
instance decodeRegexLabel :: Decode RegexLabel where decode = genericDecode options
instance encodeRegexLabel :: Encode RegexLabel where encode = genericEncode options



newtype RegexPattern = RegexPattern String
derive instance newtypeRegexPattern :: Newtype RegexPattern _
derive instance repGenericRegexPattern :: Generic RegexPattern _
instance showRegexPattern :: Show RegexPattern where show = genericShow
instance decodeRegexPattern :: Decode RegexPattern where decode = genericDecode options
instance encodeRegexPattern :: Encode RegexPattern where encode = genericEncode options



newtype RequestCount = RequestCount Int
derive instance newtypeRequestCount :: Newtype RequestCount _
derive instance repGenericRequestCount :: Generic RequestCount _
instance showRequestCount :: Show RequestCount where show = genericShow
instance decodeRequestCount :: Decode RequestCount where decode = genericDecode options
instance encodeRequestCount :: Encode RequestCount where encode = genericEncode options



-- | <p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk storage bucket.</p>
newtype RequestEnvironmentInfoMessage = RequestEnvironmentInfoMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "InfoType" :: (EnvironmentInfoType)
  }
derive instance newtypeRequestEnvironmentInfoMessage :: Newtype RequestEnvironmentInfoMessage _
derive instance repGenericRequestEnvironmentInfoMessage :: Generic RequestEnvironmentInfoMessage _
instance showRequestEnvironmentInfoMessage :: Show RequestEnvironmentInfoMessage where show = genericShow
instance decodeRequestEnvironmentInfoMessage :: Decode RequestEnvironmentInfoMessage where decode = genericDecode options
instance encodeRequestEnvironmentInfoMessage :: Encode RequestEnvironmentInfoMessage where encode = genericEncode options

-- | Constructs RequestEnvironmentInfoMessage from required parameters
newRequestEnvironmentInfoMessage :: EnvironmentInfoType -> RequestEnvironmentInfoMessage
newRequestEnvironmentInfoMessage _InfoType = RequestEnvironmentInfoMessage { "InfoType": _InfoType, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs RequestEnvironmentInfoMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestEnvironmentInfoMessage' :: EnvironmentInfoType -> ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "InfoType" :: (EnvironmentInfoType) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "InfoType" :: (EnvironmentInfoType) } ) -> RequestEnvironmentInfoMessage
newRequestEnvironmentInfoMessage' _InfoType customize = (RequestEnvironmentInfoMessage <<< customize) { "InfoType": _InfoType, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



newtype RequestId = RequestId String
derive instance newtypeRequestId :: Newtype RequestId _
derive instance repGenericRequestId :: Generic RequestId _
instance showRequestId :: Show RequestId where show = genericShow
instance decodeRequestId :: Decode RequestId where decode = genericDecode options
instance encodeRequestId :: Encode RequestId where encode = genericEncode options



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where show = genericShow
instance decodeResourceName :: Decode ResourceName where decode = genericDecode options
instance encodeResourceName :: Encode ResourceName where encode = genericEncode options



-- | <p>A resource doesn't exist for the specified Amazon Resource Name (ARN).</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



newtype ResourceTagsDescriptionMessage = ResourceTagsDescriptionMessage 
  { "ResourceArn" :: NullOrUndefined (ResourceArn)
  , "ResourceTags" :: NullOrUndefined (TagList)
  }
derive instance newtypeResourceTagsDescriptionMessage :: Newtype ResourceTagsDescriptionMessage _
derive instance repGenericResourceTagsDescriptionMessage :: Generic ResourceTagsDescriptionMessage _
instance showResourceTagsDescriptionMessage :: Show ResourceTagsDescriptionMessage where show = genericShow
instance decodeResourceTagsDescriptionMessage :: Decode ResourceTagsDescriptionMessage where decode = genericDecode options
instance encodeResourceTagsDescriptionMessage :: Encode ResourceTagsDescriptionMessage where encode = genericEncode options

-- | Constructs ResourceTagsDescriptionMessage from required parameters
newResourceTagsDescriptionMessage :: ResourceTagsDescriptionMessage
newResourceTagsDescriptionMessage  = ResourceTagsDescriptionMessage { "ResourceArn": (NullOrUndefined Nothing), "ResourceTags": (NullOrUndefined Nothing) }

-- | Constructs ResourceTagsDescriptionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceTagsDescriptionMessage' :: ( { "ResourceArn" :: NullOrUndefined (ResourceArn) , "ResourceTags" :: NullOrUndefined (TagList) } -> {"ResourceArn" :: NullOrUndefined (ResourceArn) , "ResourceTags" :: NullOrUndefined (TagList) } ) -> ResourceTagsDescriptionMessage
newResourceTagsDescriptionMessage'  customize = (ResourceTagsDescriptionMessage <<< customize) { "ResourceArn": (NullOrUndefined Nothing), "ResourceTags": (NullOrUndefined Nothing) }



-- | <p>The type of the specified Amazon Resource Name (ARN) isn't supported for this operation.</p>
newtype ResourceTypeNotSupportedException = ResourceTypeNotSupportedException Types.NoArguments
derive instance newtypeResourceTypeNotSupportedException :: Newtype ResourceTypeNotSupportedException _
derive instance repGenericResourceTypeNotSupportedException :: Generic ResourceTypeNotSupportedException _
instance showResourceTypeNotSupportedException :: Show ResourceTypeNotSupportedException where show = genericShow
instance decodeResourceTypeNotSupportedException :: Decode ResourceTypeNotSupportedException where decode = genericDecode options
instance encodeResourceTypeNotSupportedException :: Encode ResourceTypeNotSupportedException where encode = genericEncode options



-- | <p/>
newtype RestartAppServerMessage = RestartAppServerMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeRestartAppServerMessage :: Newtype RestartAppServerMessage _
derive instance repGenericRestartAppServerMessage :: Generic RestartAppServerMessage _
instance showRestartAppServerMessage :: Show RestartAppServerMessage where show = genericShow
instance decodeRestartAppServerMessage :: Decode RestartAppServerMessage where decode = genericDecode options
instance encodeRestartAppServerMessage :: Encode RestartAppServerMessage where encode = genericEncode options

-- | Constructs RestartAppServerMessage from required parameters
newRestartAppServerMessage :: RestartAppServerMessage
newRestartAppServerMessage  = RestartAppServerMessage { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs RestartAppServerMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRestartAppServerMessage' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> RestartAppServerMessage
newRestartAppServerMessage'  customize = (RestartAppServerMessage <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



-- | <p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>
newtype RetrieveEnvironmentInfoMessage = RetrieveEnvironmentInfoMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "InfoType" :: (EnvironmentInfoType)
  }
derive instance newtypeRetrieveEnvironmentInfoMessage :: Newtype RetrieveEnvironmentInfoMessage _
derive instance repGenericRetrieveEnvironmentInfoMessage :: Generic RetrieveEnvironmentInfoMessage _
instance showRetrieveEnvironmentInfoMessage :: Show RetrieveEnvironmentInfoMessage where show = genericShow
instance decodeRetrieveEnvironmentInfoMessage :: Decode RetrieveEnvironmentInfoMessage where decode = genericDecode options
instance encodeRetrieveEnvironmentInfoMessage :: Encode RetrieveEnvironmentInfoMessage where encode = genericEncode options

-- | Constructs RetrieveEnvironmentInfoMessage from required parameters
newRetrieveEnvironmentInfoMessage :: EnvironmentInfoType -> RetrieveEnvironmentInfoMessage
newRetrieveEnvironmentInfoMessage _InfoType = RetrieveEnvironmentInfoMessage { "InfoType": _InfoType, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs RetrieveEnvironmentInfoMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveEnvironmentInfoMessage' :: EnvironmentInfoType -> ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "InfoType" :: (EnvironmentInfoType) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "InfoType" :: (EnvironmentInfoType) } ) -> RetrieveEnvironmentInfoMessage
newRetrieveEnvironmentInfoMessage' _InfoType customize = (RetrieveEnvironmentInfoMessage <<< customize) { "InfoType": _InfoType, "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing) }



-- | <p>Result message containing a description of the requested environment info.</p>
newtype RetrieveEnvironmentInfoResultMessage = RetrieveEnvironmentInfoResultMessage 
  { "EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList)
  }
derive instance newtypeRetrieveEnvironmentInfoResultMessage :: Newtype RetrieveEnvironmentInfoResultMessage _
derive instance repGenericRetrieveEnvironmentInfoResultMessage :: Generic RetrieveEnvironmentInfoResultMessage _
instance showRetrieveEnvironmentInfoResultMessage :: Show RetrieveEnvironmentInfoResultMessage where show = genericShow
instance decodeRetrieveEnvironmentInfoResultMessage :: Decode RetrieveEnvironmentInfoResultMessage where decode = genericDecode options
instance encodeRetrieveEnvironmentInfoResultMessage :: Encode RetrieveEnvironmentInfoResultMessage where encode = genericEncode options

-- | Constructs RetrieveEnvironmentInfoResultMessage from required parameters
newRetrieveEnvironmentInfoResultMessage :: RetrieveEnvironmentInfoResultMessage
newRetrieveEnvironmentInfoResultMessage  = RetrieveEnvironmentInfoResultMessage { "EnvironmentInfo": (NullOrUndefined Nothing) }

-- | Constructs RetrieveEnvironmentInfoResultMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveEnvironmentInfoResultMessage' :: ( { "EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList) } -> {"EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList) } ) -> RetrieveEnvironmentInfoResultMessage
newRetrieveEnvironmentInfoResultMessage'  customize = (RetrieveEnvironmentInfoResultMessage <<< customize) { "EnvironmentInfo": (NullOrUndefined Nothing) }



newtype S3Bucket = S3Bucket String
derive instance newtypeS3Bucket :: Newtype S3Bucket _
derive instance repGenericS3Bucket :: Generic S3Bucket _
instance showS3Bucket :: Show S3Bucket where show = genericShow
instance decodeS3Bucket :: Decode S3Bucket where decode = genericDecode options
instance encodeS3Bucket :: Encode S3Bucket where encode = genericEncode options



newtype S3Key = S3Key String
derive instance newtypeS3Key :: Newtype S3Key _
derive instance repGenericS3Key :: Generic S3Key _
instance showS3Key :: Show S3Key where show = genericShow
instance decodeS3Key :: Decode S3Key where decode = genericDecode options
instance encodeS3Key :: Encode S3Key where encode = genericEncode options



-- | <p>The bucket and key of an item stored in Amazon S3.</p>
newtype S3Location = S3Location 
  { "S3Bucket" :: NullOrUndefined (S3Bucket)
  , "S3Key" :: NullOrUndefined (S3Key)
  }
derive instance newtypeS3Location :: Newtype S3Location _
derive instance repGenericS3Location :: Generic S3Location _
instance showS3Location :: Show S3Location where show = genericShow
instance decodeS3Location :: Decode S3Location where decode = genericDecode options
instance encodeS3Location :: Encode S3Location where encode = genericEncode options

-- | Constructs S3Location from required parameters
newS3Location :: S3Location
newS3Location  = S3Location { "S3Bucket": (NullOrUndefined Nothing), "S3Key": (NullOrUndefined Nothing) }

-- | Constructs S3Location's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Location' :: ( { "S3Bucket" :: NullOrUndefined (S3Bucket) , "S3Key" :: NullOrUndefined (S3Key) } -> {"S3Bucket" :: NullOrUndefined (S3Bucket) , "S3Key" :: NullOrUndefined (S3Key) } ) -> S3Location
newS3Location'  customize = (S3Location <<< customize) { "S3Bucket": (NullOrUndefined Nothing), "S3Key": (NullOrUndefined Nothing) }



-- | <p>The specified S3 bucket does not belong to the S3 region in which the service is running. The following regions are supported:</p> <ul> <li> <p>IAD/us-east-1</p> </li> <li> <p>PDX/us-west-2</p> </li> <li> <p>DUB/eu-west-1</p> </li> </ul>
newtype S3LocationNotInServiceRegionException = S3LocationNotInServiceRegionException Types.NoArguments
derive instance newtypeS3LocationNotInServiceRegionException :: Newtype S3LocationNotInServiceRegionException _
derive instance repGenericS3LocationNotInServiceRegionException :: Generic S3LocationNotInServiceRegionException _
instance showS3LocationNotInServiceRegionException :: Show S3LocationNotInServiceRegionException where show = genericShow
instance decodeS3LocationNotInServiceRegionException :: Decode S3LocationNotInServiceRegionException where decode = genericDecode options
instance encodeS3LocationNotInServiceRegionException :: Encode S3LocationNotInServiceRegionException where encode = genericEncode options



-- | <p>The specified account does not have a subscription to Amazon S3.</p>
newtype S3SubscriptionRequiredException = S3SubscriptionRequiredException Types.NoArguments
derive instance newtypeS3SubscriptionRequiredException :: Newtype S3SubscriptionRequiredException _
derive instance repGenericS3SubscriptionRequiredException :: Generic S3SubscriptionRequiredException _
instance showS3SubscriptionRequiredException :: Show S3SubscriptionRequiredException where show = genericShow
instance decodeS3SubscriptionRequiredException :: Decode S3SubscriptionRequiredException where decode = genericDecode options
instance encodeS3SubscriptionRequiredException :: Encode S3SubscriptionRequiredException where encode = genericEncode options



newtype SampleTimestamp = SampleTimestamp Types.Timestamp
derive instance newtypeSampleTimestamp :: Newtype SampleTimestamp _
derive instance repGenericSampleTimestamp :: Generic SampleTimestamp _
instance showSampleTimestamp :: Show SampleTimestamp where show = genericShow
instance decodeSampleTimestamp :: Decode SampleTimestamp where decode = genericDecode options
instance encodeSampleTimestamp :: Encode SampleTimestamp where encode = genericEncode options



-- | <p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>
newtype SingleInstanceHealth = SingleInstanceHealth 
  { "InstanceId" :: NullOrUndefined (InstanceId)
  , "HealthStatus" :: NullOrUndefined (String)
  , "Color" :: NullOrUndefined (String)
  , "Causes" :: NullOrUndefined (Causes)
  , "LaunchedAt" :: NullOrUndefined (LaunchedAt)
  , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics)
  , "System" :: NullOrUndefined (SystemStatus)
  , "Deployment" :: NullOrUndefined (Deployment)
  , "AvailabilityZone" :: NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined (String)
  }
derive instance newtypeSingleInstanceHealth :: Newtype SingleInstanceHealth _
derive instance repGenericSingleInstanceHealth :: Generic SingleInstanceHealth _
instance showSingleInstanceHealth :: Show SingleInstanceHealth where show = genericShow
instance decodeSingleInstanceHealth :: Decode SingleInstanceHealth where decode = genericDecode options
instance encodeSingleInstanceHealth :: Encode SingleInstanceHealth where encode = genericEncode options

-- | Constructs SingleInstanceHealth from required parameters
newSingleInstanceHealth :: SingleInstanceHealth
newSingleInstanceHealth  = SingleInstanceHealth { "ApplicationMetrics": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "Causes": (NullOrUndefined Nothing), "Color": (NullOrUndefined Nothing), "Deployment": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LaunchedAt": (NullOrUndefined Nothing), "System": (NullOrUndefined Nothing) }

-- | Constructs SingleInstanceHealth's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSingleInstanceHealth' :: ( { "InstanceId" :: NullOrUndefined (InstanceId) , "HealthStatus" :: NullOrUndefined (String) , "Color" :: NullOrUndefined (String) , "Causes" :: NullOrUndefined (Causes) , "LaunchedAt" :: NullOrUndefined (LaunchedAt) , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics) , "System" :: NullOrUndefined (SystemStatus) , "Deployment" :: NullOrUndefined (Deployment) , "AvailabilityZone" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) } -> {"InstanceId" :: NullOrUndefined (InstanceId) , "HealthStatus" :: NullOrUndefined (String) , "Color" :: NullOrUndefined (String) , "Causes" :: NullOrUndefined (Causes) , "LaunchedAt" :: NullOrUndefined (LaunchedAt) , "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics) , "System" :: NullOrUndefined (SystemStatus) , "Deployment" :: NullOrUndefined (Deployment) , "AvailabilityZone" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) } ) -> SingleInstanceHealth
newSingleInstanceHealth'  customize = (SingleInstanceHealth <<< customize) { "ApplicationMetrics": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "Causes": (NullOrUndefined Nothing), "Color": (NullOrUndefined Nothing), "Deployment": (NullOrUndefined Nothing), "HealthStatus": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LaunchedAt": (NullOrUndefined Nothing), "System": (NullOrUndefined Nothing) }



-- | <p>Describes the solution stack.</p>
newtype SolutionStackDescription = SolutionStackDescription 
  { "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList)
  }
derive instance newtypeSolutionStackDescription :: Newtype SolutionStackDescription _
derive instance repGenericSolutionStackDescription :: Generic SolutionStackDescription _
instance showSolutionStackDescription :: Show SolutionStackDescription where show = genericShow
instance decodeSolutionStackDescription :: Decode SolutionStackDescription where decode = genericDecode options
instance encodeSolutionStackDescription :: Encode SolutionStackDescription where encode = genericEncode options

-- | Constructs SolutionStackDescription from required parameters
newSolutionStackDescription :: SolutionStackDescription
newSolutionStackDescription  = SolutionStackDescription { "PermittedFileTypes": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing) }

-- | Constructs SolutionStackDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSolutionStackDescription' :: ( { "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList) } -> {"SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList) } ) -> SolutionStackDescription
newSolutionStackDescription'  customize = (SolutionStackDescription <<< customize) { "PermittedFileTypes": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing) }



newtype SolutionStackFileTypeList = SolutionStackFileTypeList (Array FileTypeExtension)
derive instance newtypeSolutionStackFileTypeList :: Newtype SolutionStackFileTypeList _
derive instance repGenericSolutionStackFileTypeList :: Generic SolutionStackFileTypeList _
instance showSolutionStackFileTypeList :: Show SolutionStackFileTypeList where show = genericShow
instance decodeSolutionStackFileTypeList :: Decode SolutionStackFileTypeList where decode = genericDecode options
instance encodeSolutionStackFileTypeList :: Encode SolutionStackFileTypeList where encode = genericEncode options



newtype SolutionStackName = SolutionStackName String
derive instance newtypeSolutionStackName :: Newtype SolutionStackName _
derive instance repGenericSolutionStackName :: Generic SolutionStackName _
instance showSolutionStackName :: Show SolutionStackName where show = genericShow
instance decodeSolutionStackName :: Decode SolutionStackName where decode = genericDecode options
instance encodeSolutionStackName :: Encode SolutionStackName where encode = genericEncode options



-- | <p>Location of the source code for an application version.</p>
newtype SourceBuildInformation = SourceBuildInformation 
  { "SourceType" :: (SourceType)
  , "SourceRepository" :: (SourceRepository)
  , "SourceLocation" :: (SourceLocation)
  }
derive instance newtypeSourceBuildInformation :: Newtype SourceBuildInformation _
derive instance repGenericSourceBuildInformation :: Generic SourceBuildInformation _
instance showSourceBuildInformation :: Show SourceBuildInformation where show = genericShow
instance decodeSourceBuildInformation :: Decode SourceBuildInformation where decode = genericDecode options
instance encodeSourceBuildInformation :: Encode SourceBuildInformation where encode = genericEncode options

-- | Constructs SourceBuildInformation from required parameters
newSourceBuildInformation :: SourceLocation -> SourceRepository -> SourceType -> SourceBuildInformation
newSourceBuildInformation _SourceLocation _SourceRepository _SourceType = SourceBuildInformation { "SourceLocation": _SourceLocation, "SourceRepository": _SourceRepository, "SourceType": _SourceType }

-- | Constructs SourceBuildInformation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceBuildInformation' :: SourceLocation -> SourceRepository -> SourceType -> ( { "SourceType" :: (SourceType) , "SourceRepository" :: (SourceRepository) , "SourceLocation" :: (SourceLocation) } -> {"SourceType" :: (SourceType) , "SourceRepository" :: (SourceRepository) , "SourceLocation" :: (SourceLocation) } ) -> SourceBuildInformation
newSourceBuildInformation' _SourceLocation _SourceRepository _SourceType customize = (SourceBuildInformation <<< customize) { "SourceLocation": _SourceLocation, "SourceRepository": _SourceRepository, "SourceType": _SourceType }



-- | <p>Unable to delete the Amazon S3 source bundle associated with the application version. The application version was deleted successfully.</p>
newtype SourceBundleDeletionException = SourceBundleDeletionException Types.NoArguments
derive instance newtypeSourceBundleDeletionException :: Newtype SourceBundleDeletionException _
derive instance repGenericSourceBundleDeletionException :: Generic SourceBundleDeletionException _
instance showSourceBundleDeletionException :: Show SourceBundleDeletionException where show = genericShow
instance decodeSourceBundleDeletionException :: Decode SourceBundleDeletionException where decode = genericDecode options
instance encodeSourceBundleDeletionException :: Encode SourceBundleDeletionException where encode = genericEncode options



-- | <p>A specification for an environment configuration</p>
newtype SourceConfiguration = SourceConfiguration 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  }
derive instance newtypeSourceConfiguration :: Newtype SourceConfiguration _
derive instance repGenericSourceConfiguration :: Generic SourceConfiguration _
instance showSourceConfiguration :: Show SourceConfiguration where show = genericShow
instance decodeSourceConfiguration :: Decode SourceConfiguration where decode = genericDecode options
instance encodeSourceConfiguration :: Encode SourceConfiguration where encode = genericEncode options

-- | Constructs SourceConfiguration from required parameters
newSourceConfiguration :: SourceConfiguration
newSourceConfiguration  = SourceConfiguration { "ApplicationName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }

-- | Constructs SourceConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceConfiguration' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) } ) -> SourceConfiguration
newSourceConfiguration'  customize = (SourceConfiguration <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }



newtype SourceLocation = SourceLocation String
derive instance newtypeSourceLocation :: Newtype SourceLocation _
derive instance repGenericSourceLocation :: Generic SourceLocation _
instance showSourceLocation :: Show SourceLocation where show = genericShow
instance decodeSourceLocation :: Decode SourceLocation where decode = genericDecode options
instance encodeSourceLocation :: Encode SourceLocation where encode = genericEncode options



newtype SourceRepository = SourceRepository String
derive instance newtypeSourceRepository :: Newtype SourceRepository _
derive instance repGenericSourceRepository :: Generic SourceRepository _
instance showSourceRepository :: Show SourceRepository where show = genericShow
instance decodeSourceRepository :: Decode SourceRepository where decode = genericDecode options
instance encodeSourceRepository :: Encode SourceRepository where encode = genericEncode options



newtype SourceType = SourceType String
derive instance newtypeSourceType :: Newtype SourceType _
derive instance repGenericSourceType :: Generic SourceType _
instance showSourceType :: Show SourceType where show = genericShow
instance decodeSourceType :: Decode SourceType where decode = genericDecode options
instance encodeSourceType :: Encode SourceType where encode = genericEncode options



-- | <p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code Definitions</a>.</p>
newtype StatusCodes = StatusCodes 
  { "Status2xx" :: NullOrUndefined (NullableInteger)
  , "Status3xx" :: NullOrUndefined (NullableInteger)
  , "Status4xx" :: NullOrUndefined (NullableInteger)
  , "Status5xx" :: NullOrUndefined (NullableInteger)
  }
derive instance newtypeStatusCodes :: Newtype StatusCodes _
derive instance repGenericStatusCodes :: Generic StatusCodes _
instance showStatusCodes :: Show StatusCodes where show = genericShow
instance decodeStatusCodes :: Decode StatusCodes where decode = genericDecode options
instance encodeStatusCodes :: Encode StatusCodes where encode = genericEncode options

-- | Constructs StatusCodes from required parameters
newStatusCodes :: StatusCodes
newStatusCodes  = StatusCodes { "Status2xx": (NullOrUndefined Nothing), "Status3xx": (NullOrUndefined Nothing), "Status4xx": (NullOrUndefined Nothing), "Status5xx": (NullOrUndefined Nothing) }

-- | Constructs StatusCodes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStatusCodes' :: ( { "Status2xx" :: NullOrUndefined (NullableInteger) , "Status3xx" :: NullOrUndefined (NullableInteger) , "Status4xx" :: NullOrUndefined (NullableInteger) , "Status5xx" :: NullOrUndefined (NullableInteger) } -> {"Status2xx" :: NullOrUndefined (NullableInteger) , "Status3xx" :: NullOrUndefined (NullableInteger) , "Status4xx" :: NullOrUndefined (NullableInteger) , "Status5xx" :: NullOrUndefined (NullableInteger) } ) -> StatusCodes
newStatusCodes'  customize = (StatusCodes <<< customize) { "Status2xx": (NullOrUndefined Nothing), "Status3xx": (NullOrUndefined Nothing), "Status4xx": (NullOrUndefined Nothing), "Status5xx": (NullOrUndefined Nothing) }



newtype SupportedAddon = SupportedAddon String
derive instance newtypeSupportedAddon :: Newtype SupportedAddon _
derive instance repGenericSupportedAddon :: Generic SupportedAddon _
instance showSupportedAddon :: Show SupportedAddon where show = genericShow
instance decodeSupportedAddon :: Decode SupportedAddon where decode = genericDecode options
instance encodeSupportedAddon :: Encode SupportedAddon where encode = genericEncode options



newtype SupportedAddonList = SupportedAddonList (Array SupportedAddon)
derive instance newtypeSupportedAddonList :: Newtype SupportedAddonList _
derive instance repGenericSupportedAddonList :: Generic SupportedAddonList _
instance showSupportedAddonList :: Show SupportedAddonList where show = genericShow
instance decodeSupportedAddonList :: Decode SupportedAddonList where decode = genericDecode options
instance encodeSupportedAddonList :: Encode SupportedAddonList where encode = genericEncode options



newtype SupportedTier = SupportedTier String
derive instance newtypeSupportedTier :: Newtype SupportedTier _
derive instance repGenericSupportedTier :: Generic SupportedTier _
instance showSupportedTier :: Show SupportedTier where show = genericShow
instance decodeSupportedTier :: Decode SupportedTier where decode = genericDecode options
instance encodeSupportedTier :: Encode SupportedTier where encode = genericEncode options



newtype SupportedTierList = SupportedTierList (Array SupportedTier)
derive instance newtypeSupportedTierList :: Newtype SupportedTierList _
derive instance repGenericSupportedTierList :: Generic SupportedTierList _
instance showSupportedTierList :: Show SupportedTierList where show = genericShow
instance decodeSupportedTierList :: Decode SupportedTierList where decode = genericDecode options
instance encodeSupportedTierList :: Encode SupportedTierList where encode = genericEncode options



-- | <p>Swaps the CNAMEs of two environments.</p>
newtype SwapEnvironmentCNAMEsMessage = SwapEnvironmentCNAMEsMessage 
  { "SourceEnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName)
  }
derive instance newtypeSwapEnvironmentCNAMEsMessage :: Newtype SwapEnvironmentCNAMEsMessage _
derive instance repGenericSwapEnvironmentCNAMEsMessage :: Generic SwapEnvironmentCNAMEsMessage _
instance showSwapEnvironmentCNAMEsMessage :: Show SwapEnvironmentCNAMEsMessage where show = genericShow
instance decodeSwapEnvironmentCNAMEsMessage :: Decode SwapEnvironmentCNAMEsMessage where decode = genericDecode options
instance encodeSwapEnvironmentCNAMEsMessage :: Encode SwapEnvironmentCNAMEsMessage where encode = genericEncode options

-- | Constructs SwapEnvironmentCNAMEsMessage from required parameters
newSwapEnvironmentCNAMEsMessage :: SwapEnvironmentCNAMEsMessage
newSwapEnvironmentCNAMEsMessage  = SwapEnvironmentCNAMEsMessage { "DestinationEnvironmentId": (NullOrUndefined Nothing), "DestinationEnvironmentName": (NullOrUndefined Nothing), "SourceEnvironmentId": (NullOrUndefined Nothing), "SourceEnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs SwapEnvironmentCNAMEsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSwapEnvironmentCNAMEsMessage' :: ( { "SourceEnvironmentId" :: NullOrUndefined (EnvironmentId) , "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName) , "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId) , "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName) } -> {"SourceEnvironmentId" :: NullOrUndefined (EnvironmentId) , "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName) , "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId) , "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName) } ) -> SwapEnvironmentCNAMEsMessage
newSwapEnvironmentCNAMEsMessage'  customize = (SwapEnvironmentCNAMEsMessage <<< customize) { "DestinationEnvironmentId": (NullOrUndefined Nothing), "DestinationEnvironmentName": (NullOrUndefined Nothing), "SourceEnvironmentId": (NullOrUndefined Nothing), "SourceEnvironmentName": (NullOrUndefined Nothing) }



-- | <p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>
newtype SystemStatus = SystemStatus 
  { "CPUUtilization" :: NullOrUndefined (CPUUtilization)
  , "LoadAverage" :: NullOrUndefined (LoadAverage)
  }
derive instance newtypeSystemStatus :: Newtype SystemStatus _
derive instance repGenericSystemStatus :: Generic SystemStatus _
instance showSystemStatus :: Show SystemStatus where show = genericShow
instance decodeSystemStatus :: Decode SystemStatus where decode = genericDecode options
instance encodeSystemStatus :: Encode SystemStatus where encode = genericEncode options

-- | Constructs SystemStatus from required parameters
newSystemStatus :: SystemStatus
newSystemStatus  = SystemStatus { "CPUUtilization": (NullOrUndefined Nothing), "LoadAverage": (NullOrUndefined Nothing) }

-- | Constructs SystemStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSystemStatus' :: ( { "CPUUtilization" :: NullOrUndefined (CPUUtilization) , "LoadAverage" :: NullOrUndefined (LoadAverage) } -> {"CPUUtilization" :: NullOrUndefined (CPUUtilization) , "LoadAverage" :: NullOrUndefined (LoadAverage) } ) -> SystemStatus
newSystemStatus'  customize = (SystemStatus <<< customize) { "CPUUtilization": (NullOrUndefined Nothing), "LoadAverage": (NullOrUndefined Nothing) }



-- | <p>Describes a tag applied to a resource in an environment.</p>
newtype Tag = Tag 
  { "Key" :: NullOrUndefined (TagKey)
  , "Value" :: NullOrUndefined (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: NullOrUndefined (TagKey) , "Value" :: NullOrUndefined (TagValue) } -> {"Key" :: NullOrUndefined (TagKey) , "Value" :: NullOrUndefined (TagValue) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Tags = Tags (Array Tag)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



newtype TerminateEnvForce = TerminateEnvForce Boolean
derive instance newtypeTerminateEnvForce :: Newtype TerminateEnvForce _
derive instance repGenericTerminateEnvForce :: Generic TerminateEnvForce _
instance showTerminateEnvForce :: Show TerminateEnvForce where show = genericShow
instance decodeTerminateEnvForce :: Decode TerminateEnvForce where decode = genericDecode options
instance encodeTerminateEnvForce :: Encode TerminateEnvForce where encode = genericEncode options



-- | <p>Request to terminate an environment.</p>
newtype TerminateEnvironmentMessage = TerminateEnvironmentMessage 
  { "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources)
  , "ForceTerminate" :: NullOrUndefined (ForceTerminate)
  }
derive instance newtypeTerminateEnvironmentMessage :: Newtype TerminateEnvironmentMessage _
derive instance repGenericTerminateEnvironmentMessage :: Generic TerminateEnvironmentMessage _
instance showTerminateEnvironmentMessage :: Show TerminateEnvironmentMessage where show = genericShow
instance decodeTerminateEnvironmentMessage :: Decode TerminateEnvironmentMessage where decode = genericDecode options
instance encodeTerminateEnvironmentMessage :: Encode TerminateEnvironmentMessage where encode = genericEncode options

-- | Constructs TerminateEnvironmentMessage from required parameters
newTerminateEnvironmentMessage :: TerminateEnvironmentMessage
newTerminateEnvironmentMessage  = TerminateEnvironmentMessage { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "ForceTerminate": (NullOrUndefined Nothing), "TerminateResources": (NullOrUndefined Nothing) }

-- | Constructs TerminateEnvironmentMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminateEnvironmentMessage' :: ( { "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources) , "ForceTerminate" :: NullOrUndefined (ForceTerminate) } -> {"EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources) , "ForceTerminate" :: NullOrUndefined (ForceTerminate) } ) -> TerminateEnvironmentMessage
newTerminateEnvironmentMessage'  customize = (TerminateEnvironmentMessage <<< customize) { "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "ForceTerminate": (NullOrUndefined Nothing), "TerminateResources": (NullOrUndefined Nothing) }



newtype TerminateEnvironmentResources = TerminateEnvironmentResources Boolean
derive instance newtypeTerminateEnvironmentResources :: Newtype TerminateEnvironmentResources _
derive instance repGenericTerminateEnvironmentResources :: Generic TerminateEnvironmentResources _
instance showTerminateEnvironmentResources :: Show TerminateEnvironmentResources where show = genericShow
instance decodeTerminateEnvironmentResources :: Decode TerminateEnvironmentResources where decode = genericDecode options
instance encodeTerminateEnvironmentResources :: Encode TerminateEnvironmentResources where encode = genericEncode options



newtype TimeFilterEnd = TimeFilterEnd Types.Timestamp
derive instance newtypeTimeFilterEnd :: Newtype TimeFilterEnd _
derive instance repGenericTimeFilterEnd :: Generic TimeFilterEnd _
instance showTimeFilterEnd :: Show TimeFilterEnd where show = genericShow
instance decodeTimeFilterEnd :: Decode TimeFilterEnd where decode = genericDecode options
instance encodeTimeFilterEnd :: Encode TimeFilterEnd where encode = genericEncode options



newtype TimeFilterStart = TimeFilterStart Types.Timestamp
derive instance newtypeTimeFilterStart :: Newtype TimeFilterStart _
derive instance repGenericTimeFilterStart :: Generic TimeFilterStart _
instance showTimeFilterStart :: Show TimeFilterStart where show = genericShow
instance decodeTimeFilterStart :: Decode TimeFilterStart where decode = genericDecode options
instance encodeTimeFilterStart :: Encode TimeFilterStart where encode = genericEncode options



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where show = genericShow
instance decodeToken :: Decode Token where decode = genericDecode options
instance encodeToken :: Encode Token where encode = genericEncode options



-- | <p>The specified account has reached its limit of application versions.</p>
newtype TooManyApplicationVersionsException = TooManyApplicationVersionsException Types.NoArguments
derive instance newtypeTooManyApplicationVersionsException :: Newtype TooManyApplicationVersionsException _
derive instance repGenericTooManyApplicationVersionsException :: Generic TooManyApplicationVersionsException _
instance showTooManyApplicationVersionsException :: Show TooManyApplicationVersionsException where show = genericShow
instance decodeTooManyApplicationVersionsException :: Decode TooManyApplicationVersionsException where decode = genericDecode options
instance encodeTooManyApplicationVersionsException :: Encode TooManyApplicationVersionsException where encode = genericEncode options



-- | <p>The specified account has reached its limit of applications.</p>
newtype TooManyApplicationsException = TooManyApplicationsException Types.NoArguments
derive instance newtypeTooManyApplicationsException :: Newtype TooManyApplicationsException _
derive instance repGenericTooManyApplicationsException :: Generic TooManyApplicationsException _
instance showTooManyApplicationsException :: Show TooManyApplicationsException where show = genericShow
instance decodeTooManyApplicationsException :: Decode TooManyApplicationsException where decode = genericDecode options
instance encodeTooManyApplicationsException :: Encode TooManyApplicationsException where encode = genericEncode options



-- | <p>The specified account has reached its limit of Amazon S3 buckets.</p>
newtype TooManyBucketsException = TooManyBucketsException Types.NoArguments
derive instance newtypeTooManyBucketsException :: Newtype TooManyBucketsException _
derive instance repGenericTooManyBucketsException :: Generic TooManyBucketsException _
instance showTooManyBucketsException :: Show TooManyBucketsException where show = genericShow
instance decodeTooManyBucketsException :: Decode TooManyBucketsException where decode = genericDecode options
instance encodeTooManyBucketsException :: Encode TooManyBucketsException where encode = genericEncode options



-- | <p>The specified account has reached its limit of configuration templates.</p>
newtype TooManyConfigurationTemplatesException = TooManyConfigurationTemplatesException Types.NoArguments
derive instance newtypeTooManyConfigurationTemplatesException :: Newtype TooManyConfigurationTemplatesException _
derive instance repGenericTooManyConfigurationTemplatesException :: Generic TooManyConfigurationTemplatesException _
instance showTooManyConfigurationTemplatesException :: Show TooManyConfigurationTemplatesException where show = genericShow
instance decodeTooManyConfigurationTemplatesException :: Decode TooManyConfigurationTemplatesException where decode = genericDecode options
instance encodeTooManyConfigurationTemplatesException :: Encode TooManyConfigurationTemplatesException where encode = genericEncode options



-- | <p>The specified account has reached its limit of environments.</p>
newtype TooManyEnvironmentsException = TooManyEnvironmentsException Types.NoArguments
derive instance newtypeTooManyEnvironmentsException :: Newtype TooManyEnvironmentsException _
derive instance repGenericTooManyEnvironmentsException :: Generic TooManyEnvironmentsException _
instance showTooManyEnvironmentsException :: Show TooManyEnvironmentsException where show = genericShow
instance decodeTooManyEnvironmentsException :: Decode TooManyEnvironmentsException where decode = genericDecode options
instance encodeTooManyEnvironmentsException :: Encode TooManyEnvironmentsException where encode = genericEncode options



-- | <p>You have exceeded the maximum number of allowed platforms associated with the account.</p>
newtype TooManyPlatformsException = TooManyPlatformsException Types.NoArguments
derive instance newtypeTooManyPlatformsException :: Newtype TooManyPlatformsException _
derive instance repGenericTooManyPlatformsException :: Generic TooManyPlatformsException _
instance showTooManyPlatformsException :: Show TooManyPlatformsException where show = genericShow
instance decodeTooManyPlatformsException :: Decode TooManyPlatformsException where decode = genericDecode options
instance encodeTooManyPlatformsException :: Encode TooManyPlatformsException where encode = genericEncode options



-- | <p>The number of tags in the resource would exceed the number of tags that each resource can have.</p> <p>To calculate this, the operation considers both the number of tags the resource already has and the tags this operation would add if it succeeded.</p>
newtype TooManyTagsException = TooManyTagsException Types.NoArguments
derive instance newtypeTooManyTagsException :: Newtype TooManyTagsException _
derive instance repGenericTooManyTagsException :: Generic TooManyTagsException _
instance showTooManyTagsException :: Show TooManyTagsException where show = genericShow
instance decodeTooManyTagsException :: Decode TooManyTagsException where decode = genericDecode options
instance encodeTooManyTagsException :: Encode TooManyTagsException where encode = genericEncode options



-- | <p>Describes a trigger.</p>
newtype Trigger = Trigger 
  { "Name" :: NullOrUndefined (ResourceId)
  }
derive instance newtypeTrigger :: Newtype Trigger _
derive instance repGenericTrigger :: Generic Trigger _
instance showTrigger :: Show Trigger where show = genericShow
instance decodeTrigger :: Decode Trigger where decode = genericDecode options
instance encodeTrigger :: Encode Trigger where encode = genericEncode options

-- | Constructs Trigger from required parameters
newTrigger :: Trigger
newTrigger  = Trigger { "Name": (NullOrUndefined Nothing) }

-- | Constructs Trigger's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrigger' :: ( { "Name" :: NullOrUndefined (ResourceId) } -> {"Name" :: NullOrUndefined (ResourceId) } ) -> Trigger
newTrigger'  customize = (Trigger <<< customize) { "Name": (NullOrUndefined Nothing) }



newtype TriggerList = TriggerList (Array Trigger)
derive instance newtypeTriggerList :: Newtype TriggerList _
derive instance repGenericTriggerList :: Generic TriggerList _
instance showTriggerList :: Show TriggerList where show = genericShow
instance decodeTriggerList :: Decode TriggerList where decode = genericDecode options
instance encodeTriggerList :: Encode TriggerList where encode = genericEncode options



-- | <p>Request to update an application.</p>
newtype UpdateApplicationMessage = UpdateApplicationMessage 
  { "ApplicationName" :: (ApplicationName)
  , "Description" :: NullOrUndefined (Description)
  }
derive instance newtypeUpdateApplicationMessage :: Newtype UpdateApplicationMessage _
derive instance repGenericUpdateApplicationMessage :: Generic UpdateApplicationMessage _
instance showUpdateApplicationMessage :: Show UpdateApplicationMessage where show = genericShow
instance decodeUpdateApplicationMessage :: Decode UpdateApplicationMessage where decode = genericDecode options
instance encodeUpdateApplicationMessage :: Encode UpdateApplicationMessage where encode = genericEncode options

-- | Constructs UpdateApplicationMessage from required parameters
newUpdateApplicationMessage :: ApplicationName -> UpdateApplicationMessage
newUpdateApplicationMessage _ApplicationName = UpdateApplicationMessage { "ApplicationName": _ApplicationName, "Description": (NullOrUndefined Nothing) }

-- | Constructs UpdateApplicationMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationMessage' :: ApplicationName -> ( { "ApplicationName" :: (ApplicationName) , "Description" :: NullOrUndefined (Description) } -> {"ApplicationName" :: (ApplicationName) , "Description" :: NullOrUndefined (Description) } ) -> UpdateApplicationMessage
newUpdateApplicationMessage' _ApplicationName customize = (UpdateApplicationMessage <<< customize) { "ApplicationName": _ApplicationName, "Description": (NullOrUndefined Nothing) }



newtype UpdateApplicationResourceLifecycleMessage = UpdateApplicationResourceLifecycleMessage 
  { "ApplicationName" :: (ApplicationName)
  , "ResourceLifecycleConfig" :: (ApplicationResourceLifecycleConfig)
  }
derive instance newtypeUpdateApplicationResourceLifecycleMessage :: Newtype UpdateApplicationResourceLifecycleMessage _
derive instance repGenericUpdateApplicationResourceLifecycleMessage :: Generic UpdateApplicationResourceLifecycleMessage _
instance showUpdateApplicationResourceLifecycleMessage :: Show UpdateApplicationResourceLifecycleMessage where show = genericShow
instance decodeUpdateApplicationResourceLifecycleMessage :: Decode UpdateApplicationResourceLifecycleMessage where decode = genericDecode options
instance encodeUpdateApplicationResourceLifecycleMessage :: Encode UpdateApplicationResourceLifecycleMessage where encode = genericEncode options

-- | Constructs UpdateApplicationResourceLifecycleMessage from required parameters
newUpdateApplicationResourceLifecycleMessage :: ApplicationName -> ApplicationResourceLifecycleConfig -> UpdateApplicationResourceLifecycleMessage
newUpdateApplicationResourceLifecycleMessage _ApplicationName _ResourceLifecycleConfig = UpdateApplicationResourceLifecycleMessage { "ApplicationName": _ApplicationName, "ResourceLifecycleConfig": _ResourceLifecycleConfig }

-- | Constructs UpdateApplicationResourceLifecycleMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationResourceLifecycleMessage' :: ApplicationName -> ApplicationResourceLifecycleConfig -> ( { "ApplicationName" :: (ApplicationName) , "ResourceLifecycleConfig" :: (ApplicationResourceLifecycleConfig) } -> {"ApplicationName" :: (ApplicationName) , "ResourceLifecycleConfig" :: (ApplicationResourceLifecycleConfig) } ) -> UpdateApplicationResourceLifecycleMessage
newUpdateApplicationResourceLifecycleMessage' _ApplicationName _ResourceLifecycleConfig customize = (UpdateApplicationResourceLifecycleMessage <<< customize) { "ApplicationName": _ApplicationName, "ResourceLifecycleConfig": _ResourceLifecycleConfig }



-- | <p/>
newtype UpdateApplicationVersionMessage = UpdateApplicationVersionMessage 
  { "ApplicationName" :: (ApplicationName)
  , "VersionLabel" :: (VersionLabel)
  , "Description" :: NullOrUndefined (Description)
  }
derive instance newtypeUpdateApplicationVersionMessage :: Newtype UpdateApplicationVersionMessage _
derive instance repGenericUpdateApplicationVersionMessage :: Generic UpdateApplicationVersionMessage _
instance showUpdateApplicationVersionMessage :: Show UpdateApplicationVersionMessage where show = genericShow
instance decodeUpdateApplicationVersionMessage :: Decode UpdateApplicationVersionMessage where decode = genericDecode options
instance encodeUpdateApplicationVersionMessage :: Encode UpdateApplicationVersionMessage where encode = genericEncode options

-- | Constructs UpdateApplicationVersionMessage from required parameters
newUpdateApplicationVersionMessage :: ApplicationName -> VersionLabel -> UpdateApplicationVersionMessage
newUpdateApplicationVersionMessage _ApplicationName _VersionLabel = UpdateApplicationVersionMessage { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "Description": (NullOrUndefined Nothing) }

-- | Constructs UpdateApplicationVersionMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ( { "ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "Description" :: NullOrUndefined (Description) } -> {"ApplicationName" :: (ApplicationName) , "VersionLabel" :: (VersionLabel) , "Description" :: NullOrUndefined (Description) } ) -> UpdateApplicationVersionMessage
newUpdateApplicationVersionMessage' _ApplicationName _VersionLabel customize = (UpdateApplicationVersionMessage <<< customize) { "ApplicationName": _ApplicationName, "VersionLabel": _VersionLabel, "Description": (NullOrUndefined Nothing) }



-- | <p>The result message containing the options for the specified solution stack.</p>
newtype UpdateConfigurationTemplateMessage = UpdateConfigurationTemplateMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TemplateName" :: (ConfigurationTemplateName)
  , "Description" :: NullOrUndefined (Description)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList)
  }
derive instance newtypeUpdateConfigurationTemplateMessage :: Newtype UpdateConfigurationTemplateMessage _
derive instance repGenericUpdateConfigurationTemplateMessage :: Generic UpdateConfigurationTemplateMessage _
instance showUpdateConfigurationTemplateMessage :: Show UpdateConfigurationTemplateMessage where show = genericShow
instance decodeUpdateConfigurationTemplateMessage :: Decode UpdateConfigurationTemplateMessage where decode = genericDecode options
instance encodeUpdateConfigurationTemplateMessage :: Encode UpdateConfigurationTemplateMessage where encode = genericEncode options

-- | Constructs UpdateConfigurationTemplateMessage from required parameters
newUpdateConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> UpdateConfigurationTemplateMessage
newUpdateConfigurationTemplateMessage _ApplicationName _TemplateName = UpdateConfigurationTemplateMessage { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName, "Description": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing) }

-- | Constructs UpdateConfigurationTemplateMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ( { "ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> {"ApplicationName" :: (ApplicationName) , "TemplateName" :: (ConfigurationTemplateName) , "Description" :: NullOrUndefined (Description) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } ) -> UpdateConfigurationTemplateMessage
newUpdateConfigurationTemplateMessage' _ApplicationName _TemplateName customize = (UpdateConfigurationTemplateMessage <<< customize) { "ApplicationName": _ApplicationName, "TemplateName": _TemplateName, "Description": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing) }



newtype UpdateDate = UpdateDate Types.Timestamp
derive instance newtypeUpdateDate :: Newtype UpdateDate _
derive instance repGenericUpdateDate :: Generic UpdateDate _
instance showUpdateDate :: Show UpdateDate where show = genericShow
instance decodeUpdateDate :: Decode UpdateDate where decode = genericDecode options
instance encodeUpdateDate :: Encode UpdateDate where encode = genericEncode options



-- | <p>Request to update an environment.</p>
newtype UpdateEnvironmentMessage = UpdateEnvironmentMessage 
  { "ApplicationName" :: NullOrUndefined (ApplicationName)
  , "EnvironmentId" :: NullOrUndefined (EnvironmentId)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "GroupName" :: NullOrUndefined (GroupName)
  , "Description" :: NullOrUndefined (Description)
  , "Tier" :: NullOrUndefined (EnvironmentTier)
  , "VersionLabel" :: NullOrUndefined (VersionLabel)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "SolutionStackName" :: NullOrUndefined (SolutionStackName)
  , "PlatformArn" :: NullOrUndefined (PlatformArn)
  , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList)
  , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList)
  }
derive instance newtypeUpdateEnvironmentMessage :: Newtype UpdateEnvironmentMessage _
derive instance repGenericUpdateEnvironmentMessage :: Generic UpdateEnvironmentMessage _
instance showUpdateEnvironmentMessage :: Show UpdateEnvironmentMessage where show = genericShow
instance decodeUpdateEnvironmentMessage :: Decode UpdateEnvironmentMessage where decode = genericDecode options
instance encodeUpdateEnvironmentMessage :: Encode UpdateEnvironmentMessage where encode = genericEncode options

-- | Constructs UpdateEnvironmentMessage from required parameters
newUpdateEnvironmentMessage :: UpdateEnvironmentMessage
newUpdateEnvironmentMessage  = UpdateEnvironmentMessage { "ApplicationName": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }

-- | Constructs UpdateEnvironmentMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEnvironmentMessage' :: ( { "ApplicationName" :: NullOrUndefined (ApplicationName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "GroupName" :: NullOrUndefined (GroupName) , "Description" :: NullOrUndefined (Description) , "Tier" :: NullOrUndefined (EnvironmentTier) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> {"ApplicationName" :: NullOrUndefined (ApplicationName) , "EnvironmentId" :: NullOrUndefined (EnvironmentId) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "GroupName" :: NullOrUndefined (GroupName) , "Description" :: NullOrUndefined (Description) , "Tier" :: NullOrUndefined (EnvironmentTier) , "VersionLabel" :: NullOrUndefined (VersionLabel) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "SolutionStackName" :: NullOrUndefined (SolutionStackName) , "PlatformArn" :: NullOrUndefined (PlatformArn) , "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) , "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } ) -> UpdateEnvironmentMessage
newUpdateEnvironmentMessage'  customize = (UpdateEnvironmentMessage <<< customize) { "ApplicationName": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "EnvironmentId": (NullOrUndefined Nothing), "EnvironmentName": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "OptionSettings": (NullOrUndefined Nothing), "OptionsToRemove": (NullOrUndefined Nothing), "PlatformArn": (NullOrUndefined Nothing), "SolutionStackName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VersionLabel": (NullOrUndefined Nothing) }



newtype UpdateTagsForResourceMessage = UpdateTagsForResourceMessage 
  { "ResourceArn" :: (ResourceArn)
  , "TagsToAdd" :: NullOrUndefined (TagList)
  , "TagsToRemove" :: NullOrUndefined (TagKeyList)
  }
derive instance newtypeUpdateTagsForResourceMessage :: Newtype UpdateTagsForResourceMessage _
derive instance repGenericUpdateTagsForResourceMessage :: Generic UpdateTagsForResourceMessage _
instance showUpdateTagsForResourceMessage :: Show UpdateTagsForResourceMessage where show = genericShow
instance decodeUpdateTagsForResourceMessage :: Decode UpdateTagsForResourceMessage where decode = genericDecode options
instance encodeUpdateTagsForResourceMessage :: Encode UpdateTagsForResourceMessage where encode = genericEncode options

-- | Constructs UpdateTagsForResourceMessage from required parameters
newUpdateTagsForResourceMessage :: ResourceArn -> UpdateTagsForResourceMessage
newUpdateTagsForResourceMessage _ResourceArn = UpdateTagsForResourceMessage { "ResourceArn": _ResourceArn, "TagsToAdd": (NullOrUndefined Nothing), "TagsToRemove": (NullOrUndefined Nothing) }

-- | Constructs UpdateTagsForResourceMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTagsForResourceMessage' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) , "TagsToAdd" :: NullOrUndefined (TagList) , "TagsToRemove" :: NullOrUndefined (TagKeyList) } -> {"ResourceArn" :: (ResourceArn) , "TagsToAdd" :: NullOrUndefined (TagList) , "TagsToRemove" :: NullOrUndefined (TagKeyList) } ) -> UpdateTagsForResourceMessage
newUpdateTagsForResourceMessage' _ResourceArn customize = (UpdateTagsForResourceMessage <<< customize) { "ResourceArn": _ResourceArn, "TagsToAdd": (NullOrUndefined Nothing), "TagsToRemove": (NullOrUndefined Nothing) }



newtype UserDefinedOption = UserDefinedOption Boolean
derive instance newtypeUserDefinedOption :: Newtype UserDefinedOption _
derive instance repGenericUserDefinedOption :: Generic UserDefinedOption _
instance showUserDefinedOption :: Show UserDefinedOption where show = genericShow
instance decodeUserDefinedOption :: Decode UserDefinedOption where decode = genericDecode options
instance encodeUserDefinedOption :: Encode UserDefinedOption where encode = genericEncode options



-- | <p>A list of validation messages for a specified configuration template.</p>
newtype ValidateConfigurationSettingsMessage = ValidateConfigurationSettingsMessage 
  { "ApplicationName" :: (ApplicationName)
  , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName)
  , "EnvironmentName" :: NullOrUndefined (EnvironmentName)
  , "OptionSettings" :: (ConfigurationOptionSettingsList)
  }
derive instance newtypeValidateConfigurationSettingsMessage :: Newtype ValidateConfigurationSettingsMessage _
derive instance repGenericValidateConfigurationSettingsMessage :: Generic ValidateConfigurationSettingsMessage _
instance showValidateConfigurationSettingsMessage :: Show ValidateConfigurationSettingsMessage where show = genericShow
instance decodeValidateConfigurationSettingsMessage :: Decode ValidateConfigurationSettingsMessage where decode = genericDecode options
instance encodeValidateConfigurationSettingsMessage :: Encode ValidateConfigurationSettingsMessage where encode = genericEncode options

-- | Constructs ValidateConfigurationSettingsMessage from required parameters
newValidateConfigurationSettingsMessage :: ApplicationName -> ConfigurationOptionSettingsList -> ValidateConfigurationSettingsMessage
newValidateConfigurationSettingsMessage _ApplicationName _OptionSettings = ValidateConfigurationSettingsMessage { "ApplicationName": _ApplicationName, "OptionSettings": _OptionSettings, "EnvironmentName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }

-- | Constructs ValidateConfigurationSettingsMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidateConfigurationSettingsMessage' :: ApplicationName -> ConfigurationOptionSettingsList -> ( { "ApplicationName" :: (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "OptionSettings" :: (ConfigurationOptionSettingsList) } -> {"ApplicationName" :: (ApplicationName) , "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) , "EnvironmentName" :: NullOrUndefined (EnvironmentName) , "OptionSettings" :: (ConfigurationOptionSettingsList) } ) -> ValidateConfigurationSettingsMessage
newValidateConfigurationSettingsMessage' _ApplicationName _OptionSettings customize = (ValidateConfigurationSettingsMessage <<< customize) { "ApplicationName": _ApplicationName, "OptionSettings": _OptionSettings, "EnvironmentName": (NullOrUndefined Nothing), "TemplateName": (NullOrUndefined Nothing) }



-- | <p>An error or warning for a desired configuration option value.</p>
newtype ValidationMessage = ValidationMessage 
  { "Message" :: NullOrUndefined (ValidationMessageString)
  , "Severity" :: NullOrUndefined (ValidationSeverity)
  , "Namespace" :: NullOrUndefined (OptionNamespace)
  , "OptionName" :: NullOrUndefined (ConfigurationOptionName)
  }
derive instance newtypeValidationMessage :: Newtype ValidationMessage _
derive instance repGenericValidationMessage :: Generic ValidationMessage _
instance showValidationMessage :: Show ValidationMessage where show = genericShow
instance decodeValidationMessage :: Decode ValidationMessage where decode = genericDecode options
instance encodeValidationMessage :: Encode ValidationMessage where encode = genericEncode options

-- | Constructs ValidationMessage from required parameters
newValidationMessage :: ValidationMessage
newValidationMessage  = ValidationMessage { "Message": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing) }

-- | Constructs ValidationMessage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationMessage' :: ( { "Message" :: NullOrUndefined (ValidationMessageString) , "Severity" :: NullOrUndefined (ValidationSeverity) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) } -> {"Message" :: NullOrUndefined (ValidationMessageString) , "Severity" :: NullOrUndefined (ValidationSeverity) , "Namespace" :: NullOrUndefined (OptionNamespace) , "OptionName" :: NullOrUndefined (ConfigurationOptionName) } ) -> ValidationMessage
newValidationMessage'  customize = (ValidationMessage <<< customize) { "Message": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "OptionName": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing) }



newtype ValidationMessageString = ValidationMessageString String
derive instance newtypeValidationMessageString :: Newtype ValidationMessageString _
derive instance repGenericValidationMessageString :: Generic ValidationMessageString _
instance showValidationMessageString :: Show ValidationMessageString where show = genericShow
instance decodeValidationMessageString :: Decode ValidationMessageString where decode = genericDecode options
instance encodeValidationMessageString :: Encode ValidationMessageString where encode = genericEncode options



newtype ValidationMessagesList = ValidationMessagesList (Array ValidationMessage)
derive instance newtypeValidationMessagesList :: Newtype ValidationMessagesList _
derive instance repGenericValidationMessagesList :: Generic ValidationMessagesList _
instance showValidationMessagesList :: Show ValidationMessagesList where show = genericShow
instance decodeValidationMessagesList :: Decode ValidationMessagesList where decode = genericDecode options
instance encodeValidationMessagesList :: Encode ValidationMessagesList where encode = genericEncode options



newtype ValidationSeverity = ValidationSeverity String
derive instance newtypeValidationSeverity :: Newtype ValidationSeverity _
derive instance repGenericValidationSeverity :: Generic ValidationSeverity _
instance showValidationSeverity :: Show ValidationSeverity where show = genericShow
instance decodeValidationSeverity :: Decode ValidationSeverity where decode = genericDecode options
instance encodeValidationSeverity :: Encode ValidationSeverity where encode = genericEncode options



newtype VersionLabel = VersionLabel String
derive instance newtypeVersionLabel :: Newtype VersionLabel _
derive instance repGenericVersionLabel :: Generic VersionLabel _
instance showVersionLabel :: Show VersionLabel where show = genericShow
instance decodeVersionLabel :: Decode VersionLabel where decode = genericDecode options
instance encodeVersionLabel :: Encode VersionLabel where encode = genericEncode options



newtype VersionLabels = VersionLabels (Array VersionLabel)
derive instance newtypeVersionLabels :: Newtype VersionLabels _
derive instance repGenericVersionLabels :: Generic VersionLabels _
instance showVersionLabels :: Show VersionLabels where show = genericShow
instance decodeVersionLabels :: Decode VersionLabels where decode = genericDecode options
instance encodeVersionLabels :: Encode VersionLabels where encode = genericEncode options



newtype VersionLabelsList = VersionLabelsList (Array VersionLabel)
derive instance newtypeVersionLabelsList :: Newtype VersionLabelsList _
derive instance repGenericVersionLabelsList :: Generic VersionLabelsList _
instance showVersionLabelsList :: Show VersionLabelsList where show = genericShow
instance decodeVersionLabelsList :: Decode VersionLabelsList where decode = genericDecode options
instance encodeVersionLabelsList :: Encode VersionLabelsList where encode = genericEncode options



newtype VirtualizationType = VirtualizationType String
derive instance newtypeVirtualizationType :: Newtype VirtualizationType _
derive instance repGenericVirtualizationType :: Generic VirtualizationType _
instance showVirtualizationType :: Show VirtualizationType where show = genericShow
instance decodeVirtualizationType :: Decode VirtualizationType where decode = genericDecode options
instance encodeVirtualizationType :: Encode VirtualizationType where encode = genericEncode options

