## Module AWS.ElasticBeanstalk.Types

#### `options`

``` purescript
options :: Options
```

#### `ARN`

``` purescript
newtype ARN
  = ARN String
```

##### Instances
``` purescript
Newtype ARN _
Generic ARN _
Show ARN
Decode ARN
Encode ARN
```

#### `AbortEnvironmentUpdateMessage`

``` purescript
newtype AbortEnvironmentUpdateMessage
  = AbortEnvironmentUpdateMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }
```

<p/>

##### Instances
``` purescript
Newtype AbortEnvironmentUpdateMessage _
Generic AbortEnvironmentUpdateMessage _
Show AbortEnvironmentUpdateMessage
Decode AbortEnvironmentUpdateMessage
Encode AbortEnvironmentUpdateMessage
```

#### `newAbortEnvironmentUpdateMessage`

``` purescript
newAbortEnvironmentUpdateMessage :: AbortEnvironmentUpdateMessage
```

Constructs AbortEnvironmentUpdateMessage from required parameters

#### `newAbortEnvironmentUpdateMessage'`

``` purescript
newAbortEnvironmentUpdateMessage' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }) -> AbortEnvironmentUpdateMessage
```

Constructs AbortEnvironmentUpdateMessage's fields from required parameters

#### `AbortableOperationInProgress`

``` purescript
newtype AbortableOperationInProgress
  = AbortableOperationInProgress Boolean
```

##### Instances
``` purescript
Newtype AbortableOperationInProgress _
Generic AbortableOperationInProgress _
Show AbortableOperationInProgress
Decode AbortableOperationInProgress
Encode AbortableOperationInProgress
```

#### `ActionHistoryStatus`

``` purescript
newtype ActionHistoryStatus
  = ActionHistoryStatus String
```

##### Instances
``` purescript
Newtype ActionHistoryStatus _
Generic ActionHistoryStatus _
Show ActionHistoryStatus
Decode ActionHistoryStatus
Encode ActionHistoryStatus
```

#### `ActionStatus`

``` purescript
newtype ActionStatus
  = ActionStatus String
```

##### Instances
``` purescript
Newtype ActionStatus _
Generic ActionStatus _
Show ActionStatus
Decode ActionStatus
Encode ActionStatus
```

#### `ActionType`

``` purescript
newtype ActionType
  = ActionType String
```

##### Instances
``` purescript
Newtype ActionType _
Generic ActionType _
Show ActionType
Decode ActionType
Encode ActionType
```

#### `ApplicationDescription`

``` purescript
newtype ApplicationDescription
  = ApplicationDescription { "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Versions" :: Maybe (VersionLabelsList), "ConfigurationTemplates" :: Maybe (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }
```

<p>Describes the properties of an application.</p>

##### Instances
``` purescript
Newtype ApplicationDescription _
Generic ApplicationDescription _
Show ApplicationDescription
Decode ApplicationDescription
Encode ApplicationDescription
```

#### `newApplicationDescription`

``` purescript
newApplicationDescription :: ApplicationDescription
```

Constructs ApplicationDescription from required parameters

#### `newApplicationDescription'`

``` purescript
newApplicationDescription' :: ({ "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Versions" :: Maybe (VersionLabelsList), "ConfigurationTemplates" :: Maybe (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Versions" :: Maybe (VersionLabelsList), "ConfigurationTemplates" :: Maybe (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }) -> ApplicationDescription
```

Constructs ApplicationDescription's fields from required parameters

#### `ApplicationDescriptionList`

``` purescript
newtype ApplicationDescriptionList
  = ApplicationDescriptionList (Array ApplicationDescription)
```

##### Instances
``` purescript
Newtype ApplicationDescriptionList _
Generic ApplicationDescriptionList _
Show ApplicationDescriptionList
Decode ApplicationDescriptionList
Encode ApplicationDescriptionList
```

#### `ApplicationDescriptionMessage`

``` purescript
newtype ApplicationDescriptionMessage
  = ApplicationDescriptionMessage { "Application" :: Maybe (ApplicationDescription) }
```

<p>Result message containing a single description of an application.</p>

##### Instances
``` purescript
Newtype ApplicationDescriptionMessage _
Generic ApplicationDescriptionMessage _
Show ApplicationDescriptionMessage
Decode ApplicationDescriptionMessage
Encode ApplicationDescriptionMessage
```

#### `newApplicationDescriptionMessage`

``` purescript
newApplicationDescriptionMessage :: ApplicationDescriptionMessage
```

Constructs ApplicationDescriptionMessage from required parameters

#### `newApplicationDescriptionMessage'`

``` purescript
newApplicationDescriptionMessage' :: ({ "Application" :: Maybe (ApplicationDescription) } -> { "Application" :: Maybe (ApplicationDescription) }) -> ApplicationDescriptionMessage
```

Constructs ApplicationDescriptionMessage's fields from required parameters

#### `ApplicationDescriptionsMessage`

``` purescript
newtype ApplicationDescriptionsMessage
  = ApplicationDescriptionsMessage { "Applications" :: Maybe (ApplicationDescriptionList) }
```

<p>Result message containing a list of application descriptions.</p>

##### Instances
``` purescript
Newtype ApplicationDescriptionsMessage _
Generic ApplicationDescriptionsMessage _
Show ApplicationDescriptionsMessage
Decode ApplicationDescriptionsMessage
Encode ApplicationDescriptionsMessage
```

#### `newApplicationDescriptionsMessage`

``` purescript
newApplicationDescriptionsMessage :: ApplicationDescriptionsMessage
```

Constructs ApplicationDescriptionsMessage from required parameters

#### `newApplicationDescriptionsMessage'`

``` purescript
newApplicationDescriptionsMessage' :: ({ "Applications" :: Maybe (ApplicationDescriptionList) } -> { "Applications" :: Maybe (ApplicationDescriptionList) }) -> ApplicationDescriptionsMessage
```

Constructs ApplicationDescriptionsMessage's fields from required parameters

#### `ApplicationMetrics`

``` purescript
newtype ApplicationMetrics
  = ApplicationMetrics { "Duration" :: Maybe (NullableInteger), "RequestCount" :: Maybe (RequestCount), "StatusCodes" :: Maybe (StatusCodes), "Latency" :: Maybe (Latency) }
```

<p>Application request metrics for an AWS Elastic Beanstalk environment.</p>

##### Instances
``` purescript
Newtype ApplicationMetrics _
Generic ApplicationMetrics _
Show ApplicationMetrics
Decode ApplicationMetrics
Encode ApplicationMetrics
```

#### `newApplicationMetrics`

``` purescript
newApplicationMetrics :: ApplicationMetrics
```

Constructs ApplicationMetrics from required parameters

#### `newApplicationMetrics'`

``` purescript
newApplicationMetrics' :: ({ "Duration" :: Maybe (NullableInteger), "RequestCount" :: Maybe (RequestCount), "StatusCodes" :: Maybe (StatusCodes), "Latency" :: Maybe (Latency) } -> { "Duration" :: Maybe (NullableInteger), "RequestCount" :: Maybe (RequestCount), "StatusCodes" :: Maybe (StatusCodes), "Latency" :: Maybe (Latency) }) -> ApplicationMetrics
```

Constructs ApplicationMetrics's fields from required parameters

#### `ApplicationName`

``` purescript
newtype ApplicationName
  = ApplicationName String
```

##### Instances
``` purescript
Newtype ApplicationName _
Generic ApplicationName _
Show ApplicationName
Decode ApplicationName
Encode ApplicationName
```

#### `ApplicationNamesList`

``` purescript
newtype ApplicationNamesList
  = ApplicationNamesList (Array ApplicationName)
```

##### Instances
``` purescript
Newtype ApplicationNamesList _
Generic ApplicationNamesList _
Show ApplicationNamesList
Decode ApplicationNamesList
Encode ApplicationNamesList
```

#### `ApplicationResourceLifecycleConfig`

``` purescript
newtype ApplicationResourceLifecycleConfig
  = ApplicationResourceLifecycleConfig { "ServiceRole" :: Maybe (String), "VersionLifecycleConfig" :: Maybe (ApplicationVersionLifecycleConfig) }
```

<p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>

##### Instances
``` purescript
Newtype ApplicationResourceLifecycleConfig _
Generic ApplicationResourceLifecycleConfig _
Show ApplicationResourceLifecycleConfig
Decode ApplicationResourceLifecycleConfig
Encode ApplicationResourceLifecycleConfig
```

#### `newApplicationResourceLifecycleConfig`

``` purescript
newApplicationResourceLifecycleConfig :: ApplicationResourceLifecycleConfig
```

Constructs ApplicationResourceLifecycleConfig from required parameters

#### `newApplicationResourceLifecycleConfig'`

``` purescript
newApplicationResourceLifecycleConfig' :: ({ "ServiceRole" :: Maybe (String), "VersionLifecycleConfig" :: Maybe (ApplicationVersionLifecycleConfig) } -> { "ServiceRole" :: Maybe (String), "VersionLifecycleConfig" :: Maybe (ApplicationVersionLifecycleConfig) }) -> ApplicationResourceLifecycleConfig
```

Constructs ApplicationResourceLifecycleConfig's fields from required parameters

#### `ApplicationResourceLifecycleDescriptionMessage`

``` purescript
newtype ApplicationResourceLifecycleDescriptionMessage
  = ApplicationResourceLifecycleDescriptionMessage { "ApplicationName" :: Maybe (ApplicationName), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }
```

##### Instances
``` purescript
Newtype ApplicationResourceLifecycleDescriptionMessage _
Generic ApplicationResourceLifecycleDescriptionMessage _
Show ApplicationResourceLifecycleDescriptionMessage
Decode ApplicationResourceLifecycleDescriptionMessage
Encode ApplicationResourceLifecycleDescriptionMessage
```

#### `newApplicationResourceLifecycleDescriptionMessage`

``` purescript
newApplicationResourceLifecycleDescriptionMessage :: ApplicationResourceLifecycleDescriptionMessage
```

Constructs ApplicationResourceLifecycleDescriptionMessage from required parameters

#### `newApplicationResourceLifecycleDescriptionMessage'`

``` purescript
newApplicationResourceLifecycleDescriptionMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: Maybe (ApplicationName), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }) -> ApplicationResourceLifecycleDescriptionMessage
```

Constructs ApplicationResourceLifecycleDescriptionMessage's fields from required parameters

#### `ApplicationVersionDescription`

``` purescript
newtype ApplicationVersionDescription
  = ApplicationVersionDescription { "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "VersionLabel" :: Maybe (VersionLabel), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "BuildArn" :: Maybe (String), "SourceBundle" :: Maybe (S3Location), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (ApplicationVersionStatus) }
```

<p>Describes the properties of an application version.</p>

##### Instances
``` purescript
Newtype ApplicationVersionDescription _
Generic ApplicationVersionDescription _
Show ApplicationVersionDescription
Decode ApplicationVersionDescription
Encode ApplicationVersionDescription
```

#### `newApplicationVersionDescription`

``` purescript
newApplicationVersionDescription :: ApplicationVersionDescription
```

Constructs ApplicationVersionDescription from required parameters

#### `newApplicationVersionDescription'`

``` purescript
newApplicationVersionDescription' :: ({ "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "VersionLabel" :: Maybe (VersionLabel), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "BuildArn" :: Maybe (String), "SourceBundle" :: Maybe (S3Location), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (ApplicationVersionStatus) } -> { "ApplicationName" :: Maybe (ApplicationName), "Description" :: Maybe (Description), "VersionLabel" :: Maybe (VersionLabel), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "BuildArn" :: Maybe (String), "SourceBundle" :: Maybe (S3Location), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (ApplicationVersionStatus) }) -> ApplicationVersionDescription
```

Constructs ApplicationVersionDescription's fields from required parameters

#### `ApplicationVersionDescriptionList`

``` purescript
newtype ApplicationVersionDescriptionList
  = ApplicationVersionDescriptionList (Array ApplicationVersionDescription)
```

##### Instances
``` purescript
Newtype ApplicationVersionDescriptionList _
Generic ApplicationVersionDescriptionList _
Show ApplicationVersionDescriptionList
Decode ApplicationVersionDescriptionList
Encode ApplicationVersionDescriptionList
```

#### `ApplicationVersionDescriptionMessage`

``` purescript
newtype ApplicationVersionDescriptionMessage
  = ApplicationVersionDescriptionMessage { "ApplicationVersion" :: Maybe (ApplicationVersionDescription) }
```

<p>Result message wrapping a single description of an application version.</p>

##### Instances
``` purescript
Newtype ApplicationVersionDescriptionMessage _
Generic ApplicationVersionDescriptionMessage _
Show ApplicationVersionDescriptionMessage
Decode ApplicationVersionDescriptionMessage
Encode ApplicationVersionDescriptionMessage
```

#### `newApplicationVersionDescriptionMessage`

``` purescript
newApplicationVersionDescriptionMessage :: ApplicationVersionDescriptionMessage
```

Constructs ApplicationVersionDescriptionMessage from required parameters

#### `newApplicationVersionDescriptionMessage'`

``` purescript
newApplicationVersionDescriptionMessage' :: ({ "ApplicationVersion" :: Maybe (ApplicationVersionDescription) } -> { "ApplicationVersion" :: Maybe (ApplicationVersionDescription) }) -> ApplicationVersionDescriptionMessage
```

Constructs ApplicationVersionDescriptionMessage's fields from required parameters

#### `ApplicationVersionDescriptionsMessage`

``` purescript
newtype ApplicationVersionDescriptionsMessage
  = ApplicationVersionDescriptionsMessage { "ApplicationVersions" :: Maybe (ApplicationVersionDescriptionList), "NextToken" :: Maybe (Token) }
```

<p>Result message wrapping a list of application version descriptions.</p>

##### Instances
``` purescript
Newtype ApplicationVersionDescriptionsMessage _
Generic ApplicationVersionDescriptionsMessage _
Show ApplicationVersionDescriptionsMessage
Decode ApplicationVersionDescriptionsMessage
Encode ApplicationVersionDescriptionsMessage
```

#### `newApplicationVersionDescriptionsMessage`

``` purescript
newApplicationVersionDescriptionsMessage :: ApplicationVersionDescriptionsMessage
```

Constructs ApplicationVersionDescriptionsMessage from required parameters

#### `newApplicationVersionDescriptionsMessage'`

``` purescript
newApplicationVersionDescriptionsMessage' :: ({ "ApplicationVersions" :: Maybe (ApplicationVersionDescriptionList), "NextToken" :: Maybe (Token) } -> { "ApplicationVersions" :: Maybe (ApplicationVersionDescriptionList), "NextToken" :: Maybe (Token) }) -> ApplicationVersionDescriptionsMessage
```

Constructs ApplicationVersionDescriptionsMessage's fields from required parameters

#### `ApplicationVersionLifecycleConfig`

``` purescript
newtype ApplicationVersionLifecycleConfig
  = ApplicationVersionLifecycleConfig { "MaxCountRule" :: Maybe (MaxCountRule), "MaxAgeRule" :: Maybe (MaxAgeRule) }
```

<p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>

##### Instances
``` purescript
Newtype ApplicationVersionLifecycleConfig _
Generic ApplicationVersionLifecycleConfig _
Show ApplicationVersionLifecycleConfig
Decode ApplicationVersionLifecycleConfig
Encode ApplicationVersionLifecycleConfig
```

#### `newApplicationVersionLifecycleConfig`

``` purescript
newApplicationVersionLifecycleConfig :: ApplicationVersionLifecycleConfig
```

Constructs ApplicationVersionLifecycleConfig from required parameters

#### `newApplicationVersionLifecycleConfig'`

``` purescript
newApplicationVersionLifecycleConfig' :: ({ "MaxCountRule" :: Maybe (MaxCountRule), "MaxAgeRule" :: Maybe (MaxAgeRule) } -> { "MaxCountRule" :: Maybe (MaxCountRule), "MaxAgeRule" :: Maybe (MaxAgeRule) }) -> ApplicationVersionLifecycleConfig
```

Constructs ApplicationVersionLifecycleConfig's fields from required parameters

#### `ApplicationVersionProccess`

``` purescript
newtype ApplicationVersionProccess
  = ApplicationVersionProccess Boolean
```

##### Instances
``` purescript
Newtype ApplicationVersionProccess _
Generic ApplicationVersionProccess _
Show ApplicationVersionProccess
Decode ApplicationVersionProccess
Encode ApplicationVersionProccess
```

#### `ApplicationVersionStatus`

``` purescript
newtype ApplicationVersionStatus
  = ApplicationVersionStatus String
```

##### Instances
``` purescript
Newtype ApplicationVersionStatus _
Generic ApplicationVersionStatus _
Show ApplicationVersionStatus
Decode ApplicationVersionStatus
Encode ApplicationVersionStatus
```

#### `ApplyEnvironmentManagedActionRequest`

``` purescript
newtype ApplyEnvironmentManagedActionRequest
  = ApplyEnvironmentManagedActionRequest { "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "ActionId" :: String }
```

<p>Request to execute a scheduled managed action immediately.</p>

##### Instances
``` purescript
Newtype ApplyEnvironmentManagedActionRequest _
Generic ApplyEnvironmentManagedActionRequest _
Show ApplyEnvironmentManagedActionRequest
Decode ApplyEnvironmentManagedActionRequest
Encode ApplyEnvironmentManagedActionRequest
```

#### `newApplyEnvironmentManagedActionRequest`

``` purescript
newApplyEnvironmentManagedActionRequest :: String -> ApplyEnvironmentManagedActionRequest
```

Constructs ApplyEnvironmentManagedActionRequest from required parameters

#### `newApplyEnvironmentManagedActionRequest'`

``` purescript
newApplyEnvironmentManagedActionRequest' :: String -> ({ "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "ActionId" :: String } -> { "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "ActionId" :: String }) -> ApplyEnvironmentManagedActionRequest
```

Constructs ApplyEnvironmentManagedActionRequest's fields from required parameters

#### `ApplyEnvironmentManagedActionResult`

``` purescript
newtype ApplyEnvironmentManagedActionResult
  = ApplyEnvironmentManagedActionResult { "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (String) }
```

<p>The result message containing information about the managed action.</p>

##### Instances
``` purescript
Newtype ApplyEnvironmentManagedActionResult _
Generic ApplyEnvironmentManagedActionResult _
Show ApplyEnvironmentManagedActionResult
Decode ApplyEnvironmentManagedActionResult
Encode ApplyEnvironmentManagedActionResult
```

#### `newApplyEnvironmentManagedActionResult`

``` purescript
newApplyEnvironmentManagedActionResult :: ApplyEnvironmentManagedActionResult
```

Constructs ApplyEnvironmentManagedActionResult from required parameters

#### `newApplyEnvironmentManagedActionResult'`

``` purescript
newApplyEnvironmentManagedActionResult' :: ({ "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (String) } -> { "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (String) }) -> ApplyEnvironmentManagedActionResult
```

Constructs ApplyEnvironmentManagedActionResult's fields from required parameters

#### `AutoCreateApplication`

``` purescript
newtype AutoCreateApplication
  = AutoCreateApplication Boolean
```

##### Instances
``` purescript
Newtype AutoCreateApplication _
Generic AutoCreateApplication _
Show AutoCreateApplication
Decode AutoCreateApplication
Encode AutoCreateApplication
```

#### `AutoScalingGroup`

``` purescript
newtype AutoScalingGroup
  = AutoScalingGroup { "Name" :: Maybe (ResourceId) }
```

<p>Describes an Auto Scaling launch configuration.</p>

##### Instances
``` purescript
Newtype AutoScalingGroup _
Generic AutoScalingGroup _
Show AutoScalingGroup
Decode AutoScalingGroup
Encode AutoScalingGroup
```

#### `newAutoScalingGroup`

``` purescript
newAutoScalingGroup :: AutoScalingGroup
```

Constructs AutoScalingGroup from required parameters

#### `newAutoScalingGroup'`

``` purescript
newAutoScalingGroup' :: ({ "Name" :: Maybe (ResourceId) } -> { "Name" :: Maybe (ResourceId) }) -> AutoScalingGroup
```

Constructs AutoScalingGroup's fields from required parameters

#### `AutoScalingGroupList`

``` purescript
newtype AutoScalingGroupList
  = AutoScalingGroupList (Array AutoScalingGroup)
```

##### Instances
``` purescript
Newtype AutoScalingGroupList _
Generic AutoScalingGroupList _
Show AutoScalingGroupList
Decode AutoScalingGroupList
Encode AutoScalingGroupList
```

#### `AvailableSolutionStackDetailsList`

``` purescript
newtype AvailableSolutionStackDetailsList
  = AvailableSolutionStackDetailsList (Array SolutionStackDescription)
```

##### Instances
``` purescript
Newtype AvailableSolutionStackDetailsList _
Generic AvailableSolutionStackDetailsList _
Show AvailableSolutionStackDetailsList
Decode AvailableSolutionStackDetailsList
Encode AvailableSolutionStackDetailsList
```

#### `AvailableSolutionStackNamesList`

``` purescript
newtype AvailableSolutionStackNamesList
  = AvailableSolutionStackNamesList (Array SolutionStackName)
```

##### Instances
``` purescript
Newtype AvailableSolutionStackNamesList _
Generic AvailableSolutionStackNamesList _
Show AvailableSolutionStackNamesList
Decode AvailableSolutionStackNamesList
Encode AvailableSolutionStackNamesList
```

#### `BoxedBoolean`

``` purescript
newtype BoxedBoolean
  = BoxedBoolean Boolean
```

##### Instances
``` purescript
Newtype BoxedBoolean _
Generic BoxedBoolean _
Show BoxedBoolean
Decode BoxedBoolean
Encode BoxedBoolean
```

#### `BoxedInt`

``` purescript
newtype BoxedInt
  = BoxedInt Int
```

##### Instances
``` purescript
Newtype BoxedInt _
Generic BoxedInt _
Show BoxedInt
Decode BoxedInt
Encode BoxedInt
```

#### `BuildConfiguration`

``` purescript
newtype BuildConfiguration
  = BuildConfiguration { "ArtifactName" :: Maybe (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: Maybe (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: Maybe (BoxedInt) }
```

<p>Settings for an AWS CodeBuild build.</p>

##### Instances
``` purescript
Newtype BuildConfiguration _
Generic BuildConfiguration _
Show BuildConfiguration
Decode BuildConfiguration
Encode BuildConfiguration
```

#### `newBuildConfiguration`

``` purescript
newBuildConfiguration :: NonEmptyString -> NonEmptyString -> BuildConfiguration
```

Constructs BuildConfiguration from required parameters

#### `newBuildConfiguration'`

``` purescript
newBuildConfiguration' :: NonEmptyString -> NonEmptyString -> ({ "ArtifactName" :: Maybe (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: Maybe (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: Maybe (BoxedInt) } -> { "ArtifactName" :: Maybe (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: Maybe (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: Maybe (BoxedInt) }) -> BuildConfiguration
```

Constructs BuildConfiguration's fields from required parameters

#### `Builder`

``` purescript
newtype Builder
  = Builder { "ARN" :: Maybe (ARN) }
```

<p>The builder used to build the custom platform.</p>

##### Instances
``` purescript
Newtype Builder _
Generic Builder _
Show Builder
Decode Builder
Encode Builder
```

#### `newBuilder`

``` purescript
newBuilder :: Builder
```

Constructs Builder from required parameters

#### `newBuilder'`

``` purescript
newBuilder' :: ({ "ARN" :: Maybe (ARN) } -> { "ARN" :: Maybe (ARN) }) -> Builder
```

Constructs Builder's fields from required parameters

#### `CPUUtilization`

``` purescript
newtype CPUUtilization
  = CPUUtilization { "User" :: Maybe (NullableDouble), "Nice" :: Maybe (NullableDouble), "System" :: Maybe (NullableDouble), "Idle" :: Maybe (NullableDouble), "IOWait" :: Maybe (NullableDouble), "IRQ" :: Maybe (NullableDouble), "SoftIRQ" :: Maybe (NullableDouble) }
```

<p>CPU utilization metrics for an instance.</p>

##### Instances
``` purescript
Newtype CPUUtilization _
Generic CPUUtilization _
Show CPUUtilization
Decode CPUUtilization
Encode CPUUtilization
```

#### `newCPUUtilization`

``` purescript
newCPUUtilization :: CPUUtilization
```

Constructs CPUUtilization from required parameters

#### `newCPUUtilization'`

``` purescript
newCPUUtilization' :: ({ "User" :: Maybe (NullableDouble), "Nice" :: Maybe (NullableDouble), "System" :: Maybe (NullableDouble), "Idle" :: Maybe (NullableDouble), "IOWait" :: Maybe (NullableDouble), "IRQ" :: Maybe (NullableDouble), "SoftIRQ" :: Maybe (NullableDouble) } -> { "User" :: Maybe (NullableDouble), "Nice" :: Maybe (NullableDouble), "System" :: Maybe (NullableDouble), "Idle" :: Maybe (NullableDouble), "IOWait" :: Maybe (NullableDouble), "IRQ" :: Maybe (NullableDouble), "SoftIRQ" :: Maybe (NullableDouble) }) -> CPUUtilization
```

Constructs CPUUtilization's fields from required parameters

#### `Cause`

``` purescript
newtype Cause
  = Cause String
```

##### Instances
``` purescript
Newtype Cause _
Generic Cause _
Show Cause
Decode Cause
Encode Cause
```

#### `Causes`

``` purescript
newtype Causes
  = Causes (Array Cause)
```

##### Instances
``` purescript
Newtype Causes _
Generic Causes _
Show Causes
Decode Causes
Encode Causes
```

#### `CheckDNSAvailabilityMessage`

``` purescript
newtype CheckDNSAvailabilityMessage
  = CheckDNSAvailabilityMessage { "CNAMEPrefix" :: DNSCnamePrefix }
```

<p>Results message indicating whether a CNAME is available.</p>

##### Instances
``` purescript
Newtype CheckDNSAvailabilityMessage _
Generic CheckDNSAvailabilityMessage _
Show CheckDNSAvailabilityMessage
Decode CheckDNSAvailabilityMessage
Encode CheckDNSAvailabilityMessage
```

#### `newCheckDNSAvailabilityMessage`

``` purescript
newCheckDNSAvailabilityMessage :: DNSCnamePrefix -> CheckDNSAvailabilityMessage
```

Constructs CheckDNSAvailabilityMessage from required parameters

#### `newCheckDNSAvailabilityMessage'`

``` purescript
newCheckDNSAvailabilityMessage' :: DNSCnamePrefix -> ({ "CNAMEPrefix" :: DNSCnamePrefix } -> { "CNAMEPrefix" :: DNSCnamePrefix }) -> CheckDNSAvailabilityMessage
```

Constructs CheckDNSAvailabilityMessage's fields from required parameters

#### `CheckDNSAvailabilityResultMessage`

``` purescript
newtype CheckDNSAvailabilityResultMessage
  = CheckDNSAvailabilityResultMessage { "Available" :: Maybe (CnameAvailability), "FullyQualifiedCNAME" :: Maybe (DNSCname) }
```

<p>Indicates if the specified CNAME is available.</p>

##### Instances
``` purescript
Newtype CheckDNSAvailabilityResultMessage _
Generic CheckDNSAvailabilityResultMessage _
Show CheckDNSAvailabilityResultMessage
Decode CheckDNSAvailabilityResultMessage
Encode CheckDNSAvailabilityResultMessage
```

#### `newCheckDNSAvailabilityResultMessage`

``` purescript
newCheckDNSAvailabilityResultMessage :: CheckDNSAvailabilityResultMessage
```

Constructs CheckDNSAvailabilityResultMessage from required parameters

#### `newCheckDNSAvailabilityResultMessage'`

``` purescript
newCheckDNSAvailabilityResultMessage' :: ({ "Available" :: Maybe (CnameAvailability), "FullyQualifiedCNAME" :: Maybe (DNSCname) } -> { "Available" :: Maybe (CnameAvailability), "FullyQualifiedCNAME" :: Maybe (DNSCname) }) -> CheckDNSAvailabilityResultMessage
```

Constructs CheckDNSAvailabilityResultMessage's fields from required parameters

#### `CnameAvailability`

``` purescript
newtype CnameAvailability
  = CnameAvailability Boolean
```

##### Instances
``` purescript
Newtype CnameAvailability _
Generic CnameAvailability _
Show CnameAvailability
Decode CnameAvailability
Encode CnameAvailability
```

#### `CodeBuildNotInServiceRegionException`

``` purescript
newtype CodeBuildNotInServiceRegionException
  = CodeBuildNotInServiceRegionException NoArguments
```

<p>AWS CodeBuild is not available in the specified region.</p>

##### Instances
``` purescript
Newtype CodeBuildNotInServiceRegionException _
Generic CodeBuildNotInServiceRegionException _
Show CodeBuildNotInServiceRegionException
Decode CodeBuildNotInServiceRegionException
Encode CodeBuildNotInServiceRegionException
```

#### `ComposeEnvironmentsMessage`

``` purescript
newtype ComposeEnvironmentsMessage
  = ComposeEnvironmentsMessage { "ApplicationName" :: Maybe (ApplicationName), "GroupName" :: Maybe (GroupName), "VersionLabels" :: Maybe (VersionLabels) }
```

<p>Request to create or update a group of environments.</p>

##### Instances
``` purescript
Newtype ComposeEnvironmentsMessage _
Generic ComposeEnvironmentsMessage _
Show ComposeEnvironmentsMessage
Decode ComposeEnvironmentsMessage
Encode ComposeEnvironmentsMessage
```

#### `newComposeEnvironmentsMessage`

``` purescript
newComposeEnvironmentsMessage :: ComposeEnvironmentsMessage
```

Constructs ComposeEnvironmentsMessage from required parameters

#### `newComposeEnvironmentsMessage'`

``` purescript
newComposeEnvironmentsMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "GroupName" :: Maybe (GroupName), "VersionLabels" :: Maybe (VersionLabels) } -> { "ApplicationName" :: Maybe (ApplicationName), "GroupName" :: Maybe (GroupName), "VersionLabels" :: Maybe (VersionLabels) }) -> ComposeEnvironmentsMessage
```

Constructs ComposeEnvironmentsMessage's fields from required parameters

#### `ComputeType`

``` purescript
newtype ComputeType
  = ComputeType String
```

##### Instances
``` purescript
Newtype ComputeType _
Generic ComputeType _
Show ComputeType
Decode ComputeType
Encode ComputeType
```

#### `ConfigurationDeploymentStatus`

``` purescript
newtype ConfigurationDeploymentStatus
  = ConfigurationDeploymentStatus String
```

##### Instances
``` purescript
Newtype ConfigurationDeploymentStatus _
Generic ConfigurationDeploymentStatus _
Show ConfigurationDeploymentStatus
Decode ConfigurationDeploymentStatus
Encode ConfigurationDeploymentStatus
```

#### `ConfigurationOptionDefaultValue`

``` purescript
newtype ConfigurationOptionDefaultValue
  = ConfigurationOptionDefaultValue String
```

##### Instances
``` purescript
Newtype ConfigurationOptionDefaultValue _
Generic ConfigurationOptionDefaultValue _
Show ConfigurationOptionDefaultValue
Decode ConfigurationOptionDefaultValue
Encode ConfigurationOptionDefaultValue
```

#### `ConfigurationOptionDescription`

``` purescript
newtype ConfigurationOptionDescription
  = ConfigurationOptionDescription { "Namespace" :: Maybe (OptionNamespace), "Name" :: Maybe (ConfigurationOptionName), "DefaultValue" :: Maybe (ConfigurationOptionDefaultValue), "ChangeSeverity" :: Maybe (ConfigurationOptionSeverity), "UserDefined" :: Maybe (UserDefinedOption), "ValueType" :: Maybe (ConfigurationOptionValueType), "ValueOptions" :: Maybe (ConfigurationOptionPossibleValues), "MinValue" :: Maybe (OptionRestrictionMinValue), "MaxValue" :: Maybe (OptionRestrictionMaxValue), "MaxLength" :: Maybe (OptionRestrictionMaxLength), "Regex" :: Maybe (OptionRestrictionRegex) }
```

<p>Describes the possible values for a configuration option.</p>

##### Instances
``` purescript
Newtype ConfigurationOptionDescription _
Generic ConfigurationOptionDescription _
Show ConfigurationOptionDescription
Decode ConfigurationOptionDescription
Encode ConfigurationOptionDescription
```

#### `newConfigurationOptionDescription`

``` purescript
newConfigurationOptionDescription :: ConfigurationOptionDescription
```

Constructs ConfigurationOptionDescription from required parameters

#### `newConfigurationOptionDescription'`

``` purescript
newConfigurationOptionDescription' :: ({ "Namespace" :: Maybe (OptionNamespace), "Name" :: Maybe (ConfigurationOptionName), "DefaultValue" :: Maybe (ConfigurationOptionDefaultValue), "ChangeSeverity" :: Maybe (ConfigurationOptionSeverity), "UserDefined" :: Maybe (UserDefinedOption), "ValueType" :: Maybe (ConfigurationOptionValueType), "ValueOptions" :: Maybe (ConfigurationOptionPossibleValues), "MinValue" :: Maybe (OptionRestrictionMinValue), "MaxValue" :: Maybe (OptionRestrictionMaxValue), "MaxLength" :: Maybe (OptionRestrictionMaxLength), "Regex" :: Maybe (OptionRestrictionRegex) } -> { "Namespace" :: Maybe (OptionNamespace), "Name" :: Maybe (ConfigurationOptionName), "DefaultValue" :: Maybe (ConfigurationOptionDefaultValue), "ChangeSeverity" :: Maybe (ConfigurationOptionSeverity), "UserDefined" :: Maybe (UserDefinedOption), "ValueType" :: Maybe (ConfigurationOptionValueType), "ValueOptions" :: Maybe (ConfigurationOptionPossibleValues), "MinValue" :: Maybe (OptionRestrictionMinValue), "MaxValue" :: Maybe (OptionRestrictionMaxValue), "MaxLength" :: Maybe (OptionRestrictionMaxLength), "Regex" :: Maybe (OptionRestrictionRegex) }) -> ConfigurationOptionDescription
```

Constructs ConfigurationOptionDescription's fields from required parameters

#### `ConfigurationOptionDescriptionsList`

``` purescript
newtype ConfigurationOptionDescriptionsList
  = ConfigurationOptionDescriptionsList (Array ConfigurationOptionDescription)
```

##### Instances
``` purescript
Newtype ConfigurationOptionDescriptionsList _
Generic ConfigurationOptionDescriptionsList _
Show ConfigurationOptionDescriptionsList
Decode ConfigurationOptionDescriptionsList
Encode ConfigurationOptionDescriptionsList
```

#### `ConfigurationOptionName`

``` purescript
newtype ConfigurationOptionName
  = ConfigurationOptionName String
```

##### Instances
``` purescript
Newtype ConfigurationOptionName _
Generic ConfigurationOptionName _
Show ConfigurationOptionName
Decode ConfigurationOptionName
Encode ConfigurationOptionName
```

#### `ConfigurationOptionPossibleValue`

``` purescript
newtype ConfigurationOptionPossibleValue
  = ConfigurationOptionPossibleValue String
```

##### Instances
``` purescript
Newtype ConfigurationOptionPossibleValue _
Generic ConfigurationOptionPossibleValue _
Show ConfigurationOptionPossibleValue
Decode ConfigurationOptionPossibleValue
Encode ConfigurationOptionPossibleValue
```

#### `ConfigurationOptionPossibleValues`

``` purescript
newtype ConfigurationOptionPossibleValues
  = ConfigurationOptionPossibleValues (Array ConfigurationOptionPossibleValue)
```

##### Instances
``` purescript
Newtype ConfigurationOptionPossibleValues _
Generic ConfigurationOptionPossibleValues _
Show ConfigurationOptionPossibleValues
Decode ConfigurationOptionPossibleValues
Encode ConfigurationOptionPossibleValues
```

#### `ConfigurationOptionSetting`

``` purescript
newtype ConfigurationOptionSetting
  = ConfigurationOptionSetting { "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName), "Value" :: Maybe (ConfigurationOptionValue) }
```

<p> A specification identifying an individual configuration option along with its current value. For a list of possible option values, go to <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>

##### Instances
``` purescript
Newtype ConfigurationOptionSetting _
Generic ConfigurationOptionSetting _
Show ConfigurationOptionSetting
Decode ConfigurationOptionSetting
Encode ConfigurationOptionSetting
```

#### `newConfigurationOptionSetting`

``` purescript
newConfigurationOptionSetting :: ConfigurationOptionSetting
```

Constructs ConfigurationOptionSetting from required parameters

#### `newConfigurationOptionSetting'`

``` purescript
newConfigurationOptionSetting' :: ({ "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName), "Value" :: Maybe (ConfigurationOptionValue) } -> { "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName), "Value" :: Maybe (ConfigurationOptionValue) }) -> ConfigurationOptionSetting
```

Constructs ConfigurationOptionSetting's fields from required parameters

#### `ConfigurationOptionSettingsList`

``` purescript
newtype ConfigurationOptionSettingsList
  = ConfigurationOptionSettingsList (Array ConfigurationOptionSetting)
```

##### Instances
``` purescript
Newtype ConfigurationOptionSettingsList _
Generic ConfigurationOptionSettingsList _
Show ConfigurationOptionSettingsList
Decode ConfigurationOptionSettingsList
Encode ConfigurationOptionSettingsList
```

#### `ConfigurationOptionSeverity`

``` purescript
newtype ConfigurationOptionSeverity
  = ConfigurationOptionSeverity String
```

##### Instances
``` purescript
Newtype ConfigurationOptionSeverity _
Generic ConfigurationOptionSeverity _
Show ConfigurationOptionSeverity
Decode ConfigurationOptionSeverity
Encode ConfigurationOptionSeverity
```

#### `ConfigurationOptionValue`

``` purescript
newtype ConfigurationOptionValue
  = ConfigurationOptionValue String
```

##### Instances
``` purescript
Newtype ConfigurationOptionValue _
Generic ConfigurationOptionValue _
Show ConfigurationOptionValue
Decode ConfigurationOptionValue
Encode ConfigurationOptionValue
```

#### `ConfigurationOptionValueType`

``` purescript
newtype ConfigurationOptionValueType
  = ConfigurationOptionValueType String
```

##### Instances
``` purescript
Newtype ConfigurationOptionValueType _
Generic ConfigurationOptionValueType _
Show ConfigurationOptionValueType
Decode ConfigurationOptionValueType
Encode ConfigurationOptionValueType
```

#### `ConfigurationOptionsDescription`

``` purescript
newtype ConfigurationOptionsDescription
  = ConfigurationOptionsDescription { "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (ConfigurationOptionDescriptionsList) }
```

<p>Describes the settings for a specified configuration set.</p>

##### Instances
``` purescript
Newtype ConfigurationOptionsDescription _
Generic ConfigurationOptionsDescription _
Show ConfigurationOptionsDescription
Decode ConfigurationOptionsDescription
Encode ConfigurationOptionsDescription
```

#### `newConfigurationOptionsDescription`

``` purescript
newConfigurationOptionsDescription :: ConfigurationOptionsDescription
```

Constructs ConfigurationOptionsDescription from required parameters

#### `newConfigurationOptionsDescription'`

``` purescript
newConfigurationOptionsDescription' :: ({ "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (ConfigurationOptionDescriptionsList) } -> { "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (ConfigurationOptionDescriptionsList) }) -> ConfigurationOptionsDescription
```

Constructs ConfigurationOptionsDescription's fields from required parameters

#### `ConfigurationSettingsDescription`

``` purescript
newtype ConfigurationSettingsDescription
  = ConfigurationSettingsDescription { "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EnvironmentName" :: Maybe (EnvironmentName), "DeploymentStatus" :: Maybe (ConfigurationDeploymentStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }
```

<p>Describes the settings for a configuration set.</p>

##### Instances
``` purescript
Newtype ConfigurationSettingsDescription _
Generic ConfigurationSettingsDescription _
Show ConfigurationSettingsDescription
Decode ConfigurationSettingsDescription
Encode ConfigurationSettingsDescription
```

#### `newConfigurationSettingsDescription`

``` purescript
newConfigurationSettingsDescription :: ConfigurationSettingsDescription
```

Constructs ConfigurationSettingsDescription from required parameters

#### `newConfigurationSettingsDescription'`

``` purescript
newConfigurationSettingsDescription' :: ({ "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EnvironmentName" :: Maybe (EnvironmentName), "DeploymentStatus" :: Maybe (ConfigurationDeploymentStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) } -> { "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EnvironmentName" :: Maybe (EnvironmentName), "DeploymentStatus" :: Maybe (ConfigurationDeploymentStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }) -> ConfigurationSettingsDescription
```

Constructs ConfigurationSettingsDescription's fields from required parameters

#### `ConfigurationSettingsDescriptionList`

``` purescript
newtype ConfigurationSettingsDescriptionList
  = ConfigurationSettingsDescriptionList (Array ConfigurationSettingsDescription)
```

##### Instances
``` purescript
Newtype ConfigurationSettingsDescriptionList _
Generic ConfigurationSettingsDescriptionList _
Show ConfigurationSettingsDescriptionList
Decode ConfigurationSettingsDescriptionList
Encode ConfigurationSettingsDescriptionList
```

#### `ConfigurationSettingsDescriptions`

``` purescript
newtype ConfigurationSettingsDescriptions
  = ConfigurationSettingsDescriptions { "ConfigurationSettings" :: Maybe (ConfigurationSettingsDescriptionList) }
```

<p>The results from a request to change the configuration settings of an environment.</p>

##### Instances
``` purescript
Newtype ConfigurationSettingsDescriptions _
Generic ConfigurationSettingsDescriptions _
Show ConfigurationSettingsDescriptions
Decode ConfigurationSettingsDescriptions
Encode ConfigurationSettingsDescriptions
```

#### `newConfigurationSettingsDescriptions`

``` purescript
newConfigurationSettingsDescriptions :: ConfigurationSettingsDescriptions
```

Constructs ConfigurationSettingsDescriptions from required parameters

#### `newConfigurationSettingsDescriptions'`

``` purescript
newConfigurationSettingsDescriptions' :: ({ "ConfigurationSettings" :: Maybe (ConfigurationSettingsDescriptionList) } -> { "ConfigurationSettings" :: Maybe (ConfigurationSettingsDescriptionList) }) -> ConfigurationSettingsDescriptions
```

Constructs ConfigurationSettingsDescriptions's fields from required parameters

#### `ConfigurationSettingsValidationMessages`

``` purescript
newtype ConfigurationSettingsValidationMessages
  = ConfigurationSettingsValidationMessages { "Messages" :: Maybe (ValidationMessagesList) }
```

<p>Provides a list of validation messages.</p>

##### Instances
``` purescript
Newtype ConfigurationSettingsValidationMessages _
Generic ConfigurationSettingsValidationMessages _
Show ConfigurationSettingsValidationMessages
Decode ConfigurationSettingsValidationMessages
Encode ConfigurationSettingsValidationMessages
```

#### `newConfigurationSettingsValidationMessages`

``` purescript
newConfigurationSettingsValidationMessages :: ConfigurationSettingsValidationMessages
```

Constructs ConfigurationSettingsValidationMessages from required parameters

#### `newConfigurationSettingsValidationMessages'`

``` purescript
newConfigurationSettingsValidationMessages' :: ({ "Messages" :: Maybe (ValidationMessagesList) } -> { "Messages" :: Maybe (ValidationMessagesList) }) -> ConfigurationSettingsValidationMessages
```

Constructs ConfigurationSettingsValidationMessages's fields from required parameters

#### `ConfigurationTemplateName`

``` purescript
newtype ConfigurationTemplateName
  = ConfigurationTemplateName String
```

##### Instances
``` purescript
Newtype ConfigurationTemplateName _
Generic ConfigurationTemplateName _
Show ConfigurationTemplateName
Decode ConfigurationTemplateName
Encode ConfigurationTemplateName
```

#### `ConfigurationTemplateNamesList`

``` purescript
newtype ConfigurationTemplateNamesList
  = ConfigurationTemplateNamesList (Array ConfigurationTemplateName)
```

##### Instances
``` purescript
Newtype ConfigurationTemplateNamesList _
Generic ConfigurationTemplateNamesList _
Show ConfigurationTemplateNamesList
Decode ConfigurationTemplateNamesList
Encode ConfigurationTemplateNamesList
```

#### `CreateApplicationMessage`

``` purescript
newtype CreateApplicationMessage
  = CreateApplicationMessage { "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }
```

<p>Request to create an application.</p>

##### Instances
``` purescript
Newtype CreateApplicationMessage _
Generic CreateApplicationMessage _
Show CreateApplicationMessage
Decode CreateApplicationMessage
Encode CreateApplicationMessage
```

#### `newCreateApplicationMessage`

``` purescript
newCreateApplicationMessage :: ApplicationName -> CreateApplicationMessage
```

Constructs CreateApplicationMessage from required parameters

#### `newCreateApplicationMessage'`

``` purescript
newCreateApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description), "ResourceLifecycleConfig" :: Maybe (ApplicationResourceLifecycleConfig) }) -> CreateApplicationMessage
```

Constructs CreateApplicationMessage's fields from required parameters

#### `CreateApplicationVersionMessage`

``` purescript
newtype CreateApplicationVersionMessage
  = CreateApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "SourceBundle" :: Maybe (S3Location), "BuildConfiguration" :: Maybe (BuildConfiguration), "AutoCreateApplication" :: Maybe (AutoCreateApplication), "Process" :: Maybe (ApplicationVersionProccess) }
```

<p/>

##### Instances
``` purescript
Newtype CreateApplicationVersionMessage _
Generic CreateApplicationVersionMessage _
Show CreateApplicationVersionMessage
Decode CreateApplicationVersionMessage
Encode CreateApplicationVersionMessage
```

#### `newCreateApplicationVersionMessage`

``` purescript
newCreateApplicationVersionMessage :: ApplicationName -> VersionLabel -> CreateApplicationVersionMessage
```

Constructs CreateApplicationVersionMessage from required parameters

#### `newCreateApplicationVersionMessage'`

``` purescript
newCreateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "SourceBundle" :: Maybe (S3Location), "BuildConfiguration" :: Maybe (BuildConfiguration), "AutoCreateApplication" :: Maybe (AutoCreateApplication), "Process" :: Maybe (ApplicationVersionProccess) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description), "SourceBuildInformation" :: Maybe (SourceBuildInformation), "SourceBundle" :: Maybe (S3Location), "BuildConfiguration" :: Maybe (BuildConfiguration), "AutoCreateApplication" :: Maybe (AutoCreateApplication), "Process" :: Maybe (ApplicationVersionProccess) }) -> CreateApplicationVersionMessage
```

Constructs CreateApplicationVersionMessage's fields from required parameters

#### `CreateConfigurationTemplateMessage`

``` purescript
newtype CreateConfigurationTemplateMessage
  = CreateConfigurationTemplateMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "SourceConfiguration" :: Maybe (SourceConfiguration), "EnvironmentId" :: Maybe (EnvironmentId), "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }
```

<p>Request to create a configuration template.</p>

##### Instances
``` purescript
Newtype CreateConfigurationTemplateMessage _
Generic CreateConfigurationTemplateMessage _
Show CreateConfigurationTemplateMessage
Decode CreateConfigurationTemplateMessage
Encode CreateConfigurationTemplateMessage
```

#### `newCreateConfigurationTemplateMessage`

``` purescript
newCreateConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> CreateConfigurationTemplateMessage
```

Constructs CreateConfigurationTemplateMessage from required parameters

#### `newCreateConfigurationTemplateMessage'`

``` purescript
newCreateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "SourceConfiguration" :: Maybe (SourceConfiguration), "EnvironmentId" :: Maybe (EnvironmentId), "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "SourceConfiguration" :: Maybe (SourceConfiguration), "EnvironmentId" :: Maybe (EnvironmentId), "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }) -> CreateConfigurationTemplateMessage
```

Constructs CreateConfigurationTemplateMessage's fields from required parameters

#### `CreateEnvironmentMessage`

``` purescript
newtype CreateEnvironmentMessage
  = CreateEnvironmentMessage { "ApplicationName" :: ApplicationName, "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "CNAMEPrefix" :: Maybe (DNSCnamePrefix), "Tier" :: Maybe (EnvironmentTier), "Tags" :: Maybe (Tags), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }
```

<p/>

##### Instances
``` purescript
Newtype CreateEnvironmentMessage _
Generic CreateEnvironmentMessage _
Show CreateEnvironmentMessage
Decode CreateEnvironmentMessage
Encode CreateEnvironmentMessage
```

#### `newCreateEnvironmentMessage`

``` purescript
newCreateEnvironmentMessage :: ApplicationName -> CreateEnvironmentMessage
```

Constructs CreateEnvironmentMessage from required parameters

#### `newCreateEnvironmentMessage'`

``` purescript
newCreateEnvironmentMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "CNAMEPrefix" :: Maybe (DNSCnamePrefix), "Tier" :: Maybe (EnvironmentTier), "Tags" :: Maybe (Tags), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) } -> { "ApplicationName" :: ApplicationName, "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "CNAMEPrefix" :: Maybe (DNSCnamePrefix), "Tier" :: Maybe (EnvironmentTier), "Tags" :: Maybe (Tags), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }) -> CreateEnvironmentMessage
```

Constructs CreateEnvironmentMessage's fields from required parameters

#### `CreatePlatformVersionRequest`

``` purescript
newtype CreatePlatformVersionRequest
  = CreatePlatformVersionRequest { "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }
```

<p>Request to create a new platform version.</p>

##### Instances
``` purescript
Newtype CreatePlatformVersionRequest _
Generic CreatePlatformVersionRequest _
Show CreatePlatformVersionRequest
Decode CreatePlatformVersionRequest
Encode CreatePlatformVersionRequest
```

#### `newCreatePlatformVersionRequest`

``` purescript
newCreatePlatformVersionRequest :: S3Location -> PlatformName -> PlatformVersion -> CreatePlatformVersionRequest
```

Constructs CreatePlatformVersionRequest from required parameters

#### `newCreatePlatformVersionRequest'`

``` purescript
newCreatePlatformVersionRequest' :: S3Location -> PlatformName -> PlatformVersion -> ({ "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) } -> { "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList) }) -> CreatePlatformVersionRequest
```

Constructs CreatePlatformVersionRequest's fields from required parameters

#### `CreatePlatformVersionResult`

``` purescript
newtype CreatePlatformVersionResult
  = CreatePlatformVersionResult { "PlatformSummary" :: Maybe (PlatformSummary), "Builder" :: Maybe (Builder) }
```

##### Instances
``` purescript
Newtype CreatePlatformVersionResult _
Generic CreatePlatformVersionResult _
Show CreatePlatformVersionResult
Decode CreatePlatformVersionResult
Encode CreatePlatformVersionResult
```

#### `newCreatePlatformVersionResult`

``` purescript
newCreatePlatformVersionResult :: CreatePlatformVersionResult
```

Constructs CreatePlatformVersionResult from required parameters

#### `newCreatePlatformVersionResult'`

``` purescript
newCreatePlatformVersionResult' :: ({ "PlatformSummary" :: Maybe (PlatformSummary), "Builder" :: Maybe (Builder) } -> { "PlatformSummary" :: Maybe (PlatformSummary), "Builder" :: Maybe (Builder) }) -> CreatePlatformVersionResult
```

Constructs CreatePlatformVersionResult's fields from required parameters

#### `CreateStorageLocationResultMessage`

``` purescript
newtype CreateStorageLocationResultMessage
  = CreateStorageLocationResultMessage { "S3Bucket" :: Maybe (S3Bucket) }
```

<p>Results of a <a>CreateStorageLocationResult</a> call.</p>

##### Instances
``` purescript
Newtype CreateStorageLocationResultMessage _
Generic CreateStorageLocationResultMessage _
Show CreateStorageLocationResultMessage
Decode CreateStorageLocationResultMessage
Encode CreateStorageLocationResultMessage
```

#### `newCreateStorageLocationResultMessage`

``` purescript
newCreateStorageLocationResultMessage :: CreateStorageLocationResultMessage
```

Constructs CreateStorageLocationResultMessage from required parameters

#### `newCreateStorageLocationResultMessage'`

``` purescript
newCreateStorageLocationResultMessage' :: ({ "S3Bucket" :: Maybe (S3Bucket) } -> { "S3Bucket" :: Maybe (S3Bucket) }) -> CreateStorageLocationResultMessage
```

Constructs CreateStorageLocationResultMessage's fields from required parameters

#### `CreationDate`

``` purescript
newtype CreationDate
  = CreationDate Timestamp
```

##### Instances
``` purescript
Newtype CreationDate _
Generic CreationDate _
Show CreationDate
Decode CreationDate
Encode CreationDate
```

#### `CustomAmi`

``` purescript
newtype CustomAmi
  = CustomAmi { "VirtualizationType" :: Maybe (VirtualizationType), "ImageId" :: Maybe (ImageId) }
```

<p>A custom AMI available to platforms.</p>

##### Instances
``` purescript
Newtype CustomAmi _
Generic CustomAmi _
Show CustomAmi
Decode CustomAmi
Encode CustomAmi
```

#### `newCustomAmi`

``` purescript
newCustomAmi :: CustomAmi
```

Constructs CustomAmi from required parameters

#### `newCustomAmi'`

``` purescript
newCustomAmi' :: ({ "VirtualizationType" :: Maybe (VirtualizationType), "ImageId" :: Maybe (ImageId) } -> { "VirtualizationType" :: Maybe (VirtualizationType), "ImageId" :: Maybe (ImageId) }) -> CustomAmi
```

Constructs CustomAmi's fields from required parameters

#### `CustomAmiList`

``` purescript
newtype CustomAmiList
  = CustomAmiList (Array CustomAmi)
```

##### Instances
``` purescript
Newtype CustomAmiList _
Generic CustomAmiList _
Show CustomAmiList
Decode CustomAmiList
Encode CustomAmiList
```

#### `DNSCname`

``` purescript
newtype DNSCname
  = DNSCname String
```

##### Instances
``` purescript
Newtype DNSCname _
Generic DNSCname _
Show DNSCname
Decode DNSCname
Encode DNSCname
```

#### `DNSCnamePrefix`

``` purescript
newtype DNSCnamePrefix
  = DNSCnamePrefix String
```

##### Instances
``` purescript
Newtype DNSCnamePrefix _
Generic DNSCnamePrefix _
Show DNSCnamePrefix
Decode DNSCnamePrefix
Encode DNSCnamePrefix
```

#### `DeleteApplicationMessage`

``` purescript
newtype DeleteApplicationMessage
  = DeleteApplicationMessage { "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: Maybe (TerminateEnvForce) }
```

<p>Request to delete an application.</p>

##### Instances
``` purescript
Newtype DeleteApplicationMessage _
Generic DeleteApplicationMessage _
Show DeleteApplicationMessage
Decode DeleteApplicationMessage
Encode DeleteApplicationMessage
```

#### `newDeleteApplicationMessage`

``` purescript
newDeleteApplicationMessage :: ApplicationName -> DeleteApplicationMessage
```

Constructs DeleteApplicationMessage from required parameters

#### `newDeleteApplicationMessage'`

``` purescript
newDeleteApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: Maybe (TerminateEnvForce) } -> { "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: Maybe (TerminateEnvForce) }) -> DeleteApplicationMessage
```

Constructs DeleteApplicationMessage's fields from required parameters

#### `DeleteApplicationVersionMessage`

``` purescript
newtype DeleteApplicationVersionMessage
  = DeleteApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: Maybe (DeleteSourceBundle) }
```

<p>Request to delete an application version.</p>

##### Instances
``` purescript
Newtype DeleteApplicationVersionMessage _
Generic DeleteApplicationVersionMessage _
Show DeleteApplicationVersionMessage
Decode DeleteApplicationVersionMessage
Encode DeleteApplicationVersionMessage
```

#### `newDeleteApplicationVersionMessage`

``` purescript
newDeleteApplicationVersionMessage :: ApplicationName -> VersionLabel -> DeleteApplicationVersionMessage
```

Constructs DeleteApplicationVersionMessage from required parameters

#### `newDeleteApplicationVersionMessage'`

``` purescript
newDeleteApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: Maybe (DeleteSourceBundle) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: Maybe (DeleteSourceBundle) }) -> DeleteApplicationVersionMessage
```

Constructs DeleteApplicationVersionMessage's fields from required parameters

#### `DeleteConfigurationTemplateMessage`

``` purescript
newtype DeleteConfigurationTemplateMessage
  = DeleteConfigurationTemplateMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName }
```

<p>Request to delete a configuration template.</p>

##### Instances
``` purescript
Newtype DeleteConfigurationTemplateMessage _
Generic DeleteConfigurationTemplateMessage _
Show DeleteConfigurationTemplateMessage
Decode DeleteConfigurationTemplateMessage
Encode DeleteConfigurationTemplateMessage
```

#### `newDeleteConfigurationTemplateMessage`

``` purescript
newDeleteConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> DeleteConfigurationTemplateMessage
```

Constructs DeleteConfigurationTemplateMessage from required parameters

#### `newDeleteConfigurationTemplateMessage'`

``` purescript
newDeleteConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName }) -> DeleteConfigurationTemplateMessage
```

Constructs DeleteConfigurationTemplateMessage's fields from required parameters

#### `DeleteEnvironmentConfigurationMessage`

``` purescript
newtype DeleteEnvironmentConfigurationMessage
  = DeleteEnvironmentConfigurationMessage { "ApplicationName" :: ApplicationName, "EnvironmentName" :: EnvironmentName }
```

<p>Request to delete a draft environment configuration.</p>

##### Instances
``` purescript
Newtype DeleteEnvironmentConfigurationMessage _
Generic DeleteEnvironmentConfigurationMessage _
Show DeleteEnvironmentConfigurationMessage
Decode DeleteEnvironmentConfigurationMessage
Encode DeleteEnvironmentConfigurationMessage
```

#### `newDeleteEnvironmentConfigurationMessage`

``` purescript
newDeleteEnvironmentConfigurationMessage :: ApplicationName -> EnvironmentName -> DeleteEnvironmentConfigurationMessage
```

Constructs DeleteEnvironmentConfigurationMessage from required parameters

#### `newDeleteEnvironmentConfigurationMessage'`

``` purescript
newDeleteEnvironmentConfigurationMessage' :: ApplicationName -> EnvironmentName -> ({ "ApplicationName" :: ApplicationName, "EnvironmentName" :: EnvironmentName } -> { "ApplicationName" :: ApplicationName, "EnvironmentName" :: EnvironmentName }) -> DeleteEnvironmentConfigurationMessage
```

Constructs DeleteEnvironmentConfigurationMessage's fields from required parameters

#### `DeletePlatformVersionRequest`

``` purescript
newtype DeletePlatformVersionRequest
  = DeletePlatformVersionRequest { "PlatformArn" :: Maybe (PlatformArn) }
```

##### Instances
``` purescript
Newtype DeletePlatformVersionRequest _
Generic DeletePlatformVersionRequest _
Show DeletePlatformVersionRequest
Decode DeletePlatformVersionRequest
Encode DeletePlatformVersionRequest
```

#### `newDeletePlatformVersionRequest`

``` purescript
newDeletePlatformVersionRequest :: DeletePlatformVersionRequest
```

Constructs DeletePlatformVersionRequest from required parameters

#### `newDeletePlatformVersionRequest'`

``` purescript
newDeletePlatformVersionRequest' :: ({ "PlatformArn" :: Maybe (PlatformArn) } -> { "PlatformArn" :: Maybe (PlatformArn) }) -> DeletePlatformVersionRequest
```

Constructs DeletePlatformVersionRequest's fields from required parameters

#### `DeletePlatformVersionResult`

``` purescript
newtype DeletePlatformVersionResult
  = DeletePlatformVersionResult { "PlatformSummary" :: Maybe (PlatformSummary) }
```

##### Instances
``` purescript
Newtype DeletePlatformVersionResult _
Generic DeletePlatformVersionResult _
Show DeletePlatformVersionResult
Decode DeletePlatformVersionResult
Encode DeletePlatformVersionResult
```

#### `newDeletePlatformVersionResult`

``` purescript
newDeletePlatformVersionResult :: DeletePlatformVersionResult
```

Constructs DeletePlatformVersionResult from required parameters

#### `newDeletePlatformVersionResult'`

``` purescript
newDeletePlatformVersionResult' :: ({ "PlatformSummary" :: Maybe (PlatformSummary) } -> { "PlatformSummary" :: Maybe (PlatformSummary) }) -> DeletePlatformVersionResult
```

Constructs DeletePlatformVersionResult's fields from required parameters

#### `DeleteSourceBundle`

``` purescript
newtype DeleteSourceBundle
  = DeleteSourceBundle Boolean
```

##### Instances
``` purescript
Newtype DeleteSourceBundle _
Generic DeleteSourceBundle _
Show DeleteSourceBundle
Decode DeleteSourceBundle
Encode DeleteSourceBundle
```

#### `Deployment`

``` purescript
newtype Deployment
  = Deployment { "VersionLabel" :: Maybe (String), "DeploymentId" :: Maybe (NullableLong), "Status" :: Maybe (String), "DeploymentTime" :: Maybe (DeploymentTimestamp) }
```

<p>Information about an application version deployment.</p>

##### Instances
``` purescript
Newtype Deployment _
Generic Deployment _
Show Deployment
Decode Deployment
Encode Deployment
```

#### `newDeployment`

``` purescript
newDeployment :: Deployment
```

Constructs Deployment from required parameters

#### `newDeployment'`

``` purescript
newDeployment' :: ({ "VersionLabel" :: Maybe (String), "DeploymentId" :: Maybe (NullableLong), "Status" :: Maybe (String), "DeploymentTime" :: Maybe (DeploymentTimestamp) } -> { "VersionLabel" :: Maybe (String), "DeploymentId" :: Maybe (NullableLong), "Status" :: Maybe (String), "DeploymentTime" :: Maybe (DeploymentTimestamp) }) -> Deployment
```

Constructs Deployment's fields from required parameters

#### `DeploymentTimestamp`

``` purescript
newtype DeploymentTimestamp
  = DeploymentTimestamp Timestamp
```

##### Instances
``` purescript
Newtype DeploymentTimestamp _
Generic DeploymentTimestamp _
Show DeploymentTimestamp
Decode DeploymentTimestamp
Encode DeploymentTimestamp
```

#### `DescribeApplicationVersionsMessage`

``` purescript
newtype DescribeApplicationVersionsMessage
  = DescribeApplicationVersionsMessage { "ApplicationName" :: Maybe (ApplicationName), "VersionLabels" :: Maybe (VersionLabelsList), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }
```

<p>Request to describe application versions.</p>

##### Instances
``` purescript
Newtype DescribeApplicationVersionsMessage _
Generic DescribeApplicationVersionsMessage _
Show DescribeApplicationVersionsMessage
Decode DescribeApplicationVersionsMessage
Encode DescribeApplicationVersionsMessage
```

#### `newDescribeApplicationVersionsMessage`

``` purescript
newDescribeApplicationVersionsMessage :: DescribeApplicationVersionsMessage
```

Constructs DescribeApplicationVersionsMessage from required parameters

#### `newDescribeApplicationVersionsMessage'`

``` purescript
newDescribeApplicationVersionsMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "VersionLabels" :: Maybe (VersionLabelsList), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) } -> { "ApplicationName" :: Maybe (ApplicationName), "VersionLabels" :: Maybe (VersionLabelsList), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }) -> DescribeApplicationVersionsMessage
```

Constructs DescribeApplicationVersionsMessage's fields from required parameters

#### `DescribeApplicationsMessage`

``` purescript
newtype DescribeApplicationsMessage
  = DescribeApplicationsMessage { "ApplicationNames" :: Maybe (ApplicationNamesList) }
```

<p>Request to describe one or more applications.</p>

##### Instances
``` purescript
Newtype DescribeApplicationsMessage _
Generic DescribeApplicationsMessage _
Show DescribeApplicationsMessage
Decode DescribeApplicationsMessage
Encode DescribeApplicationsMessage
```

#### `newDescribeApplicationsMessage`

``` purescript
newDescribeApplicationsMessage :: DescribeApplicationsMessage
```

Constructs DescribeApplicationsMessage from required parameters

#### `newDescribeApplicationsMessage'`

``` purescript
newDescribeApplicationsMessage' :: ({ "ApplicationNames" :: Maybe (ApplicationNamesList) } -> { "ApplicationNames" :: Maybe (ApplicationNamesList) }) -> DescribeApplicationsMessage
```

Constructs DescribeApplicationsMessage's fields from required parameters

#### `DescribeConfigurationOptionsMessage`

``` purescript
newtype DescribeConfigurationOptionsMessage
  = DescribeConfigurationOptionsMessage { "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (OptionsSpecifierList) }
```

<p>Result message containing a list of application version descriptions.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationOptionsMessage _
Generic DescribeConfigurationOptionsMessage _
Show DescribeConfigurationOptionsMessage
Decode DescribeConfigurationOptionsMessage
Encode DescribeConfigurationOptionsMessage
```

#### `newDescribeConfigurationOptionsMessage`

``` purescript
newDescribeConfigurationOptionsMessage :: DescribeConfigurationOptionsMessage
```

Constructs DescribeConfigurationOptionsMessage from required parameters

#### `newDescribeConfigurationOptionsMessage'`

``` purescript
newDescribeConfigurationOptionsMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (OptionsSpecifierList) } -> { "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "Options" :: Maybe (OptionsSpecifierList) }) -> DescribeConfigurationOptionsMessage
```

Constructs DescribeConfigurationOptionsMessage's fields from required parameters

#### `DescribeConfigurationSettingsMessage`

``` purescript
newtype DescribeConfigurationSettingsMessage
  = DescribeConfigurationSettingsMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName) }
```

<p>Result message containing all of the configuration settings for a specified solution stack or configuration template.</p>

##### Instances
``` purescript
Newtype DescribeConfigurationSettingsMessage _
Generic DescribeConfigurationSettingsMessage _
Show DescribeConfigurationSettingsMessage
Decode DescribeConfigurationSettingsMessage
Encode DescribeConfigurationSettingsMessage
```

#### `newDescribeConfigurationSettingsMessage`

``` purescript
newDescribeConfigurationSettingsMessage :: ApplicationName -> DescribeConfigurationSettingsMessage
```

Constructs DescribeConfigurationSettingsMessage from required parameters

#### `newDescribeConfigurationSettingsMessage'`

``` purescript
newDescribeConfigurationSettingsMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName) }) -> DescribeConfigurationSettingsMessage
```

Constructs DescribeConfigurationSettingsMessage's fields from required parameters

#### `DescribeEnvironmentHealthRequest`

``` purescript
newtype DescribeEnvironmentHealthRequest
  = DescribeEnvironmentHealthRequest { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (EnvironmentHealthAttributes) }
```

<p>See the example below to learn how to create a request body.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentHealthRequest _
Generic DescribeEnvironmentHealthRequest _
Show DescribeEnvironmentHealthRequest
Decode DescribeEnvironmentHealthRequest
Encode DescribeEnvironmentHealthRequest
```

#### `newDescribeEnvironmentHealthRequest`

``` purescript
newDescribeEnvironmentHealthRequest :: DescribeEnvironmentHealthRequest
```

Constructs DescribeEnvironmentHealthRequest from required parameters

#### `newDescribeEnvironmentHealthRequest'`

``` purescript
newDescribeEnvironmentHealthRequest' :: ({ "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (EnvironmentHealthAttributes) } -> { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (EnvironmentHealthAttributes) }) -> DescribeEnvironmentHealthRequest
```

Constructs DescribeEnvironmentHealthRequest's fields from required parameters

#### `DescribeEnvironmentHealthResult`

``` purescript
newtype DescribeEnvironmentHealthResult
  = DescribeEnvironmentHealthResult { "EnvironmentName" :: Maybe (EnvironmentName), "HealthStatus" :: Maybe (String), "Status" :: Maybe (EnvironmentHealth), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "InstancesHealth" :: Maybe (InstanceHealthSummary), "RefreshedAt" :: Maybe (RefreshedAt) }
```

<p>Health details for an AWS Elastic Beanstalk environment.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentHealthResult _
Generic DescribeEnvironmentHealthResult _
Show DescribeEnvironmentHealthResult
Decode DescribeEnvironmentHealthResult
Encode DescribeEnvironmentHealthResult
```

#### `newDescribeEnvironmentHealthResult`

``` purescript
newDescribeEnvironmentHealthResult :: DescribeEnvironmentHealthResult
```

Constructs DescribeEnvironmentHealthResult from required parameters

#### `newDescribeEnvironmentHealthResult'`

``` purescript
newDescribeEnvironmentHealthResult' :: ({ "EnvironmentName" :: Maybe (EnvironmentName), "HealthStatus" :: Maybe (String), "Status" :: Maybe (EnvironmentHealth), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "InstancesHealth" :: Maybe (InstanceHealthSummary), "RefreshedAt" :: Maybe (RefreshedAt) } -> { "EnvironmentName" :: Maybe (EnvironmentName), "HealthStatus" :: Maybe (String), "Status" :: Maybe (EnvironmentHealth), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "InstancesHealth" :: Maybe (InstanceHealthSummary), "RefreshedAt" :: Maybe (RefreshedAt) }) -> DescribeEnvironmentHealthResult
```

Constructs DescribeEnvironmentHealthResult's fields from required parameters

#### `DescribeEnvironmentManagedActionHistoryRequest`

``` purescript
newtype DescribeEnvironmentManagedActionHistoryRequest
  = DescribeEnvironmentManagedActionHistoryRequest { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "NextToken" :: Maybe (String), "MaxItems" :: Maybe (Int) }
```

<p>Request to list completed and failed managed actions.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentManagedActionHistoryRequest _
Generic DescribeEnvironmentManagedActionHistoryRequest _
Show DescribeEnvironmentManagedActionHistoryRequest
Decode DescribeEnvironmentManagedActionHistoryRequest
Encode DescribeEnvironmentManagedActionHistoryRequest
```

#### `newDescribeEnvironmentManagedActionHistoryRequest`

``` purescript
newDescribeEnvironmentManagedActionHistoryRequest :: DescribeEnvironmentManagedActionHistoryRequest
```

Constructs DescribeEnvironmentManagedActionHistoryRequest from required parameters

#### `newDescribeEnvironmentManagedActionHistoryRequest'`

``` purescript
newDescribeEnvironmentManagedActionHistoryRequest' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "NextToken" :: Maybe (String), "MaxItems" :: Maybe (Int) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "NextToken" :: Maybe (String), "MaxItems" :: Maybe (Int) }) -> DescribeEnvironmentManagedActionHistoryRequest
```

Constructs DescribeEnvironmentManagedActionHistoryRequest's fields from required parameters

#### `DescribeEnvironmentManagedActionHistoryResult`

``` purescript
newtype DescribeEnvironmentManagedActionHistoryResult
  = DescribeEnvironmentManagedActionHistoryResult { "ManagedActionHistoryItems" :: Maybe (ManagedActionHistoryItems), "NextToken" :: Maybe (String) }
```

<p>A result message containing a list of completed and failed managed actions.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentManagedActionHistoryResult _
Generic DescribeEnvironmentManagedActionHistoryResult _
Show DescribeEnvironmentManagedActionHistoryResult
Decode DescribeEnvironmentManagedActionHistoryResult
Encode DescribeEnvironmentManagedActionHistoryResult
```

#### `newDescribeEnvironmentManagedActionHistoryResult`

``` purescript
newDescribeEnvironmentManagedActionHistoryResult :: DescribeEnvironmentManagedActionHistoryResult
```

Constructs DescribeEnvironmentManagedActionHistoryResult from required parameters

#### `newDescribeEnvironmentManagedActionHistoryResult'`

``` purescript
newDescribeEnvironmentManagedActionHistoryResult' :: ({ "ManagedActionHistoryItems" :: Maybe (ManagedActionHistoryItems), "NextToken" :: Maybe (String) } -> { "ManagedActionHistoryItems" :: Maybe (ManagedActionHistoryItems), "NextToken" :: Maybe (String) }) -> DescribeEnvironmentManagedActionHistoryResult
```

Constructs DescribeEnvironmentManagedActionHistoryResult's fields from required parameters

#### `DescribeEnvironmentManagedActionsRequest`

``` purescript
newtype DescribeEnvironmentManagedActionsRequest
  = DescribeEnvironmentManagedActionsRequest { "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "Status" :: Maybe (ActionStatus) }
```

<p>Request to list an environment's upcoming and in-progress managed actions.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentManagedActionsRequest _
Generic DescribeEnvironmentManagedActionsRequest _
Show DescribeEnvironmentManagedActionsRequest
Decode DescribeEnvironmentManagedActionsRequest
Encode DescribeEnvironmentManagedActionsRequest
```

#### `newDescribeEnvironmentManagedActionsRequest`

``` purescript
newDescribeEnvironmentManagedActionsRequest :: DescribeEnvironmentManagedActionsRequest
```

Constructs DescribeEnvironmentManagedActionsRequest from required parameters

#### `newDescribeEnvironmentManagedActionsRequest'`

``` purescript
newDescribeEnvironmentManagedActionsRequest' :: ({ "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "Status" :: Maybe (ActionStatus) } -> { "EnvironmentName" :: Maybe (String), "EnvironmentId" :: Maybe (String), "Status" :: Maybe (ActionStatus) }) -> DescribeEnvironmentManagedActionsRequest
```

Constructs DescribeEnvironmentManagedActionsRequest's fields from required parameters

#### `DescribeEnvironmentManagedActionsResult`

``` purescript
newtype DescribeEnvironmentManagedActionsResult
  = DescribeEnvironmentManagedActionsResult { "ManagedActions" :: Maybe (ManagedActions) }
```

<p>The result message containing a list of managed actions.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentManagedActionsResult _
Generic DescribeEnvironmentManagedActionsResult _
Show DescribeEnvironmentManagedActionsResult
Decode DescribeEnvironmentManagedActionsResult
Encode DescribeEnvironmentManagedActionsResult
```

#### `newDescribeEnvironmentManagedActionsResult`

``` purescript
newDescribeEnvironmentManagedActionsResult :: DescribeEnvironmentManagedActionsResult
```

Constructs DescribeEnvironmentManagedActionsResult from required parameters

#### `newDescribeEnvironmentManagedActionsResult'`

``` purescript
newDescribeEnvironmentManagedActionsResult' :: ({ "ManagedActions" :: Maybe (ManagedActions) } -> { "ManagedActions" :: Maybe (ManagedActions) }) -> DescribeEnvironmentManagedActionsResult
```

Constructs DescribeEnvironmentManagedActionsResult's fields from required parameters

#### `DescribeEnvironmentResourcesMessage`

``` purescript
newtype DescribeEnvironmentResourcesMessage
  = DescribeEnvironmentResourcesMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }
```

<p>Request to describe the resources in an environment.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentResourcesMessage _
Generic DescribeEnvironmentResourcesMessage _
Show DescribeEnvironmentResourcesMessage
Decode DescribeEnvironmentResourcesMessage
Encode DescribeEnvironmentResourcesMessage
```

#### `newDescribeEnvironmentResourcesMessage`

``` purescript
newDescribeEnvironmentResourcesMessage :: DescribeEnvironmentResourcesMessage
```

Constructs DescribeEnvironmentResourcesMessage from required parameters

#### `newDescribeEnvironmentResourcesMessage'`

``` purescript
newDescribeEnvironmentResourcesMessage' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }) -> DescribeEnvironmentResourcesMessage
```

Constructs DescribeEnvironmentResourcesMessage's fields from required parameters

#### `DescribeEnvironmentsMessage`

``` purescript
newtype DescribeEnvironmentsMessage
  = DescribeEnvironmentsMessage { "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "EnvironmentIds" :: Maybe (EnvironmentIdList), "EnvironmentNames" :: Maybe (EnvironmentNamesList), "IncludeDeleted" :: Maybe (IncludeDeleted), "IncludedDeletedBackTo" :: Maybe (IncludeDeletedBackTo), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }
```

<p>Request to describe one or more environments.</p>

##### Instances
``` purescript
Newtype DescribeEnvironmentsMessage _
Generic DescribeEnvironmentsMessage _
Show DescribeEnvironmentsMessage
Decode DescribeEnvironmentsMessage
Encode DescribeEnvironmentsMessage
```

#### `newDescribeEnvironmentsMessage`

``` purescript
newDescribeEnvironmentsMessage :: DescribeEnvironmentsMessage
```

Constructs DescribeEnvironmentsMessage from required parameters

#### `newDescribeEnvironmentsMessage'`

``` purescript
newDescribeEnvironmentsMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "EnvironmentIds" :: Maybe (EnvironmentIdList), "EnvironmentNames" :: Maybe (EnvironmentNamesList), "IncludeDeleted" :: Maybe (IncludeDeleted), "IncludedDeletedBackTo" :: Maybe (IncludeDeletedBackTo), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) } -> { "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "EnvironmentIds" :: Maybe (EnvironmentIdList), "EnvironmentNames" :: Maybe (EnvironmentNamesList), "IncludeDeleted" :: Maybe (IncludeDeleted), "IncludedDeletedBackTo" :: Maybe (IncludeDeletedBackTo), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }) -> DescribeEnvironmentsMessage
```

Constructs DescribeEnvironmentsMessage's fields from required parameters

#### `DescribeEventsMessage`

``` purescript
newtype DescribeEventsMessage
  = DescribeEventsMessage { "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity), "StartTime" :: Maybe (TimeFilterStart), "EndTime" :: Maybe (TimeFilterEnd), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }
```

<p>Request to retrieve a list of events for an environment.</p>

##### Instances
``` purescript
Newtype DescribeEventsMessage _
Generic DescribeEventsMessage _
Show DescribeEventsMessage
Decode DescribeEventsMessage
Encode DescribeEventsMessage
```

#### `newDescribeEventsMessage`

``` purescript
newDescribeEventsMessage :: DescribeEventsMessage
```

Constructs DescribeEventsMessage from required parameters

#### `newDescribeEventsMessage'`

``` purescript
newDescribeEventsMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity), "StartTime" :: Maybe (TimeFilterStart), "EndTime" :: Maybe (TimeFilterEnd), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) } -> { "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity), "StartTime" :: Maybe (TimeFilterStart), "EndTime" :: Maybe (TimeFilterEnd), "MaxRecords" :: Maybe (MaxRecords), "NextToken" :: Maybe (Token) }) -> DescribeEventsMessage
```

Constructs DescribeEventsMessage's fields from required parameters

#### `DescribeInstancesHealthRequest`

``` purescript
newtype DescribeInstancesHealthRequest
  = DescribeInstancesHealthRequest { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (InstancesHealthAttributes), "NextToken" :: Maybe (NextToken) }
```

<p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>

##### Instances
``` purescript
Newtype DescribeInstancesHealthRequest _
Generic DescribeInstancesHealthRequest _
Show DescribeInstancesHealthRequest
Decode DescribeInstancesHealthRequest
Encode DescribeInstancesHealthRequest
```

#### `newDescribeInstancesHealthRequest`

``` purescript
newDescribeInstancesHealthRequest :: DescribeInstancesHealthRequest
```

Constructs DescribeInstancesHealthRequest from required parameters

#### `newDescribeInstancesHealthRequest'`

``` purescript
newDescribeInstancesHealthRequest' :: ({ "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (InstancesHealthAttributes), "NextToken" :: Maybe (NextToken) } -> { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "AttributeNames" :: Maybe (InstancesHealthAttributes), "NextToken" :: Maybe (NextToken) }) -> DescribeInstancesHealthRequest
```

Constructs DescribeInstancesHealthRequest's fields from required parameters

#### `DescribeInstancesHealthResult`

``` purescript
newtype DescribeInstancesHealthResult
  = DescribeInstancesHealthResult { "InstanceHealthList" :: Maybe (InstanceHealthList), "RefreshedAt" :: Maybe (RefreshedAt), "NextToken" :: Maybe (NextToken) }
```

<p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk environment.</p>

##### Instances
``` purescript
Newtype DescribeInstancesHealthResult _
Generic DescribeInstancesHealthResult _
Show DescribeInstancesHealthResult
Decode DescribeInstancesHealthResult
Encode DescribeInstancesHealthResult
```

#### `newDescribeInstancesHealthResult`

``` purescript
newDescribeInstancesHealthResult :: DescribeInstancesHealthResult
```

Constructs DescribeInstancesHealthResult from required parameters

#### `newDescribeInstancesHealthResult'`

``` purescript
newDescribeInstancesHealthResult' :: ({ "InstanceHealthList" :: Maybe (InstanceHealthList), "RefreshedAt" :: Maybe (RefreshedAt), "NextToken" :: Maybe (NextToken) } -> { "InstanceHealthList" :: Maybe (InstanceHealthList), "RefreshedAt" :: Maybe (RefreshedAt), "NextToken" :: Maybe (NextToken) }) -> DescribeInstancesHealthResult
```

Constructs DescribeInstancesHealthResult's fields from required parameters

#### `DescribePlatformVersionRequest`

``` purescript
newtype DescribePlatformVersionRequest
  = DescribePlatformVersionRequest { "PlatformArn" :: Maybe (PlatformArn) }
```

##### Instances
``` purescript
Newtype DescribePlatformVersionRequest _
Generic DescribePlatformVersionRequest _
Show DescribePlatformVersionRequest
Decode DescribePlatformVersionRequest
Encode DescribePlatformVersionRequest
```

#### `newDescribePlatformVersionRequest`

``` purescript
newDescribePlatformVersionRequest :: DescribePlatformVersionRequest
```

Constructs DescribePlatformVersionRequest from required parameters

#### `newDescribePlatformVersionRequest'`

``` purescript
newDescribePlatformVersionRequest' :: ({ "PlatformArn" :: Maybe (PlatformArn) } -> { "PlatformArn" :: Maybe (PlatformArn) }) -> DescribePlatformVersionRequest
```

Constructs DescribePlatformVersionRequest's fields from required parameters

#### `DescribePlatformVersionResult`

``` purescript
newtype DescribePlatformVersionResult
  = DescribePlatformVersionResult { "PlatformDescription" :: Maybe (PlatformDescription) }
```

##### Instances
``` purescript
Newtype DescribePlatformVersionResult _
Generic DescribePlatformVersionResult _
Show DescribePlatformVersionResult
Decode DescribePlatformVersionResult
Encode DescribePlatformVersionResult
```

#### `newDescribePlatformVersionResult`

``` purescript
newDescribePlatformVersionResult :: DescribePlatformVersionResult
```

Constructs DescribePlatformVersionResult from required parameters

#### `newDescribePlatformVersionResult'`

``` purescript
newDescribePlatformVersionResult' :: ({ "PlatformDescription" :: Maybe (PlatformDescription) } -> { "PlatformDescription" :: Maybe (PlatformDescription) }) -> DescribePlatformVersionResult
```

Constructs DescribePlatformVersionResult's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `Ec2InstanceId`

``` purescript
newtype Ec2InstanceId
  = Ec2InstanceId String
```

##### Instances
``` purescript
Newtype Ec2InstanceId _
Generic Ec2InstanceId _
Show Ec2InstanceId
Decode Ec2InstanceId
Encode Ec2InstanceId
```

#### `ElasticBeanstalkServiceException`

``` purescript
newtype ElasticBeanstalkServiceException
  = ElasticBeanstalkServiceException { message :: Maybe (ExceptionMessage) }
```

<p>A generic service exception has occurred.</p>

##### Instances
``` purescript
Newtype ElasticBeanstalkServiceException _
Generic ElasticBeanstalkServiceException _
Show ElasticBeanstalkServiceException
Decode ElasticBeanstalkServiceException
Encode ElasticBeanstalkServiceException
```

#### `newElasticBeanstalkServiceException`

``` purescript
newElasticBeanstalkServiceException :: ElasticBeanstalkServiceException
```

Constructs ElasticBeanstalkServiceException from required parameters

#### `newElasticBeanstalkServiceException'`

``` purescript
newElasticBeanstalkServiceException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> ElasticBeanstalkServiceException
```

Constructs ElasticBeanstalkServiceException's fields from required parameters

#### `EndpointURL`

``` purescript
newtype EndpointURL
  = EndpointURL String
```

##### Instances
``` purescript
Newtype EndpointURL _
Generic EndpointURL _
Show EndpointURL
Decode EndpointURL
Encode EndpointURL
```

#### `EnvironmentArn`

``` purescript
newtype EnvironmentArn
  = EnvironmentArn String
```

##### Instances
``` purescript
Newtype EnvironmentArn _
Generic EnvironmentArn _
Show EnvironmentArn
Decode EnvironmentArn
Encode EnvironmentArn
```

#### `EnvironmentDescription`

``` purescript
newtype EnvironmentDescription
  = EnvironmentDescription { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EndpointURL" :: Maybe (EndpointURL), "CNAME" :: Maybe (DNSCname), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (EnvironmentStatus), "AbortableOperationInProgress" :: Maybe (AbortableOperationInProgress), "Health" :: Maybe (EnvironmentHealth), "HealthStatus" :: Maybe (EnvironmentHealthStatus), "Resources" :: Maybe (EnvironmentResourcesDescription), "Tier" :: Maybe (EnvironmentTier), "EnvironmentLinks" :: Maybe (EnvironmentLinks), "EnvironmentArn" :: Maybe (EnvironmentArn) }
```

<p>Describes the properties of an environment.</p>

##### Instances
``` purescript
Newtype EnvironmentDescription _
Generic EnvironmentDescription _
Show EnvironmentDescription
Decode EnvironmentDescription
Encode EnvironmentDescription
```

#### `newEnvironmentDescription`

``` purescript
newEnvironmentDescription :: EnvironmentDescription
```

Constructs EnvironmentDescription from required parameters

#### `newEnvironmentDescription'`

``` purescript
newEnvironmentDescription' :: ({ "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EndpointURL" :: Maybe (EndpointURL), "CNAME" :: Maybe (DNSCname), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (EnvironmentStatus), "AbortableOperationInProgress" :: Maybe (AbortableOperationInProgress), "Health" :: Maybe (EnvironmentHealth), "HealthStatus" :: Maybe (EnvironmentHealthStatus), "Resources" :: Maybe (EnvironmentResourcesDescription), "Tier" :: Maybe (EnvironmentTier), "EnvironmentLinks" :: Maybe (EnvironmentLinks), "EnvironmentArn" :: Maybe (EnvironmentArn) } -> { "EnvironmentName" :: Maybe (EnvironmentName), "EnvironmentId" :: Maybe (EnvironmentId), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "TemplateName" :: Maybe (ConfigurationTemplateName), "Description" :: Maybe (Description), "EndpointURL" :: Maybe (EndpointURL), "CNAME" :: Maybe (DNSCname), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "Status" :: Maybe (EnvironmentStatus), "AbortableOperationInProgress" :: Maybe (AbortableOperationInProgress), "Health" :: Maybe (EnvironmentHealth), "HealthStatus" :: Maybe (EnvironmentHealthStatus), "Resources" :: Maybe (EnvironmentResourcesDescription), "Tier" :: Maybe (EnvironmentTier), "EnvironmentLinks" :: Maybe (EnvironmentLinks), "EnvironmentArn" :: Maybe (EnvironmentArn) }) -> EnvironmentDescription
```

Constructs EnvironmentDescription's fields from required parameters

#### `EnvironmentDescriptionsList`

``` purescript
newtype EnvironmentDescriptionsList
  = EnvironmentDescriptionsList (Array EnvironmentDescription)
```

##### Instances
``` purescript
Newtype EnvironmentDescriptionsList _
Generic EnvironmentDescriptionsList _
Show EnvironmentDescriptionsList
Decode EnvironmentDescriptionsList
Encode EnvironmentDescriptionsList
```

#### `EnvironmentDescriptionsMessage`

``` purescript
newtype EnvironmentDescriptionsMessage
  = EnvironmentDescriptionsMessage { "Environments" :: Maybe (EnvironmentDescriptionsList), "NextToken" :: Maybe (Token) }
```

<p>Result message containing a list of environment descriptions.</p>

##### Instances
``` purescript
Newtype EnvironmentDescriptionsMessage _
Generic EnvironmentDescriptionsMessage _
Show EnvironmentDescriptionsMessage
Decode EnvironmentDescriptionsMessage
Encode EnvironmentDescriptionsMessage
```

#### `newEnvironmentDescriptionsMessage`

``` purescript
newEnvironmentDescriptionsMessage :: EnvironmentDescriptionsMessage
```

Constructs EnvironmentDescriptionsMessage from required parameters

#### `newEnvironmentDescriptionsMessage'`

``` purescript
newEnvironmentDescriptionsMessage' :: ({ "Environments" :: Maybe (EnvironmentDescriptionsList), "NextToken" :: Maybe (Token) } -> { "Environments" :: Maybe (EnvironmentDescriptionsList), "NextToken" :: Maybe (Token) }) -> EnvironmentDescriptionsMessage
```

Constructs EnvironmentDescriptionsMessage's fields from required parameters

#### `EnvironmentHealth`

``` purescript
newtype EnvironmentHealth
  = EnvironmentHealth String
```

##### Instances
``` purescript
Newtype EnvironmentHealth _
Generic EnvironmentHealth _
Show EnvironmentHealth
Decode EnvironmentHealth
Encode EnvironmentHealth
```

#### `EnvironmentHealthAttribute`

``` purescript
newtype EnvironmentHealthAttribute
  = EnvironmentHealthAttribute String
```

##### Instances
``` purescript
Newtype EnvironmentHealthAttribute _
Generic EnvironmentHealthAttribute _
Show EnvironmentHealthAttribute
Decode EnvironmentHealthAttribute
Encode EnvironmentHealthAttribute
```

#### `EnvironmentHealthAttributes`

``` purescript
newtype EnvironmentHealthAttributes
  = EnvironmentHealthAttributes (Array EnvironmentHealthAttribute)
```

##### Instances
``` purescript
Newtype EnvironmentHealthAttributes _
Generic EnvironmentHealthAttributes _
Show EnvironmentHealthAttributes
Decode EnvironmentHealthAttributes
Encode EnvironmentHealthAttributes
```

#### `EnvironmentHealthStatus`

``` purescript
newtype EnvironmentHealthStatus
  = EnvironmentHealthStatus String
```

##### Instances
``` purescript
Newtype EnvironmentHealthStatus _
Generic EnvironmentHealthStatus _
Show EnvironmentHealthStatus
Decode EnvironmentHealthStatus
Encode EnvironmentHealthStatus
```

#### `EnvironmentId`

``` purescript
newtype EnvironmentId
  = EnvironmentId String
```

##### Instances
``` purescript
Newtype EnvironmentId _
Generic EnvironmentId _
Show EnvironmentId
Decode EnvironmentId
Encode EnvironmentId
```

#### `EnvironmentIdList`

``` purescript
newtype EnvironmentIdList
  = EnvironmentIdList (Array EnvironmentId)
```

##### Instances
``` purescript
Newtype EnvironmentIdList _
Generic EnvironmentIdList _
Show EnvironmentIdList
Decode EnvironmentIdList
Encode EnvironmentIdList
```

#### `EnvironmentInfoDescription`

``` purescript
newtype EnvironmentInfoDescription
  = EnvironmentInfoDescription { "InfoType" :: Maybe (EnvironmentInfoType), "Ec2InstanceId" :: Maybe (Ec2InstanceId), "SampleTimestamp" :: Maybe (SampleTimestamp), "Message" :: Maybe (Message) }
```

<p>The information retrieved from the Amazon EC2 instances.</p>

##### Instances
``` purescript
Newtype EnvironmentInfoDescription _
Generic EnvironmentInfoDescription _
Show EnvironmentInfoDescription
Decode EnvironmentInfoDescription
Encode EnvironmentInfoDescription
```

#### `newEnvironmentInfoDescription`

``` purescript
newEnvironmentInfoDescription :: EnvironmentInfoDescription
```

Constructs EnvironmentInfoDescription from required parameters

#### `newEnvironmentInfoDescription'`

``` purescript
newEnvironmentInfoDescription' :: ({ "InfoType" :: Maybe (EnvironmentInfoType), "Ec2InstanceId" :: Maybe (Ec2InstanceId), "SampleTimestamp" :: Maybe (SampleTimestamp), "Message" :: Maybe (Message) } -> { "InfoType" :: Maybe (EnvironmentInfoType), "Ec2InstanceId" :: Maybe (Ec2InstanceId), "SampleTimestamp" :: Maybe (SampleTimestamp), "Message" :: Maybe (Message) }) -> EnvironmentInfoDescription
```

Constructs EnvironmentInfoDescription's fields from required parameters

#### `EnvironmentInfoDescriptionList`

``` purescript
newtype EnvironmentInfoDescriptionList
  = EnvironmentInfoDescriptionList (Array EnvironmentInfoDescription)
```

##### Instances
``` purescript
Newtype EnvironmentInfoDescriptionList _
Generic EnvironmentInfoDescriptionList _
Show EnvironmentInfoDescriptionList
Decode EnvironmentInfoDescriptionList
Encode EnvironmentInfoDescriptionList
```

#### `EnvironmentInfoType`

``` purescript
newtype EnvironmentInfoType
  = EnvironmentInfoType String
```

##### Instances
``` purescript
Newtype EnvironmentInfoType _
Generic EnvironmentInfoType _
Show EnvironmentInfoType
Decode EnvironmentInfoType
Encode EnvironmentInfoType
```

#### `EnvironmentLink`

``` purescript
newtype EnvironmentLink
  = EnvironmentLink { "LinkName" :: Maybe (String), "EnvironmentName" :: Maybe (String) }
```

<p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>

##### Instances
``` purescript
Newtype EnvironmentLink _
Generic EnvironmentLink _
Show EnvironmentLink
Decode EnvironmentLink
Encode EnvironmentLink
```

#### `newEnvironmentLink`

``` purescript
newEnvironmentLink :: EnvironmentLink
```

Constructs EnvironmentLink from required parameters

#### `newEnvironmentLink'`

``` purescript
newEnvironmentLink' :: ({ "LinkName" :: Maybe (String), "EnvironmentName" :: Maybe (String) } -> { "LinkName" :: Maybe (String), "EnvironmentName" :: Maybe (String) }) -> EnvironmentLink
```

Constructs EnvironmentLink's fields from required parameters

#### `EnvironmentLinks`

``` purescript
newtype EnvironmentLinks
  = EnvironmentLinks (Array EnvironmentLink)
```

##### Instances
``` purescript
Newtype EnvironmentLinks _
Generic EnvironmentLinks _
Show EnvironmentLinks
Decode EnvironmentLinks
Encode EnvironmentLinks
```

#### `EnvironmentName`

``` purescript
newtype EnvironmentName
  = EnvironmentName String
```

##### Instances
``` purescript
Newtype EnvironmentName _
Generic EnvironmentName _
Show EnvironmentName
Decode EnvironmentName
Encode EnvironmentName
```

#### `EnvironmentNamesList`

``` purescript
newtype EnvironmentNamesList
  = EnvironmentNamesList (Array EnvironmentName)
```

##### Instances
``` purescript
Newtype EnvironmentNamesList _
Generic EnvironmentNamesList _
Show EnvironmentNamesList
Decode EnvironmentNamesList
Encode EnvironmentNamesList
```

#### `EnvironmentResourceDescription`

``` purescript
newtype EnvironmentResourceDescription
  = EnvironmentResourceDescription { "EnvironmentName" :: Maybe (EnvironmentName), "AutoScalingGroups" :: Maybe (AutoScalingGroupList), "Instances" :: Maybe (InstanceList), "LaunchConfigurations" :: Maybe (LaunchConfigurationList), "LoadBalancers" :: Maybe (LoadBalancerList), "Triggers" :: Maybe (TriggerList), "Queues" :: Maybe (QueueList) }
```

<p>Describes the AWS resources in use by this environment. This data is live.</p>

##### Instances
``` purescript
Newtype EnvironmentResourceDescription _
Generic EnvironmentResourceDescription _
Show EnvironmentResourceDescription
Decode EnvironmentResourceDescription
Encode EnvironmentResourceDescription
```

#### `newEnvironmentResourceDescription`

``` purescript
newEnvironmentResourceDescription :: EnvironmentResourceDescription
```

Constructs EnvironmentResourceDescription from required parameters

#### `newEnvironmentResourceDescription'`

``` purescript
newEnvironmentResourceDescription' :: ({ "EnvironmentName" :: Maybe (EnvironmentName), "AutoScalingGroups" :: Maybe (AutoScalingGroupList), "Instances" :: Maybe (InstanceList), "LaunchConfigurations" :: Maybe (LaunchConfigurationList), "LoadBalancers" :: Maybe (LoadBalancerList), "Triggers" :: Maybe (TriggerList), "Queues" :: Maybe (QueueList) } -> { "EnvironmentName" :: Maybe (EnvironmentName), "AutoScalingGroups" :: Maybe (AutoScalingGroupList), "Instances" :: Maybe (InstanceList), "LaunchConfigurations" :: Maybe (LaunchConfigurationList), "LoadBalancers" :: Maybe (LoadBalancerList), "Triggers" :: Maybe (TriggerList), "Queues" :: Maybe (QueueList) }) -> EnvironmentResourceDescription
```

Constructs EnvironmentResourceDescription's fields from required parameters

#### `EnvironmentResourceDescriptionsMessage`

``` purescript
newtype EnvironmentResourceDescriptionsMessage
  = EnvironmentResourceDescriptionsMessage { "EnvironmentResources" :: Maybe (EnvironmentResourceDescription) }
```

<p>Result message containing a list of environment resource descriptions.</p>

##### Instances
``` purescript
Newtype EnvironmentResourceDescriptionsMessage _
Generic EnvironmentResourceDescriptionsMessage _
Show EnvironmentResourceDescriptionsMessage
Decode EnvironmentResourceDescriptionsMessage
Encode EnvironmentResourceDescriptionsMessage
```

#### `newEnvironmentResourceDescriptionsMessage`

``` purescript
newEnvironmentResourceDescriptionsMessage :: EnvironmentResourceDescriptionsMessage
```

Constructs EnvironmentResourceDescriptionsMessage from required parameters

#### `newEnvironmentResourceDescriptionsMessage'`

``` purescript
newEnvironmentResourceDescriptionsMessage' :: ({ "EnvironmentResources" :: Maybe (EnvironmentResourceDescription) } -> { "EnvironmentResources" :: Maybe (EnvironmentResourceDescription) }) -> EnvironmentResourceDescriptionsMessage
```

Constructs EnvironmentResourceDescriptionsMessage's fields from required parameters

#### `EnvironmentResourcesDescription`

``` purescript
newtype EnvironmentResourcesDescription
  = EnvironmentResourcesDescription { "LoadBalancer" :: Maybe (LoadBalancerDescription) }
```

<p>Describes the AWS resources in use by this environment. This data is not live data.</p>

##### Instances
``` purescript
Newtype EnvironmentResourcesDescription _
Generic EnvironmentResourcesDescription _
Show EnvironmentResourcesDescription
Decode EnvironmentResourcesDescription
Encode EnvironmentResourcesDescription
```

#### `newEnvironmentResourcesDescription`

``` purescript
newEnvironmentResourcesDescription :: EnvironmentResourcesDescription
```

Constructs EnvironmentResourcesDescription from required parameters

#### `newEnvironmentResourcesDescription'`

``` purescript
newEnvironmentResourcesDescription' :: ({ "LoadBalancer" :: Maybe (LoadBalancerDescription) } -> { "LoadBalancer" :: Maybe (LoadBalancerDescription) }) -> EnvironmentResourcesDescription
```

Constructs EnvironmentResourcesDescription's fields from required parameters

#### `EnvironmentStatus`

``` purescript
newtype EnvironmentStatus
  = EnvironmentStatus String
```

##### Instances
``` purescript
Newtype EnvironmentStatus _
Generic EnvironmentStatus _
Show EnvironmentStatus
Decode EnvironmentStatus
Encode EnvironmentStatus
```

#### `EnvironmentTier`

``` purescript
newtype EnvironmentTier
  = EnvironmentTier { "Name" :: Maybe (String), "Type" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>Describes the properties of an environment tier</p>

##### Instances
``` purescript
Newtype EnvironmentTier _
Generic EnvironmentTier _
Show EnvironmentTier
Decode EnvironmentTier
Encode EnvironmentTier
```

#### `newEnvironmentTier`

``` purescript
newEnvironmentTier :: EnvironmentTier
```

Constructs EnvironmentTier from required parameters

#### `newEnvironmentTier'`

``` purescript
newEnvironmentTier' :: ({ "Name" :: Maybe (String), "Type" :: Maybe (String), "Version" :: Maybe (String) } -> { "Name" :: Maybe (String), "Type" :: Maybe (String), "Version" :: Maybe (String) }) -> EnvironmentTier
```

Constructs EnvironmentTier's fields from required parameters

#### `EventDate`

``` purescript
newtype EventDate
  = EventDate Timestamp
```

##### Instances
``` purescript
Newtype EventDate _
Generic EventDate _
Show EventDate
Decode EventDate
Encode EventDate
```

#### `EventDescription`

``` purescript
newtype EventDescription
  = EventDescription { "EventDate" :: Maybe (EventDate), "Message" :: Maybe (EventMessage), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity) }
```

<p>Describes an event.</p>

##### Instances
``` purescript
Newtype EventDescription _
Generic EventDescription _
Show EventDescription
Decode EventDescription
Encode EventDescription
```

#### `newEventDescription`

``` purescript
newEventDescription :: EventDescription
```

Constructs EventDescription from required parameters

#### `newEventDescription'`

``` purescript
newEventDescription' :: ({ "EventDate" :: Maybe (EventDate), "Message" :: Maybe (EventMessage), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity) } -> { "EventDate" :: Maybe (EventDate), "Message" :: Maybe (EventMessage), "ApplicationName" :: Maybe (ApplicationName), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "PlatformArn" :: Maybe (PlatformArn), "RequestId" :: Maybe (RequestId), "Severity" :: Maybe (EventSeverity) }) -> EventDescription
```

Constructs EventDescription's fields from required parameters

#### `EventDescriptionList`

``` purescript
newtype EventDescriptionList
  = EventDescriptionList (Array EventDescription)
```

##### Instances
``` purescript
Newtype EventDescriptionList _
Generic EventDescriptionList _
Show EventDescriptionList
Decode EventDescriptionList
Encode EventDescriptionList
```

#### `EventDescriptionsMessage`

``` purescript
newtype EventDescriptionsMessage
  = EventDescriptionsMessage { "Events" :: Maybe (EventDescriptionList), "NextToken" :: Maybe (Token) }
```

<p>Result message wrapping a list of event descriptions.</p>

##### Instances
``` purescript
Newtype EventDescriptionsMessage _
Generic EventDescriptionsMessage _
Show EventDescriptionsMessage
Decode EventDescriptionsMessage
Encode EventDescriptionsMessage
```

#### `newEventDescriptionsMessage`

``` purescript
newEventDescriptionsMessage :: EventDescriptionsMessage
```

Constructs EventDescriptionsMessage from required parameters

#### `newEventDescriptionsMessage'`

``` purescript
newEventDescriptionsMessage' :: ({ "Events" :: Maybe (EventDescriptionList), "NextToken" :: Maybe (Token) } -> { "Events" :: Maybe (EventDescriptionList), "NextToken" :: Maybe (Token) }) -> EventDescriptionsMessage
```

Constructs EventDescriptionsMessage's fields from required parameters

#### `EventMessage`

``` purescript
newtype EventMessage
  = EventMessage String
```

##### Instances
``` purescript
Newtype EventMessage _
Generic EventMessage _
Show EventMessage
Decode EventMessage
Encode EventMessage
```

#### `EventSeverity`

``` purescript
newtype EventSeverity
  = EventSeverity String
```

##### Instances
``` purescript
Newtype EventSeverity _
Generic EventSeverity _
Show EventSeverity
Decode EventSeverity
Encode EventSeverity
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `FailureType`

``` purescript
newtype FailureType
  = FailureType String
```

##### Instances
``` purescript
Newtype FailureType _
Generic FailureType _
Show FailureType
Decode FailureType
Encode FailureType
```

#### `FileTypeExtension`

``` purescript
newtype FileTypeExtension
  = FileTypeExtension String
```

##### Instances
``` purescript
Newtype FileTypeExtension _
Generic FileTypeExtension _
Show FileTypeExtension
Decode FileTypeExtension
Encode FileTypeExtension
```

#### `ForceTerminate`

``` purescript
newtype ForceTerminate
  = ForceTerminate Boolean
```

##### Instances
``` purescript
Newtype ForceTerminate _
Generic ForceTerminate _
Show ForceTerminate
Decode ForceTerminate
Encode ForceTerminate
```

#### `GroupName`

``` purescript
newtype GroupName
  = GroupName String
```

##### Instances
``` purescript
Newtype GroupName _
Generic GroupName _
Show GroupName
Decode GroupName
Encode GroupName
```

#### `ImageId`

``` purescript
newtype ImageId
  = ImageId String
```

##### Instances
``` purescript
Newtype ImageId _
Generic ImageId _
Show ImageId
Decode ImageId
Encode ImageId
```

#### `IncludeDeleted`

``` purescript
newtype IncludeDeleted
  = IncludeDeleted Boolean
```

##### Instances
``` purescript
Newtype IncludeDeleted _
Generic IncludeDeleted _
Show IncludeDeleted
Decode IncludeDeleted
Encode IncludeDeleted
```

#### `IncludeDeletedBackTo`

``` purescript
newtype IncludeDeletedBackTo
  = IncludeDeletedBackTo Timestamp
```

##### Instances
``` purescript
Newtype IncludeDeletedBackTo _
Generic IncludeDeletedBackTo _
Show IncludeDeletedBackTo
Decode IncludeDeletedBackTo
Encode IncludeDeletedBackTo
```

#### `Instance`

``` purescript
newtype Instance
  = Instance { "Id" :: Maybe (ResourceId) }
```

<p>The description of an Amazon EC2 instance.</p>

##### Instances
``` purescript
Newtype Instance _
Generic Instance _
Show Instance
Decode Instance
Encode Instance
```

#### `newInstance`

``` purescript
newInstance :: Instance
```

Constructs Instance from required parameters

#### `newInstance'`

``` purescript
newInstance' :: ({ "Id" :: Maybe (ResourceId) } -> { "Id" :: Maybe (ResourceId) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceHealthList`

``` purescript
newtype InstanceHealthList
  = InstanceHealthList (Array SingleInstanceHealth)
```

##### Instances
``` purescript
Newtype InstanceHealthList _
Generic InstanceHealthList _
Show InstanceHealthList
Decode InstanceHealthList
Encode InstanceHealthList
```

#### `InstanceHealthSummary`

``` purescript
newtype InstanceHealthSummary
  = InstanceHealthSummary { "NoData" :: Maybe (NullableInteger), "Unknown" :: Maybe (NullableInteger), "Pending" :: Maybe (NullableInteger), "Ok" :: Maybe (NullableInteger), "Info" :: Maybe (NullableInteger), "Warning" :: Maybe (NullableInteger), "Degraded" :: Maybe (NullableInteger), "Severe" :: Maybe (NullableInteger) }
```

<p>Represents summary information about the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>

##### Instances
``` purescript
Newtype InstanceHealthSummary _
Generic InstanceHealthSummary _
Show InstanceHealthSummary
Decode InstanceHealthSummary
Encode InstanceHealthSummary
```

#### `newInstanceHealthSummary`

``` purescript
newInstanceHealthSummary :: InstanceHealthSummary
```

Constructs InstanceHealthSummary from required parameters

#### `newInstanceHealthSummary'`

``` purescript
newInstanceHealthSummary' :: ({ "NoData" :: Maybe (NullableInteger), "Unknown" :: Maybe (NullableInteger), "Pending" :: Maybe (NullableInteger), "Ok" :: Maybe (NullableInteger), "Info" :: Maybe (NullableInteger), "Warning" :: Maybe (NullableInteger), "Degraded" :: Maybe (NullableInteger), "Severe" :: Maybe (NullableInteger) } -> { "NoData" :: Maybe (NullableInteger), "Unknown" :: Maybe (NullableInteger), "Pending" :: Maybe (NullableInteger), "Ok" :: Maybe (NullableInteger), "Info" :: Maybe (NullableInteger), "Warning" :: Maybe (NullableInteger), "Degraded" :: Maybe (NullableInteger), "Severe" :: Maybe (NullableInteger) }) -> InstanceHealthSummary
```

Constructs InstanceHealthSummary's fields from required parameters

#### `InstanceId`

``` purescript
newtype InstanceId
  = InstanceId String
```

##### Instances
``` purescript
Newtype InstanceId _
Generic InstanceId _
Show InstanceId
Decode InstanceId
Encode InstanceId
```

#### `InstanceList`

``` purescript
newtype InstanceList
  = InstanceList (Array Instance)
```

##### Instances
``` purescript
Newtype InstanceList _
Generic InstanceList _
Show InstanceList
Decode InstanceList
Encode InstanceList
```

#### `InstancesHealthAttribute`

``` purescript
newtype InstancesHealthAttribute
  = InstancesHealthAttribute String
```

##### Instances
``` purescript
Newtype InstancesHealthAttribute _
Generic InstancesHealthAttribute _
Show InstancesHealthAttribute
Decode InstancesHealthAttribute
Encode InstancesHealthAttribute
```

#### `InstancesHealthAttributes`

``` purescript
newtype InstancesHealthAttributes
  = InstancesHealthAttributes (Array InstancesHealthAttribute)
```

##### Instances
``` purescript
Newtype InstancesHealthAttributes _
Generic InstancesHealthAttributes _
Show InstancesHealthAttributes
Decode InstancesHealthAttributes
Encode InstancesHealthAttributes
```

#### `InsufficientPrivilegesException`

``` purescript
newtype InsufficientPrivilegesException
  = InsufficientPrivilegesException NoArguments
```

<p>The specified account does not have sufficient privileges for one of more AWS services.</p>

##### Instances
``` purescript
Newtype InsufficientPrivilegesException _
Generic InsufficientPrivilegesException _
Show InsufficientPrivilegesException
Decode InsufficientPrivilegesException
Encode InsufficientPrivilegesException
```

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException NoArguments
```

<p>One or more input parameters is not valid. Please correct the input parameters and try the operation again.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `Latency`

``` purescript
newtype Latency
  = Latency { "P999" :: Maybe (NullableDouble), "P99" :: Maybe (NullableDouble), "P95" :: Maybe (NullableDouble), "P90" :: Maybe (NullableDouble), "P85" :: Maybe (NullableDouble), "P75" :: Maybe (NullableDouble), "P50" :: Maybe (NullableDouble), "P10" :: Maybe (NullableDouble) }
```

<p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>

##### Instances
``` purescript
Newtype Latency _
Generic Latency _
Show Latency
Decode Latency
Encode Latency
```

#### `newLatency`

``` purescript
newLatency :: Latency
```

Constructs Latency from required parameters

#### `newLatency'`

``` purescript
newLatency' :: ({ "P999" :: Maybe (NullableDouble), "P99" :: Maybe (NullableDouble), "P95" :: Maybe (NullableDouble), "P90" :: Maybe (NullableDouble), "P85" :: Maybe (NullableDouble), "P75" :: Maybe (NullableDouble), "P50" :: Maybe (NullableDouble), "P10" :: Maybe (NullableDouble) } -> { "P999" :: Maybe (NullableDouble), "P99" :: Maybe (NullableDouble), "P95" :: Maybe (NullableDouble), "P90" :: Maybe (NullableDouble), "P85" :: Maybe (NullableDouble), "P75" :: Maybe (NullableDouble), "P50" :: Maybe (NullableDouble), "P10" :: Maybe (NullableDouble) }) -> Latency
```

Constructs Latency's fields from required parameters

#### `LaunchConfiguration`

``` purescript
newtype LaunchConfiguration
  = LaunchConfiguration { "Name" :: Maybe (ResourceId) }
```

<p>Describes an Auto Scaling launch configuration.</p>

##### Instances
``` purescript
Newtype LaunchConfiguration _
Generic LaunchConfiguration _
Show LaunchConfiguration
Decode LaunchConfiguration
Encode LaunchConfiguration
```

#### `newLaunchConfiguration`

``` purescript
newLaunchConfiguration :: LaunchConfiguration
```

Constructs LaunchConfiguration from required parameters

#### `newLaunchConfiguration'`

``` purescript
newLaunchConfiguration' :: ({ "Name" :: Maybe (ResourceId) } -> { "Name" :: Maybe (ResourceId) }) -> LaunchConfiguration
```

Constructs LaunchConfiguration's fields from required parameters

#### `LaunchConfigurationList`

``` purescript
newtype LaunchConfigurationList
  = LaunchConfigurationList (Array LaunchConfiguration)
```

##### Instances
``` purescript
Newtype LaunchConfigurationList _
Generic LaunchConfigurationList _
Show LaunchConfigurationList
Decode LaunchConfigurationList
Encode LaunchConfigurationList
```

#### `LaunchedAt`

``` purescript
newtype LaunchedAt
  = LaunchedAt Timestamp
```

##### Instances
``` purescript
Newtype LaunchedAt _
Generic LaunchedAt _
Show LaunchedAt
Decode LaunchedAt
Encode LaunchedAt
```

#### `ListAvailableSolutionStacksResultMessage`

``` purescript
newtype ListAvailableSolutionStacksResultMessage
  = ListAvailableSolutionStacksResultMessage { "SolutionStacks" :: Maybe (AvailableSolutionStackNamesList), "SolutionStackDetails" :: Maybe (AvailableSolutionStackDetailsList) }
```

<p>A list of available AWS Elastic Beanstalk solution stacks.</p>

##### Instances
``` purescript
Newtype ListAvailableSolutionStacksResultMessage _
Generic ListAvailableSolutionStacksResultMessage _
Show ListAvailableSolutionStacksResultMessage
Decode ListAvailableSolutionStacksResultMessage
Encode ListAvailableSolutionStacksResultMessage
```

#### `newListAvailableSolutionStacksResultMessage`

``` purescript
newListAvailableSolutionStacksResultMessage :: ListAvailableSolutionStacksResultMessage
```

Constructs ListAvailableSolutionStacksResultMessage from required parameters

#### `newListAvailableSolutionStacksResultMessage'`

``` purescript
newListAvailableSolutionStacksResultMessage' :: ({ "SolutionStacks" :: Maybe (AvailableSolutionStackNamesList), "SolutionStackDetails" :: Maybe (AvailableSolutionStackDetailsList) } -> { "SolutionStacks" :: Maybe (AvailableSolutionStackNamesList), "SolutionStackDetails" :: Maybe (AvailableSolutionStackDetailsList) }) -> ListAvailableSolutionStacksResultMessage
```

Constructs ListAvailableSolutionStacksResultMessage's fields from required parameters

#### `ListPlatformVersionsRequest`

``` purescript
newtype ListPlatformVersionsRequest
  = ListPlatformVersionsRequest { "Filters" :: Maybe (PlatformFilters), "MaxRecords" :: Maybe (PlatformMaxRecords), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListPlatformVersionsRequest _
Generic ListPlatformVersionsRequest _
Show ListPlatformVersionsRequest
Decode ListPlatformVersionsRequest
Encode ListPlatformVersionsRequest
```

#### `newListPlatformVersionsRequest`

``` purescript
newListPlatformVersionsRequest :: ListPlatformVersionsRequest
```

Constructs ListPlatformVersionsRequest from required parameters

#### `newListPlatformVersionsRequest'`

``` purescript
newListPlatformVersionsRequest' :: ({ "Filters" :: Maybe (PlatformFilters), "MaxRecords" :: Maybe (PlatformMaxRecords), "NextToken" :: Maybe (Token) } -> { "Filters" :: Maybe (PlatformFilters), "MaxRecords" :: Maybe (PlatformMaxRecords), "NextToken" :: Maybe (Token) }) -> ListPlatformVersionsRequest
```

Constructs ListPlatformVersionsRequest's fields from required parameters

#### `ListPlatformVersionsResult`

``` purescript
newtype ListPlatformVersionsResult
  = ListPlatformVersionsResult { "PlatformSummaryList" :: Maybe (PlatformSummaryList), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListPlatformVersionsResult _
Generic ListPlatformVersionsResult _
Show ListPlatformVersionsResult
Decode ListPlatformVersionsResult
Encode ListPlatformVersionsResult
```

#### `newListPlatformVersionsResult`

``` purescript
newListPlatformVersionsResult :: ListPlatformVersionsResult
```

Constructs ListPlatformVersionsResult from required parameters

#### `newListPlatformVersionsResult'`

``` purescript
newListPlatformVersionsResult' :: ({ "PlatformSummaryList" :: Maybe (PlatformSummaryList), "NextToken" :: Maybe (Token) } -> { "PlatformSummaryList" :: Maybe (PlatformSummaryList), "NextToken" :: Maybe (Token) }) -> ListPlatformVersionsResult
```

Constructs ListPlatformVersionsResult's fields from required parameters

#### `ListTagsForResourceMessage`

``` purescript
newtype ListTagsForResourceMessage
  = ListTagsForResourceMessage { "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype ListTagsForResourceMessage _
Generic ListTagsForResourceMessage _
Show ListTagsForResourceMessage
Decode ListTagsForResourceMessage
Encode ListTagsForResourceMessage
```

#### `newListTagsForResourceMessage`

``` purescript
newListTagsForResourceMessage :: ResourceArn -> ListTagsForResourceMessage
```

Constructs ListTagsForResourceMessage from required parameters

#### `newListTagsForResourceMessage'`

``` purescript
newListTagsForResourceMessage' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn } -> { "ResourceArn" :: ResourceArn }) -> ListTagsForResourceMessage
```

Constructs ListTagsForResourceMessage's fields from required parameters

#### `Listener`

``` purescript
newtype Listener
  = Listener { "Protocol" :: Maybe (String), "Port" :: Maybe (Int) }
```

<p>Describes the properties of a Listener for the LoadBalancer.</p>

##### Instances
``` purescript
Newtype Listener _
Generic Listener _
Show Listener
Decode Listener
Encode Listener
```

#### `newListener`

``` purescript
newListener :: Listener
```

Constructs Listener from required parameters

#### `newListener'`

``` purescript
newListener' :: ({ "Protocol" :: Maybe (String), "Port" :: Maybe (Int) } -> { "Protocol" :: Maybe (String), "Port" :: Maybe (Int) }) -> Listener
```

Constructs Listener's fields from required parameters

#### `LoadAverage`

``` purescript
newtype LoadAverage
  = LoadAverage (Array LoadAverageValue)
```

##### Instances
``` purescript
Newtype LoadAverage _
Generic LoadAverage _
Show LoadAverage
Decode LoadAverage
Encode LoadAverage
```

#### `LoadAverageValue`

``` purescript
newtype LoadAverageValue
  = LoadAverageValue Number
```

##### Instances
``` purescript
Newtype LoadAverageValue _
Generic LoadAverageValue _
Show LoadAverageValue
Decode LoadAverageValue
Encode LoadAverageValue
```

#### `LoadBalancer`

``` purescript
newtype LoadBalancer
  = LoadBalancer { "Name" :: Maybe (ResourceId) }
```

<p>Describes a LoadBalancer.</p>

##### Instances
``` purescript
Newtype LoadBalancer _
Generic LoadBalancer _
Show LoadBalancer
Decode LoadBalancer
Encode LoadBalancer
```

#### `newLoadBalancer`

``` purescript
newLoadBalancer :: LoadBalancer
```

Constructs LoadBalancer from required parameters

#### `newLoadBalancer'`

``` purescript
newLoadBalancer' :: ({ "Name" :: Maybe (ResourceId) } -> { "Name" :: Maybe (ResourceId) }) -> LoadBalancer
```

Constructs LoadBalancer's fields from required parameters

#### `LoadBalancerDescription`

``` purescript
newtype LoadBalancerDescription
  = LoadBalancerDescription { "LoadBalancerName" :: Maybe (String), "Domain" :: Maybe (String), "Listeners" :: Maybe (LoadBalancerListenersDescription) }
```

<p>Describes the details of a LoadBalancer.</p>

##### Instances
``` purescript
Newtype LoadBalancerDescription _
Generic LoadBalancerDescription _
Show LoadBalancerDescription
Decode LoadBalancerDescription
Encode LoadBalancerDescription
```

#### `newLoadBalancerDescription`

``` purescript
newLoadBalancerDescription :: LoadBalancerDescription
```

Constructs LoadBalancerDescription from required parameters

#### `newLoadBalancerDescription'`

``` purescript
newLoadBalancerDescription' :: ({ "LoadBalancerName" :: Maybe (String), "Domain" :: Maybe (String), "Listeners" :: Maybe (LoadBalancerListenersDescription) } -> { "LoadBalancerName" :: Maybe (String), "Domain" :: Maybe (String), "Listeners" :: Maybe (LoadBalancerListenersDescription) }) -> LoadBalancerDescription
```

Constructs LoadBalancerDescription's fields from required parameters

#### `LoadBalancerList`

``` purescript
newtype LoadBalancerList
  = LoadBalancerList (Array LoadBalancer)
```

##### Instances
``` purescript
Newtype LoadBalancerList _
Generic LoadBalancerList _
Show LoadBalancerList
Decode LoadBalancerList
Encode LoadBalancerList
```

#### `LoadBalancerListenersDescription`

``` purescript
newtype LoadBalancerListenersDescription
  = LoadBalancerListenersDescription (Array Listener)
```

##### Instances
``` purescript
Newtype LoadBalancerListenersDescription _
Generic LoadBalancerListenersDescription _
Show LoadBalancerListenersDescription
Decode LoadBalancerListenersDescription
Encode LoadBalancerListenersDescription
```

#### `Maintainer`

``` purescript
newtype Maintainer
  = Maintainer String
```

##### Instances
``` purescript
Newtype Maintainer _
Generic Maintainer _
Show Maintainer
Decode Maintainer
Encode Maintainer
```

#### `ManagedAction`

``` purescript
newtype ManagedAction
  = ManagedAction { "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (ActionStatus), "WindowStartTime" :: Maybe (Timestamp) }
```

<p>The record of an upcoming or in-progress managed action.</p>

##### Instances
``` purescript
Newtype ManagedAction _
Generic ManagedAction _
Show ManagedAction
Decode ManagedAction
Encode ManagedAction
```

#### `newManagedAction`

``` purescript
newManagedAction :: ManagedAction
```

Constructs ManagedAction from required parameters

#### `newManagedAction'`

``` purescript
newManagedAction' :: ({ "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (ActionStatus), "WindowStartTime" :: Maybe (Timestamp) } -> { "ActionId" :: Maybe (String), "ActionDescription" :: Maybe (String), "ActionType" :: Maybe (ActionType), "Status" :: Maybe (ActionStatus), "WindowStartTime" :: Maybe (Timestamp) }) -> ManagedAction
```

Constructs ManagedAction's fields from required parameters

#### `ManagedActionHistoryItem`

``` purescript
newtype ManagedActionHistoryItem
  = ManagedActionHistoryItem { "ActionId" :: Maybe (String), "ActionType" :: Maybe (ActionType), "ActionDescription" :: Maybe (String), "FailureType" :: Maybe (FailureType), "Status" :: Maybe (ActionHistoryStatus), "FailureDescription" :: Maybe (String), "ExecutedTime" :: Maybe (Timestamp), "FinishedTime" :: Maybe (Timestamp) }
```

<p>The record of a completed or failed managed action.</p>

##### Instances
``` purescript
Newtype ManagedActionHistoryItem _
Generic ManagedActionHistoryItem _
Show ManagedActionHistoryItem
Decode ManagedActionHistoryItem
Encode ManagedActionHistoryItem
```

#### `newManagedActionHistoryItem`

``` purescript
newManagedActionHistoryItem :: ManagedActionHistoryItem
```

Constructs ManagedActionHistoryItem from required parameters

#### `newManagedActionHistoryItem'`

``` purescript
newManagedActionHistoryItem' :: ({ "ActionId" :: Maybe (String), "ActionType" :: Maybe (ActionType), "ActionDescription" :: Maybe (String), "FailureType" :: Maybe (FailureType), "Status" :: Maybe (ActionHistoryStatus), "FailureDescription" :: Maybe (String), "ExecutedTime" :: Maybe (Timestamp), "FinishedTime" :: Maybe (Timestamp) } -> { "ActionId" :: Maybe (String), "ActionType" :: Maybe (ActionType), "ActionDescription" :: Maybe (String), "FailureType" :: Maybe (FailureType), "Status" :: Maybe (ActionHistoryStatus), "FailureDescription" :: Maybe (String), "ExecutedTime" :: Maybe (Timestamp), "FinishedTime" :: Maybe (Timestamp) }) -> ManagedActionHistoryItem
```

Constructs ManagedActionHistoryItem's fields from required parameters

#### `ManagedActionHistoryItems`

``` purescript
newtype ManagedActionHistoryItems
  = ManagedActionHistoryItems (Array ManagedActionHistoryItem)
```

##### Instances
``` purescript
Newtype ManagedActionHistoryItems _
Generic ManagedActionHistoryItems _
Show ManagedActionHistoryItems
Decode ManagedActionHistoryItems
Encode ManagedActionHistoryItems
```

#### `ManagedActionInvalidStateException`

``` purescript
newtype ManagedActionInvalidStateException
  = ManagedActionInvalidStateException NoArguments
```

<p>Cannot modify the managed action in its current state.</p>

##### Instances
``` purescript
Newtype ManagedActionInvalidStateException _
Generic ManagedActionInvalidStateException _
Show ManagedActionInvalidStateException
Decode ManagedActionInvalidStateException
Encode ManagedActionInvalidStateException
```

#### `ManagedActions`

``` purescript
newtype ManagedActions
  = ManagedActions (Array ManagedAction)
```

##### Instances
``` purescript
Newtype ManagedActions _
Generic ManagedActions _
Show ManagedActions
Decode ManagedActions
Encode ManagedActions
```

#### `MaxAgeRule`

``` purescript
newtype MaxAgeRule
  = MaxAgeRule { "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) }
```

<p>A lifecycle rule that deletes application versions after the specified number of days.</p>

##### Instances
``` purescript
Newtype MaxAgeRule _
Generic MaxAgeRule _
Show MaxAgeRule
Decode MaxAgeRule
Encode MaxAgeRule
```

#### `newMaxAgeRule`

``` purescript
newMaxAgeRule :: BoxedBoolean -> MaxAgeRule
```

Constructs MaxAgeRule from required parameters

#### `newMaxAgeRule'`

``` purescript
newMaxAgeRule' :: BoxedBoolean -> ({ "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) } -> { "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) }) -> MaxAgeRule
```

Constructs MaxAgeRule's fields from required parameters

#### `MaxCountRule`

``` purescript
newtype MaxCountRule
  = MaxCountRule { "Enabled" :: BoxedBoolean, "MaxCount" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) }
```

<p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>

##### Instances
``` purescript
Newtype MaxCountRule _
Generic MaxCountRule _
Show MaxCountRule
Decode MaxCountRule
Encode MaxCountRule
```

#### `newMaxCountRule`

``` purescript
newMaxCountRule :: BoxedBoolean -> MaxCountRule
```

Constructs MaxCountRule from required parameters

#### `newMaxCountRule'`

``` purescript
newMaxCountRule' :: BoxedBoolean -> ({ "Enabled" :: BoxedBoolean, "MaxCount" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) } -> { "Enabled" :: BoxedBoolean, "MaxCount" :: Maybe (BoxedInt), "DeleteSourceFromS3" :: Maybe (BoxedBoolean) }) -> MaxCountRule
```

Constructs MaxCountRule's fields from required parameters

#### `MaxRecords`

``` purescript
newtype MaxRecords
  = MaxRecords Int
```

##### Instances
``` purescript
Newtype MaxRecords _
Generic MaxRecords _
Show MaxRecords
Decode MaxRecords
Encode MaxRecords
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NonEmptyString`

``` purescript
newtype NonEmptyString
  = NonEmptyString String
```

##### Instances
``` purescript
Newtype NonEmptyString _
Generic NonEmptyString _
Show NonEmptyString
Decode NonEmptyString
Encode NonEmptyString
```

#### `NullableDouble`

``` purescript
newtype NullableDouble
  = NullableDouble Number
```

##### Instances
``` purescript
Newtype NullableDouble _
Generic NullableDouble _
Show NullableDouble
Decode NullableDouble
Encode NullableDouble
```

#### `NullableInteger`

``` purescript
newtype NullableInteger
  = NullableInteger Int
```

##### Instances
``` purescript
Newtype NullableInteger _
Generic NullableInteger _
Show NullableInteger
Decode NullableInteger
Encode NullableInteger
```

#### `NullableLong`

``` purescript
newtype NullableLong
  = NullableLong Number
```

##### Instances
``` purescript
Newtype NullableLong _
Generic NullableLong _
Show NullableLong
Decode NullableLong
Encode NullableLong
```

#### `OperatingSystemName`

``` purescript
newtype OperatingSystemName
  = OperatingSystemName String
```

##### Instances
``` purescript
Newtype OperatingSystemName _
Generic OperatingSystemName _
Show OperatingSystemName
Decode OperatingSystemName
Encode OperatingSystemName
```

#### `OperatingSystemVersion`

``` purescript
newtype OperatingSystemVersion
  = OperatingSystemVersion String
```

##### Instances
``` purescript
Newtype OperatingSystemVersion _
Generic OperatingSystemVersion _
Show OperatingSystemVersion
Decode OperatingSystemVersion
Encode OperatingSystemVersion
```

#### `OperationInProgressException`

``` purescript
newtype OperationInProgressException
  = OperationInProgressException NoArguments
```

<p>Unable to perform the specified operation because another operation that effects an element in this activity is already in progress.</p>

##### Instances
``` purescript
Newtype OperationInProgressException _
Generic OperationInProgressException _
Show OperationInProgressException
Decode OperationInProgressException
Encode OperationInProgressException
```

#### `OptionNamespace`

``` purescript
newtype OptionNamespace
  = OptionNamespace String
```

##### Instances
``` purescript
Newtype OptionNamespace _
Generic OptionNamespace _
Show OptionNamespace
Decode OptionNamespace
Encode OptionNamespace
```

#### `OptionRestrictionMaxLength`

``` purescript
newtype OptionRestrictionMaxLength
  = OptionRestrictionMaxLength Int
```

##### Instances
``` purescript
Newtype OptionRestrictionMaxLength _
Generic OptionRestrictionMaxLength _
Show OptionRestrictionMaxLength
Decode OptionRestrictionMaxLength
Encode OptionRestrictionMaxLength
```

#### `OptionRestrictionMaxValue`

``` purescript
newtype OptionRestrictionMaxValue
  = OptionRestrictionMaxValue Int
```

##### Instances
``` purescript
Newtype OptionRestrictionMaxValue _
Generic OptionRestrictionMaxValue _
Show OptionRestrictionMaxValue
Decode OptionRestrictionMaxValue
Encode OptionRestrictionMaxValue
```

#### `OptionRestrictionMinValue`

``` purescript
newtype OptionRestrictionMinValue
  = OptionRestrictionMinValue Int
```

##### Instances
``` purescript
Newtype OptionRestrictionMinValue _
Generic OptionRestrictionMinValue _
Show OptionRestrictionMinValue
Decode OptionRestrictionMinValue
Encode OptionRestrictionMinValue
```

#### `OptionRestrictionRegex`

``` purescript
newtype OptionRestrictionRegex
  = OptionRestrictionRegex { "Pattern" :: Maybe (RegexPattern), "Label" :: Maybe (RegexLabel) }
```

<p>A regular expression representing a restriction on a string configuration option value.</p>

##### Instances
``` purescript
Newtype OptionRestrictionRegex _
Generic OptionRestrictionRegex _
Show OptionRestrictionRegex
Decode OptionRestrictionRegex
Encode OptionRestrictionRegex
```

#### `newOptionRestrictionRegex`

``` purescript
newOptionRestrictionRegex :: OptionRestrictionRegex
```

Constructs OptionRestrictionRegex from required parameters

#### `newOptionRestrictionRegex'`

``` purescript
newOptionRestrictionRegex' :: ({ "Pattern" :: Maybe (RegexPattern), "Label" :: Maybe (RegexLabel) } -> { "Pattern" :: Maybe (RegexPattern), "Label" :: Maybe (RegexLabel) }) -> OptionRestrictionRegex
```

Constructs OptionRestrictionRegex's fields from required parameters

#### `OptionSpecification`

``` purescript
newtype OptionSpecification
  = OptionSpecification { "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) }
```

<p>A specification identifying an individual configuration option.</p>

##### Instances
``` purescript
Newtype OptionSpecification _
Generic OptionSpecification _
Show OptionSpecification
Decode OptionSpecification
Encode OptionSpecification
```

#### `newOptionSpecification`

``` purescript
newOptionSpecification :: OptionSpecification
```

Constructs OptionSpecification from required parameters

#### `newOptionSpecification'`

``` purescript
newOptionSpecification' :: ({ "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) } -> { "ResourceName" :: Maybe (ResourceName), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) }) -> OptionSpecification
```

Constructs OptionSpecification's fields from required parameters

#### `OptionsSpecifierList`

``` purescript
newtype OptionsSpecifierList
  = OptionsSpecifierList (Array OptionSpecification)
```

##### Instances
``` purescript
Newtype OptionsSpecifierList _
Generic OptionsSpecifierList _
Show OptionsSpecifierList
Decode OptionsSpecifierList
Encode OptionsSpecifierList
```

#### `PlatformArn`

``` purescript
newtype PlatformArn
  = PlatformArn String
```

##### Instances
``` purescript
Newtype PlatformArn _
Generic PlatformArn _
Show PlatformArn
Decode PlatformArn
Encode PlatformArn
```

#### `PlatformCategory`

``` purescript
newtype PlatformCategory
  = PlatformCategory String
```

##### Instances
``` purescript
Newtype PlatformCategory _
Generic PlatformCategory _
Show PlatformCategory
Decode PlatformCategory
Encode PlatformCategory
```

#### `PlatformDescription`

``` purescript
newtype PlatformDescription
  = PlatformDescription { "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformName" :: Maybe (PlatformName), "PlatformVersion" :: Maybe (PlatformVersion), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformStatus" :: Maybe (PlatformStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "PlatformCategory" :: Maybe (PlatformCategory), "Description" :: Maybe (Description), "Maintainer" :: Maybe (Maintainer), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "ProgrammingLanguages" :: Maybe (PlatformProgrammingLanguages), "Frameworks" :: Maybe (PlatformFrameworks), "CustomAmiList" :: Maybe (CustomAmiList), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) }
```

<p>Detailed information about a platform.</p>

##### Instances
``` purescript
Newtype PlatformDescription _
Generic PlatformDescription _
Show PlatformDescription
Decode PlatformDescription
Encode PlatformDescription
```

#### `newPlatformDescription`

``` purescript
newPlatformDescription :: PlatformDescription
```

Constructs PlatformDescription from required parameters

#### `newPlatformDescription'`

``` purescript
newPlatformDescription' :: ({ "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformName" :: Maybe (PlatformName), "PlatformVersion" :: Maybe (PlatformVersion), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformStatus" :: Maybe (PlatformStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "PlatformCategory" :: Maybe (PlatformCategory), "Description" :: Maybe (Description), "Maintainer" :: Maybe (Maintainer), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "ProgrammingLanguages" :: Maybe (PlatformProgrammingLanguages), "Frameworks" :: Maybe (PlatformFrameworks), "CustomAmiList" :: Maybe (CustomAmiList), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) } -> { "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformName" :: Maybe (PlatformName), "PlatformVersion" :: Maybe (PlatformVersion), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformStatus" :: Maybe (PlatformStatus), "DateCreated" :: Maybe (CreationDate), "DateUpdated" :: Maybe (UpdateDate), "PlatformCategory" :: Maybe (PlatformCategory), "Description" :: Maybe (Description), "Maintainer" :: Maybe (Maintainer), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "ProgrammingLanguages" :: Maybe (PlatformProgrammingLanguages), "Frameworks" :: Maybe (PlatformFrameworks), "CustomAmiList" :: Maybe (CustomAmiList), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) }) -> PlatformDescription
```

Constructs PlatformDescription's fields from required parameters

#### `PlatformFilter`

``` purescript
newtype PlatformFilter
  = PlatformFilter { "Type" :: Maybe (PlatformFilterType), "Operator" :: Maybe (PlatformFilterOperator), "Values" :: Maybe (PlatformFilterValueList) }
```

<p>Specify criteria to restrict the results when listing custom platforms.</p> <p>The filter is evaluated as the expression:</p> <p> <code>Type</code> <code>Operator</code> <code>Values[i]</code> </p>

##### Instances
``` purescript
Newtype PlatformFilter _
Generic PlatformFilter _
Show PlatformFilter
Decode PlatformFilter
Encode PlatformFilter
```

#### `newPlatformFilter`

``` purescript
newPlatformFilter :: PlatformFilter
```

Constructs PlatformFilter from required parameters

#### `newPlatformFilter'`

``` purescript
newPlatformFilter' :: ({ "Type" :: Maybe (PlatformFilterType), "Operator" :: Maybe (PlatformFilterOperator), "Values" :: Maybe (PlatformFilterValueList) } -> { "Type" :: Maybe (PlatformFilterType), "Operator" :: Maybe (PlatformFilterOperator), "Values" :: Maybe (PlatformFilterValueList) }) -> PlatformFilter
```

Constructs PlatformFilter's fields from required parameters

#### `PlatformFilterOperator`

``` purescript
newtype PlatformFilterOperator
  = PlatformFilterOperator String
```

##### Instances
``` purescript
Newtype PlatformFilterOperator _
Generic PlatformFilterOperator _
Show PlatformFilterOperator
Decode PlatformFilterOperator
Encode PlatformFilterOperator
```

#### `PlatformFilterType`

``` purescript
newtype PlatformFilterType
  = PlatformFilterType String
```

##### Instances
``` purescript
Newtype PlatformFilterType _
Generic PlatformFilterType _
Show PlatformFilterType
Decode PlatformFilterType
Encode PlatformFilterType
```

#### `PlatformFilterValue`

``` purescript
newtype PlatformFilterValue
  = PlatformFilterValue String
```

##### Instances
``` purescript
Newtype PlatformFilterValue _
Generic PlatformFilterValue _
Show PlatformFilterValue
Decode PlatformFilterValue
Encode PlatformFilterValue
```

#### `PlatformFilterValueList`

``` purescript
newtype PlatformFilterValueList
  = PlatformFilterValueList (Array PlatformFilterValue)
```

##### Instances
``` purescript
Newtype PlatformFilterValueList _
Generic PlatformFilterValueList _
Show PlatformFilterValueList
Decode PlatformFilterValueList
Encode PlatformFilterValueList
```

#### `PlatformFilters`

``` purescript
newtype PlatformFilters
  = PlatformFilters (Array PlatformFilter)
```

##### Instances
``` purescript
Newtype PlatformFilters _
Generic PlatformFilters _
Show PlatformFilters
Decode PlatformFilters
Encode PlatformFilters
```

#### `PlatformFramework`

``` purescript
newtype PlatformFramework
  = PlatformFramework { "Name" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>A framework supported by the custom platform.</p>

##### Instances
``` purescript
Newtype PlatformFramework _
Generic PlatformFramework _
Show PlatformFramework
Decode PlatformFramework
Encode PlatformFramework
```

#### `newPlatformFramework`

``` purescript
newPlatformFramework :: PlatformFramework
```

Constructs PlatformFramework from required parameters

#### `newPlatformFramework'`

``` purescript
newPlatformFramework' :: ({ "Name" :: Maybe (String), "Version" :: Maybe (String) } -> { "Name" :: Maybe (String), "Version" :: Maybe (String) }) -> PlatformFramework
```

Constructs PlatformFramework's fields from required parameters

#### `PlatformFrameworks`

``` purescript
newtype PlatformFrameworks
  = PlatformFrameworks (Array PlatformFramework)
```

##### Instances
``` purescript
Newtype PlatformFrameworks _
Generic PlatformFrameworks _
Show PlatformFrameworks
Decode PlatformFrameworks
Encode PlatformFrameworks
```

#### `PlatformMaxRecords`

``` purescript
newtype PlatformMaxRecords
  = PlatformMaxRecords Int
```

##### Instances
``` purescript
Newtype PlatformMaxRecords _
Generic PlatformMaxRecords _
Show PlatformMaxRecords
Decode PlatformMaxRecords
Encode PlatformMaxRecords
```

#### `PlatformName`

``` purescript
newtype PlatformName
  = PlatformName String
```

##### Instances
``` purescript
Newtype PlatformName _
Generic PlatformName _
Show PlatformName
Decode PlatformName
Encode PlatformName
```

#### `PlatformOwner`

``` purescript
newtype PlatformOwner
  = PlatformOwner String
```

##### Instances
``` purescript
Newtype PlatformOwner _
Generic PlatformOwner _
Show PlatformOwner
Decode PlatformOwner
Encode PlatformOwner
```

#### `PlatformProgrammingLanguage`

``` purescript
newtype PlatformProgrammingLanguage
  = PlatformProgrammingLanguage { "Name" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>A programming language supported by the platform.</p>

##### Instances
``` purescript
Newtype PlatformProgrammingLanguage _
Generic PlatformProgrammingLanguage _
Show PlatformProgrammingLanguage
Decode PlatformProgrammingLanguage
Encode PlatformProgrammingLanguage
```

#### `newPlatformProgrammingLanguage`

``` purescript
newPlatformProgrammingLanguage :: PlatformProgrammingLanguage
```

Constructs PlatformProgrammingLanguage from required parameters

#### `newPlatformProgrammingLanguage'`

``` purescript
newPlatformProgrammingLanguage' :: ({ "Name" :: Maybe (String), "Version" :: Maybe (String) } -> { "Name" :: Maybe (String), "Version" :: Maybe (String) }) -> PlatformProgrammingLanguage
```

Constructs PlatformProgrammingLanguage's fields from required parameters

#### `PlatformProgrammingLanguages`

``` purescript
newtype PlatformProgrammingLanguages
  = PlatformProgrammingLanguages (Array PlatformProgrammingLanguage)
```

##### Instances
``` purescript
Newtype PlatformProgrammingLanguages _
Generic PlatformProgrammingLanguages _
Show PlatformProgrammingLanguages
Decode PlatformProgrammingLanguages
Encode PlatformProgrammingLanguages
```

#### `PlatformStatus`

``` purescript
newtype PlatformStatus
  = PlatformStatus String
```

##### Instances
``` purescript
Newtype PlatformStatus _
Generic PlatformStatus _
Show PlatformStatus
Decode PlatformStatus
Encode PlatformStatus
```

#### `PlatformSummary`

``` purescript
newtype PlatformSummary
  = PlatformSummary { "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformStatus" :: Maybe (PlatformStatus), "PlatformCategory" :: Maybe (PlatformCategory), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) }
```

<p>Detailed information about a platform.</p>

##### Instances
``` purescript
Newtype PlatformSummary _
Generic PlatformSummary _
Show PlatformSummary
Decode PlatformSummary
Encode PlatformSummary
```

#### `newPlatformSummary`

``` purescript
newPlatformSummary :: PlatformSummary
```

Constructs PlatformSummary from required parameters

#### `newPlatformSummary'`

``` purescript
newPlatformSummary' :: ({ "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformStatus" :: Maybe (PlatformStatus), "PlatformCategory" :: Maybe (PlatformCategory), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) } -> { "PlatformArn" :: Maybe (PlatformArn), "PlatformOwner" :: Maybe (PlatformOwner), "PlatformStatus" :: Maybe (PlatformStatus), "PlatformCategory" :: Maybe (PlatformCategory), "OperatingSystemName" :: Maybe (OperatingSystemName), "OperatingSystemVersion" :: Maybe (OperatingSystemVersion), "SupportedTierList" :: Maybe (SupportedTierList), "SupportedAddonList" :: Maybe (SupportedAddonList) }) -> PlatformSummary
```

Constructs PlatformSummary's fields from required parameters

#### `PlatformSummaryList`

``` purescript
newtype PlatformSummaryList
  = PlatformSummaryList (Array PlatformSummary)
```

##### Instances
``` purescript
Newtype PlatformSummaryList _
Generic PlatformSummaryList _
Show PlatformSummaryList
Decode PlatformSummaryList
Encode PlatformSummaryList
```

#### `PlatformVersion`

``` purescript
newtype PlatformVersion
  = PlatformVersion String
```

##### Instances
``` purescript
Newtype PlatformVersion _
Generic PlatformVersion _
Show PlatformVersion
Decode PlatformVersion
Encode PlatformVersion
```

#### `PlatformVersionStillReferencedException`

``` purescript
newtype PlatformVersionStillReferencedException
  = PlatformVersionStillReferencedException NoArguments
```

<p>You cannot delete the platform version because there are still environments running on it.</p>

##### Instances
``` purescript
Newtype PlatformVersionStillReferencedException _
Generic PlatformVersionStillReferencedException _
Show PlatformVersionStillReferencedException
Decode PlatformVersionStillReferencedException
Encode PlatformVersionStillReferencedException
```

#### `Queue`

``` purescript
newtype Queue
  = Queue { "Name" :: Maybe (String), "URL" :: Maybe (String) }
```

<p>Describes a queue.</p>

##### Instances
``` purescript
Newtype Queue _
Generic Queue _
Show Queue
Decode Queue
Encode Queue
```

#### `newQueue`

``` purescript
newQueue :: Queue
```

Constructs Queue from required parameters

#### `newQueue'`

``` purescript
newQueue' :: ({ "Name" :: Maybe (String), "URL" :: Maybe (String) } -> { "Name" :: Maybe (String), "URL" :: Maybe (String) }) -> Queue
```

Constructs Queue's fields from required parameters

#### `QueueList`

``` purescript
newtype QueueList
  = QueueList (Array Queue)
```

##### Instances
``` purescript
Newtype QueueList _
Generic QueueList _
Show QueueList
Decode QueueList
Encode QueueList
```

#### `RebuildEnvironmentMessage`

``` purescript
newtype RebuildEnvironmentMessage
  = RebuildEnvironmentMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }
```

<p/>

##### Instances
``` purescript
Newtype RebuildEnvironmentMessage _
Generic RebuildEnvironmentMessage _
Show RebuildEnvironmentMessage
Decode RebuildEnvironmentMessage
Encode RebuildEnvironmentMessage
```

#### `newRebuildEnvironmentMessage`

``` purescript
newRebuildEnvironmentMessage :: RebuildEnvironmentMessage
```

Constructs RebuildEnvironmentMessage from required parameters

#### `newRebuildEnvironmentMessage'`

``` purescript
newRebuildEnvironmentMessage' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }) -> RebuildEnvironmentMessage
```

Constructs RebuildEnvironmentMessage's fields from required parameters

#### `RefreshedAt`

``` purescript
newtype RefreshedAt
  = RefreshedAt Timestamp
```

##### Instances
``` purescript
Newtype RefreshedAt _
Generic RefreshedAt _
Show RefreshedAt
Decode RefreshedAt
Encode RefreshedAt
```

#### `RegexLabel`

``` purescript
newtype RegexLabel
  = RegexLabel String
```

##### Instances
``` purescript
Newtype RegexLabel _
Generic RegexLabel _
Show RegexLabel
Decode RegexLabel
Encode RegexLabel
```

#### `RegexPattern`

``` purescript
newtype RegexPattern
  = RegexPattern String
```

##### Instances
``` purescript
Newtype RegexPattern _
Generic RegexPattern _
Show RegexPattern
Decode RegexPattern
Encode RegexPattern
```

#### `RequestCount`

``` purescript
newtype RequestCount
  = RequestCount Int
```

##### Instances
``` purescript
Newtype RequestCount _
Generic RequestCount _
Show RequestCount
Decode RequestCount
Encode RequestCount
```

#### `RequestEnvironmentInfoMessage`

``` purescript
newtype RequestEnvironmentInfoMessage
  = RequestEnvironmentInfoMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType }
```

<p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk storage bucket.</p>

##### Instances
``` purescript
Newtype RequestEnvironmentInfoMessage _
Generic RequestEnvironmentInfoMessage _
Show RequestEnvironmentInfoMessage
Decode RequestEnvironmentInfoMessage
Encode RequestEnvironmentInfoMessage
```

#### `newRequestEnvironmentInfoMessage`

``` purescript
newRequestEnvironmentInfoMessage :: EnvironmentInfoType -> RequestEnvironmentInfoMessage
```

Constructs RequestEnvironmentInfoMessage from required parameters

#### `newRequestEnvironmentInfoMessage'`

``` purescript
newRequestEnvironmentInfoMessage' :: EnvironmentInfoType -> ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType }) -> RequestEnvironmentInfoMessage
```

Constructs RequestEnvironmentInfoMessage's fields from required parameters

#### `RequestId`

``` purescript
newtype RequestId
  = RequestId String
```

##### Instances
``` purescript
Newtype RequestId _
Generic RequestId _
Show RequestId
Decode RequestId
Encode RequestId
```

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

##### Instances
``` purescript
Newtype ResourceName _
Generic ResourceName _
Show ResourceName
Decode ResourceName
Encode ResourceName
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>A resource doesn't exist for the specified Amazon Resource Name (ARN).</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `ResourceTagsDescriptionMessage`

``` purescript
newtype ResourceTagsDescriptionMessage
  = ResourceTagsDescriptionMessage { "ResourceArn" :: Maybe (ResourceArn), "ResourceTags" :: Maybe (TagList) }
```

##### Instances
``` purescript
Newtype ResourceTagsDescriptionMessage _
Generic ResourceTagsDescriptionMessage _
Show ResourceTagsDescriptionMessage
Decode ResourceTagsDescriptionMessage
Encode ResourceTagsDescriptionMessage
```

#### `newResourceTagsDescriptionMessage`

``` purescript
newResourceTagsDescriptionMessage :: ResourceTagsDescriptionMessage
```

Constructs ResourceTagsDescriptionMessage from required parameters

#### `newResourceTagsDescriptionMessage'`

``` purescript
newResourceTagsDescriptionMessage' :: ({ "ResourceArn" :: Maybe (ResourceArn), "ResourceTags" :: Maybe (TagList) } -> { "ResourceArn" :: Maybe (ResourceArn), "ResourceTags" :: Maybe (TagList) }) -> ResourceTagsDescriptionMessage
```

Constructs ResourceTagsDescriptionMessage's fields from required parameters

#### `ResourceTypeNotSupportedException`

``` purescript
newtype ResourceTypeNotSupportedException
  = ResourceTypeNotSupportedException NoArguments
```

<p>The type of the specified Amazon Resource Name (ARN) isn't supported for this operation.</p>

##### Instances
``` purescript
Newtype ResourceTypeNotSupportedException _
Generic ResourceTypeNotSupportedException _
Show ResourceTypeNotSupportedException
Decode ResourceTypeNotSupportedException
Encode ResourceTypeNotSupportedException
```

#### `RestartAppServerMessage`

``` purescript
newtype RestartAppServerMessage
  = RestartAppServerMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }
```

<p/>

##### Instances
``` purescript
Newtype RestartAppServerMessage _
Generic RestartAppServerMessage _
Show RestartAppServerMessage
Decode RestartAppServerMessage
Encode RestartAppServerMessage
```

#### `newRestartAppServerMessage`

``` purescript
newRestartAppServerMessage :: RestartAppServerMessage
```

Constructs RestartAppServerMessage from required parameters

#### `newRestartAppServerMessage'`

``` purescript
newRestartAppServerMessage' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName) }) -> RestartAppServerMessage
```

Constructs RestartAppServerMessage's fields from required parameters

#### `RetrieveEnvironmentInfoMessage`

``` purescript
newtype RetrieveEnvironmentInfoMessage
  = RetrieveEnvironmentInfoMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType }
```

<p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>

##### Instances
``` purescript
Newtype RetrieveEnvironmentInfoMessage _
Generic RetrieveEnvironmentInfoMessage _
Show RetrieveEnvironmentInfoMessage
Decode RetrieveEnvironmentInfoMessage
Encode RetrieveEnvironmentInfoMessage
```

#### `newRetrieveEnvironmentInfoMessage`

``` purescript
newRetrieveEnvironmentInfoMessage :: EnvironmentInfoType -> RetrieveEnvironmentInfoMessage
```

Constructs RetrieveEnvironmentInfoMessage from required parameters

#### `newRetrieveEnvironmentInfoMessage'`

``` purescript
newRetrieveEnvironmentInfoMessage' :: EnvironmentInfoType -> ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "InfoType" :: EnvironmentInfoType }) -> RetrieveEnvironmentInfoMessage
```

Constructs RetrieveEnvironmentInfoMessage's fields from required parameters

#### `RetrieveEnvironmentInfoResultMessage`

``` purescript
newtype RetrieveEnvironmentInfoResultMessage
  = RetrieveEnvironmentInfoResultMessage { "EnvironmentInfo" :: Maybe (EnvironmentInfoDescriptionList) }
```

<p>Result message containing a description of the requested environment info.</p>

##### Instances
``` purescript
Newtype RetrieveEnvironmentInfoResultMessage _
Generic RetrieveEnvironmentInfoResultMessage _
Show RetrieveEnvironmentInfoResultMessage
Decode RetrieveEnvironmentInfoResultMessage
Encode RetrieveEnvironmentInfoResultMessage
```

#### `newRetrieveEnvironmentInfoResultMessage`

``` purescript
newRetrieveEnvironmentInfoResultMessage :: RetrieveEnvironmentInfoResultMessage
```

Constructs RetrieveEnvironmentInfoResultMessage from required parameters

#### `newRetrieveEnvironmentInfoResultMessage'`

``` purescript
newRetrieveEnvironmentInfoResultMessage' :: ({ "EnvironmentInfo" :: Maybe (EnvironmentInfoDescriptionList) } -> { "EnvironmentInfo" :: Maybe (EnvironmentInfoDescriptionList) }) -> RetrieveEnvironmentInfoResultMessage
```

Constructs RetrieveEnvironmentInfoResultMessage's fields from required parameters

#### `S3Bucket`

``` purescript
newtype S3Bucket
  = S3Bucket String
```

##### Instances
``` purescript
Newtype S3Bucket _
Generic S3Bucket _
Show S3Bucket
Decode S3Bucket
Encode S3Bucket
```

#### `S3Key`

``` purescript
newtype S3Key
  = S3Key String
```

##### Instances
``` purescript
Newtype S3Key _
Generic S3Key _
Show S3Key
Decode S3Key
Encode S3Key
```

#### `S3Location`

``` purescript
newtype S3Location
  = S3Location { "S3Bucket" :: Maybe (S3Bucket), "S3Key" :: Maybe (S3Key) }
```

<p>The bucket and key of an item stored in Amazon S3.</p>

##### Instances
``` purescript
Newtype S3Location _
Generic S3Location _
Show S3Location
Decode S3Location
Encode S3Location
```

#### `newS3Location`

``` purescript
newS3Location :: S3Location
```

Constructs S3Location from required parameters

#### `newS3Location'`

``` purescript
newS3Location' :: ({ "S3Bucket" :: Maybe (S3Bucket), "S3Key" :: Maybe (S3Key) } -> { "S3Bucket" :: Maybe (S3Bucket), "S3Key" :: Maybe (S3Key) }) -> S3Location
```

Constructs S3Location's fields from required parameters

#### `S3LocationNotInServiceRegionException`

``` purescript
newtype S3LocationNotInServiceRegionException
  = S3LocationNotInServiceRegionException NoArguments
```

<p>The specified S3 bucket does not belong to the S3 region in which the service is running. The following regions are supported:</p> <ul> <li> <p>IAD/us-east-1</p> </li> <li> <p>PDX/us-west-2</p> </li> <li> <p>DUB/eu-west-1</p> </li> </ul>

##### Instances
``` purescript
Newtype S3LocationNotInServiceRegionException _
Generic S3LocationNotInServiceRegionException _
Show S3LocationNotInServiceRegionException
Decode S3LocationNotInServiceRegionException
Encode S3LocationNotInServiceRegionException
```

#### `S3SubscriptionRequiredException`

``` purescript
newtype S3SubscriptionRequiredException
  = S3SubscriptionRequiredException NoArguments
```

<p>The specified account does not have a subscription to Amazon S3.</p>

##### Instances
``` purescript
Newtype S3SubscriptionRequiredException _
Generic S3SubscriptionRequiredException _
Show S3SubscriptionRequiredException
Decode S3SubscriptionRequiredException
Encode S3SubscriptionRequiredException
```

#### `SampleTimestamp`

``` purescript
newtype SampleTimestamp
  = SampleTimestamp Timestamp
```

##### Instances
``` purescript
Newtype SampleTimestamp _
Generic SampleTimestamp _
Show SampleTimestamp
Decode SampleTimestamp
Encode SampleTimestamp
```

#### `SingleInstanceHealth`

``` purescript
newtype SingleInstanceHealth
  = SingleInstanceHealth { "InstanceId" :: Maybe (InstanceId), "HealthStatus" :: Maybe (String), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "LaunchedAt" :: Maybe (LaunchedAt), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "System" :: Maybe (SystemStatus), "Deployment" :: Maybe (Deployment), "AvailabilityZone" :: Maybe (String), "InstanceType" :: Maybe (String) }
```

<p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>

##### Instances
``` purescript
Newtype SingleInstanceHealth _
Generic SingleInstanceHealth _
Show SingleInstanceHealth
Decode SingleInstanceHealth
Encode SingleInstanceHealth
```

#### `newSingleInstanceHealth`

``` purescript
newSingleInstanceHealth :: SingleInstanceHealth
```

Constructs SingleInstanceHealth from required parameters

#### `newSingleInstanceHealth'`

``` purescript
newSingleInstanceHealth' :: ({ "InstanceId" :: Maybe (InstanceId), "HealthStatus" :: Maybe (String), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "LaunchedAt" :: Maybe (LaunchedAt), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "System" :: Maybe (SystemStatus), "Deployment" :: Maybe (Deployment), "AvailabilityZone" :: Maybe (String), "InstanceType" :: Maybe (String) } -> { "InstanceId" :: Maybe (InstanceId), "HealthStatus" :: Maybe (String), "Color" :: Maybe (String), "Causes" :: Maybe (Causes), "LaunchedAt" :: Maybe (LaunchedAt), "ApplicationMetrics" :: Maybe (ApplicationMetrics), "System" :: Maybe (SystemStatus), "Deployment" :: Maybe (Deployment), "AvailabilityZone" :: Maybe (String), "InstanceType" :: Maybe (String) }) -> SingleInstanceHealth
```

Constructs SingleInstanceHealth's fields from required parameters

#### `SolutionStackDescription`

``` purescript
newtype SolutionStackDescription
  = SolutionStackDescription { "SolutionStackName" :: Maybe (SolutionStackName), "PermittedFileTypes" :: Maybe (SolutionStackFileTypeList) }
```

<p>Describes the solution stack.</p>

##### Instances
``` purescript
Newtype SolutionStackDescription _
Generic SolutionStackDescription _
Show SolutionStackDescription
Decode SolutionStackDescription
Encode SolutionStackDescription
```

#### `newSolutionStackDescription`

``` purescript
newSolutionStackDescription :: SolutionStackDescription
```

Constructs SolutionStackDescription from required parameters

#### `newSolutionStackDescription'`

``` purescript
newSolutionStackDescription' :: ({ "SolutionStackName" :: Maybe (SolutionStackName), "PermittedFileTypes" :: Maybe (SolutionStackFileTypeList) } -> { "SolutionStackName" :: Maybe (SolutionStackName), "PermittedFileTypes" :: Maybe (SolutionStackFileTypeList) }) -> SolutionStackDescription
```

Constructs SolutionStackDescription's fields from required parameters

#### `SolutionStackFileTypeList`

``` purescript
newtype SolutionStackFileTypeList
  = SolutionStackFileTypeList (Array FileTypeExtension)
```

##### Instances
``` purescript
Newtype SolutionStackFileTypeList _
Generic SolutionStackFileTypeList _
Show SolutionStackFileTypeList
Decode SolutionStackFileTypeList
Encode SolutionStackFileTypeList
```

#### `SolutionStackName`

``` purescript
newtype SolutionStackName
  = SolutionStackName String
```

##### Instances
``` purescript
Newtype SolutionStackName _
Generic SolutionStackName _
Show SolutionStackName
Decode SolutionStackName
Encode SolutionStackName
```

#### `SourceBuildInformation`

``` purescript
newtype SourceBuildInformation
  = SourceBuildInformation { "SourceType" :: SourceType, "SourceRepository" :: SourceRepository, "SourceLocation" :: SourceLocation }
```

<p>Location of the source code for an application version.</p>

##### Instances
``` purescript
Newtype SourceBuildInformation _
Generic SourceBuildInformation _
Show SourceBuildInformation
Decode SourceBuildInformation
Encode SourceBuildInformation
```

#### `newSourceBuildInformation`

``` purescript
newSourceBuildInformation :: SourceLocation -> SourceRepository -> SourceType -> SourceBuildInformation
```

Constructs SourceBuildInformation from required parameters

#### `newSourceBuildInformation'`

``` purescript
newSourceBuildInformation' :: SourceLocation -> SourceRepository -> SourceType -> ({ "SourceType" :: SourceType, "SourceRepository" :: SourceRepository, "SourceLocation" :: SourceLocation } -> { "SourceType" :: SourceType, "SourceRepository" :: SourceRepository, "SourceLocation" :: SourceLocation }) -> SourceBuildInformation
```

Constructs SourceBuildInformation's fields from required parameters

#### `SourceBundleDeletionException`

``` purescript
newtype SourceBundleDeletionException
  = SourceBundleDeletionException NoArguments
```

<p>Unable to delete the Amazon S3 source bundle associated with the application version. The application version was deleted successfully.</p>

##### Instances
``` purescript
Newtype SourceBundleDeletionException _
Generic SourceBundleDeletionException _
Show SourceBundleDeletionException
Decode SourceBundleDeletionException
Encode SourceBundleDeletionException
```

#### `SourceConfiguration`

``` purescript
newtype SourceConfiguration
  = SourceConfiguration { "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName) }
```

<p>A specification for an environment configuration</p>

##### Instances
``` purescript
Newtype SourceConfiguration _
Generic SourceConfiguration _
Show SourceConfiguration
Decode SourceConfiguration
Encode SourceConfiguration
```

#### `newSourceConfiguration`

``` purescript
newSourceConfiguration :: SourceConfiguration
```

Constructs SourceConfiguration from required parameters

#### `newSourceConfiguration'`

``` purescript
newSourceConfiguration' :: ({ "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName) } -> { "ApplicationName" :: Maybe (ApplicationName), "TemplateName" :: Maybe (ConfigurationTemplateName) }) -> SourceConfiguration
```

Constructs SourceConfiguration's fields from required parameters

#### `SourceLocation`

``` purescript
newtype SourceLocation
  = SourceLocation String
```

##### Instances
``` purescript
Newtype SourceLocation _
Generic SourceLocation _
Show SourceLocation
Decode SourceLocation
Encode SourceLocation
```

#### `SourceRepository`

``` purescript
newtype SourceRepository
  = SourceRepository String
```

##### Instances
``` purescript
Newtype SourceRepository _
Generic SourceRepository _
Show SourceRepository
Decode SourceRepository
Encode SourceRepository
```

#### `SourceType`

``` purescript
newtype SourceType
  = SourceType String
```

##### Instances
``` purescript
Newtype SourceType _
Generic SourceType _
Show SourceType
Decode SourceType
Encode SourceType
```

#### `StatusCodes`

``` purescript
newtype StatusCodes
  = StatusCodes { "Status2xx" :: Maybe (NullableInteger), "Status3xx" :: Maybe (NullableInteger), "Status4xx" :: Maybe (NullableInteger), "Status5xx" :: Maybe (NullableInteger) }
```

<p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code Definitions</a>.</p>

##### Instances
``` purescript
Newtype StatusCodes _
Generic StatusCodes _
Show StatusCodes
Decode StatusCodes
Encode StatusCodes
```

#### `newStatusCodes`

``` purescript
newStatusCodes :: StatusCodes
```

Constructs StatusCodes from required parameters

#### `newStatusCodes'`

``` purescript
newStatusCodes' :: ({ "Status2xx" :: Maybe (NullableInteger), "Status3xx" :: Maybe (NullableInteger), "Status4xx" :: Maybe (NullableInteger), "Status5xx" :: Maybe (NullableInteger) } -> { "Status2xx" :: Maybe (NullableInteger), "Status3xx" :: Maybe (NullableInteger), "Status4xx" :: Maybe (NullableInteger), "Status5xx" :: Maybe (NullableInteger) }) -> StatusCodes
```

Constructs StatusCodes's fields from required parameters

#### `SupportedAddon`

``` purescript
newtype SupportedAddon
  = SupportedAddon String
```

##### Instances
``` purescript
Newtype SupportedAddon _
Generic SupportedAddon _
Show SupportedAddon
Decode SupportedAddon
Encode SupportedAddon
```

#### `SupportedAddonList`

``` purescript
newtype SupportedAddonList
  = SupportedAddonList (Array SupportedAddon)
```

##### Instances
``` purescript
Newtype SupportedAddonList _
Generic SupportedAddonList _
Show SupportedAddonList
Decode SupportedAddonList
Encode SupportedAddonList
```

#### `SupportedTier`

``` purescript
newtype SupportedTier
  = SupportedTier String
```

##### Instances
``` purescript
Newtype SupportedTier _
Generic SupportedTier _
Show SupportedTier
Decode SupportedTier
Encode SupportedTier
```

#### `SupportedTierList`

``` purescript
newtype SupportedTierList
  = SupportedTierList (Array SupportedTier)
```

##### Instances
``` purescript
Newtype SupportedTierList _
Generic SupportedTierList _
Show SupportedTierList
Decode SupportedTierList
Encode SupportedTierList
```

#### `SwapEnvironmentCNAMEsMessage`

``` purescript
newtype SwapEnvironmentCNAMEsMessage
  = SwapEnvironmentCNAMEsMessage { "SourceEnvironmentId" :: Maybe (EnvironmentId), "SourceEnvironmentName" :: Maybe (EnvironmentName), "DestinationEnvironmentId" :: Maybe (EnvironmentId), "DestinationEnvironmentName" :: Maybe (EnvironmentName) }
```

<p>Swaps the CNAMEs of two environments.</p>

##### Instances
``` purescript
Newtype SwapEnvironmentCNAMEsMessage _
Generic SwapEnvironmentCNAMEsMessage _
Show SwapEnvironmentCNAMEsMessage
Decode SwapEnvironmentCNAMEsMessage
Encode SwapEnvironmentCNAMEsMessage
```

#### `newSwapEnvironmentCNAMEsMessage`

``` purescript
newSwapEnvironmentCNAMEsMessage :: SwapEnvironmentCNAMEsMessage
```

Constructs SwapEnvironmentCNAMEsMessage from required parameters

#### `newSwapEnvironmentCNAMEsMessage'`

``` purescript
newSwapEnvironmentCNAMEsMessage' :: ({ "SourceEnvironmentId" :: Maybe (EnvironmentId), "SourceEnvironmentName" :: Maybe (EnvironmentName), "DestinationEnvironmentId" :: Maybe (EnvironmentId), "DestinationEnvironmentName" :: Maybe (EnvironmentName) } -> { "SourceEnvironmentId" :: Maybe (EnvironmentId), "SourceEnvironmentName" :: Maybe (EnvironmentName), "DestinationEnvironmentId" :: Maybe (EnvironmentId), "DestinationEnvironmentName" :: Maybe (EnvironmentName) }) -> SwapEnvironmentCNAMEsMessage
```

Constructs SwapEnvironmentCNAMEsMessage's fields from required parameters

#### `SystemStatus`

``` purescript
newtype SystemStatus
  = SystemStatus { "CPUUtilization" :: Maybe (CPUUtilization), "LoadAverage" :: Maybe (LoadAverage) }
```

<p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>

##### Instances
``` purescript
Newtype SystemStatus _
Generic SystemStatus _
Show SystemStatus
Decode SystemStatus
Encode SystemStatus
```

#### `newSystemStatus`

``` purescript
newSystemStatus :: SystemStatus
```

Constructs SystemStatus from required parameters

#### `newSystemStatus'`

``` purescript
newSystemStatus' :: ({ "CPUUtilization" :: Maybe (CPUUtilization), "LoadAverage" :: Maybe (LoadAverage) } -> { "CPUUtilization" :: Maybe (CPUUtilization), "LoadAverage" :: Maybe (LoadAverage) }) -> SystemStatus
```

Constructs SystemStatus's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) }
```

<p>Describes a tag applied to a resource in an environment.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) } -> { "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (Array Tag)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `TerminateEnvForce`

``` purescript
newtype TerminateEnvForce
  = TerminateEnvForce Boolean
```

##### Instances
``` purescript
Newtype TerminateEnvForce _
Generic TerminateEnvForce _
Show TerminateEnvForce
Decode TerminateEnvForce
Encode TerminateEnvForce
```

#### `TerminateEnvironmentMessage`

``` purescript
newtype TerminateEnvironmentMessage
  = TerminateEnvironmentMessage { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "TerminateResources" :: Maybe (TerminateEnvironmentResources), "ForceTerminate" :: Maybe (ForceTerminate) }
```

<p>Request to terminate an environment.</p>

##### Instances
``` purescript
Newtype TerminateEnvironmentMessage _
Generic TerminateEnvironmentMessage _
Show TerminateEnvironmentMessage
Decode TerminateEnvironmentMessage
Encode TerminateEnvironmentMessage
```

#### `newTerminateEnvironmentMessage`

``` purescript
newTerminateEnvironmentMessage :: TerminateEnvironmentMessage
```

Constructs TerminateEnvironmentMessage from required parameters

#### `newTerminateEnvironmentMessage'`

``` purescript
newTerminateEnvironmentMessage' :: ({ "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "TerminateResources" :: Maybe (TerminateEnvironmentResources), "ForceTerminate" :: Maybe (ForceTerminate) } -> { "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "TerminateResources" :: Maybe (TerminateEnvironmentResources), "ForceTerminate" :: Maybe (ForceTerminate) }) -> TerminateEnvironmentMessage
```

Constructs TerminateEnvironmentMessage's fields from required parameters

#### `TerminateEnvironmentResources`

``` purescript
newtype TerminateEnvironmentResources
  = TerminateEnvironmentResources Boolean
```

##### Instances
``` purescript
Newtype TerminateEnvironmentResources _
Generic TerminateEnvironmentResources _
Show TerminateEnvironmentResources
Decode TerminateEnvironmentResources
Encode TerminateEnvironmentResources
```

#### `TimeFilterEnd`

``` purescript
newtype TimeFilterEnd
  = TimeFilterEnd Timestamp
```

##### Instances
``` purescript
Newtype TimeFilterEnd _
Generic TimeFilterEnd _
Show TimeFilterEnd
Decode TimeFilterEnd
Encode TimeFilterEnd
```

#### `TimeFilterStart`

``` purescript
newtype TimeFilterStart
  = TimeFilterStart Timestamp
```

##### Instances
``` purescript
Newtype TimeFilterStart _
Generic TimeFilterStart _
Show TimeFilterStart
Decode TimeFilterStart
Encode TimeFilterStart
```

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `TooManyApplicationVersionsException`

``` purescript
newtype TooManyApplicationVersionsException
  = TooManyApplicationVersionsException NoArguments
```

<p>The specified account has reached its limit of application versions.</p>

##### Instances
``` purescript
Newtype TooManyApplicationVersionsException _
Generic TooManyApplicationVersionsException _
Show TooManyApplicationVersionsException
Decode TooManyApplicationVersionsException
Encode TooManyApplicationVersionsException
```

#### `TooManyApplicationsException`

``` purescript
newtype TooManyApplicationsException
  = TooManyApplicationsException NoArguments
```

<p>The specified account has reached its limit of applications.</p>

##### Instances
``` purescript
Newtype TooManyApplicationsException _
Generic TooManyApplicationsException _
Show TooManyApplicationsException
Decode TooManyApplicationsException
Encode TooManyApplicationsException
```

#### `TooManyBucketsException`

``` purescript
newtype TooManyBucketsException
  = TooManyBucketsException NoArguments
```

<p>The specified account has reached its limit of Amazon S3 buckets.</p>

##### Instances
``` purescript
Newtype TooManyBucketsException _
Generic TooManyBucketsException _
Show TooManyBucketsException
Decode TooManyBucketsException
Encode TooManyBucketsException
```

#### `TooManyConfigurationTemplatesException`

``` purescript
newtype TooManyConfigurationTemplatesException
  = TooManyConfigurationTemplatesException NoArguments
```

<p>The specified account has reached its limit of configuration templates.</p>

##### Instances
``` purescript
Newtype TooManyConfigurationTemplatesException _
Generic TooManyConfigurationTemplatesException _
Show TooManyConfigurationTemplatesException
Decode TooManyConfigurationTemplatesException
Encode TooManyConfigurationTemplatesException
```

#### `TooManyEnvironmentsException`

``` purescript
newtype TooManyEnvironmentsException
  = TooManyEnvironmentsException NoArguments
```

<p>The specified account has reached its limit of environments.</p>

##### Instances
``` purescript
Newtype TooManyEnvironmentsException _
Generic TooManyEnvironmentsException _
Show TooManyEnvironmentsException
Decode TooManyEnvironmentsException
Encode TooManyEnvironmentsException
```

#### `TooManyPlatformsException`

``` purescript
newtype TooManyPlatformsException
  = TooManyPlatformsException NoArguments
```

<p>You have exceeded the maximum number of allowed platforms associated with the account.</p>

##### Instances
``` purescript
Newtype TooManyPlatformsException _
Generic TooManyPlatformsException _
Show TooManyPlatformsException
Decode TooManyPlatformsException
Encode TooManyPlatformsException
```

#### `TooManyTagsException`

``` purescript
newtype TooManyTagsException
  = TooManyTagsException NoArguments
```

<p>The number of tags in the resource would exceed the number of tags that each resource can have.</p> <p>To calculate this, the operation considers both the number of tags the resource already has and the tags this operation would add if it succeeded.</p>

##### Instances
``` purescript
Newtype TooManyTagsException _
Generic TooManyTagsException _
Show TooManyTagsException
Decode TooManyTagsException
Encode TooManyTagsException
```

#### `Trigger`

``` purescript
newtype Trigger
  = Trigger { "Name" :: Maybe (ResourceId) }
```

<p>Describes a trigger.</p>

##### Instances
``` purescript
Newtype Trigger _
Generic Trigger _
Show Trigger
Decode Trigger
Encode Trigger
```

#### `newTrigger`

``` purescript
newTrigger :: Trigger
```

Constructs Trigger from required parameters

#### `newTrigger'`

``` purescript
newTrigger' :: ({ "Name" :: Maybe (ResourceId) } -> { "Name" :: Maybe (ResourceId) }) -> Trigger
```

Constructs Trigger's fields from required parameters

#### `TriggerList`

``` purescript
newtype TriggerList
  = TriggerList (Array Trigger)
```

##### Instances
``` purescript
Newtype TriggerList _
Generic TriggerList _
Show TriggerList
Decode TriggerList
Encode TriggerList
```

#### `UpdateApplicationMessage`

``` purescript
newtype UpdateApplicationMessage
  = UpdateApplicationMessage { "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description) }
```

<p>Request to update an application.</p>

##### Instances
``` purescript
Newtype UpdateApplicationMessage _
Generic UpdateApplicationMessage _
Show UpdateApplicationMessage
Decode UpdateApplicationMessage
Encode UpdateApplicationMessage
```

#### `newUpdateApplicationMessage`

``` purescript
newUpdateApplicationMessage :: ApplicationName -> UpdateApplicationMessage
```

Constructs UpdateApplicationMessage from required parameters

#### `newUpdateApplicationMessage'`

``` purescript
newUpdateApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description) } -> { "ApplicationName" :: ApplicationName, "Description" :: Maybe (Description) }) -> UpdateApplicationMessage
```

Constructs UpdateApplicationMessage's fields from required parameters

#### `UpdateApplicationResourceLifecycleMessage`

``` purescript
newtype UpdateApplicationResourceLifecycleMessage
  = UpdateApplicationResourceLifecycleMessage { "ApplicationName" :: ApplicationName, "ResourceLifecycleConfig" :: ApplicationResourceLifecycleConfig }
```

##### Instances
``` purescript
Newtype UpdateApplicationResourceLifecycleMessage _
Generic UpdateApplicationResourceLifecycleMessage _
Show UpdateApplicationResourceLifecycleMessage
Decode UpdateApplicationResourceLifecycleMessage
Encode UpdateApplicationResourceLifecycleMessage
```

#### `newUpdateApplicationResourceLifecycleMessage`

``` purescript
newUpdateApplicationResourceLifecycleMessage :: ApplicationName -> ApplicationResourceLifecycleConfig -> UpdateApplicationResourceLifecycleMessage
```

Constructs UpdateApplicationResourceLifecycleMessage from required parameters

#### `newUpdateApplicationResourceLifecycleMessage'`

``` purescript
newUpdateApplicationResourceLifecycleMessage' :: ApplicationName -> ApplicationResourceLifecycleConfig -> ({ "ApplicationName" :: ApplicationName, "ResourceLifecycleConfig" :: ApplicationResourceLifecycleConfig } -> { "ApplicationName" :: ApplicationName, "ResourceLifecycleConfig" :: ApplicationResourceLifecycleConfig }) -> UpdateApplicationResourceLifecycleMessage
```

Constructs UpdateApplicationResourceLifecycleMessage's fields from required parameters

#### `UpdateApplicationVersionMessage`

``` purescript
newtype UpdateApplicationVersionMessage
  = UpdateApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description) }
```

<p/>

##### Instances
``` purescript
Newtype UpdateApplicationVersionMessage _
Generic UpdateApplicationVersionMessage _
Show UpdateApplicationVersionMessage
Decode UpdateApplicationVersionMessage
Encode UpdateApplicationVersionMessage
```

#### `newUpdateApplicationVersionMessage`

``` purescript
newUpdateApplicationVersionMessage :: ApplicationName -> VersionLabel -> UpdateApplicationVersionMessage
```

Constructs UpdateApplicationVersionMessage from required parameters

#### `newUpdateApplicationVersionMessage'`

``` purescript
newUpdateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: Maybe (Description) }) -> UpdateApplicationVersionMessage
```

Constructs UpdateApplicationVersionMessage's fields from required parameters

#### `UpdateConfigurationTemplateMessage`

``` purescript
newtype UpdateConfigurationTemplateMessage
  = UpdateConfigurationTemplateMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }
```

<p>The result message containing the options for the specified solution stack.</p>

##### Instances
``` purescript
Newtype UpdateConfigurationTemplateMessage _
Generic UpdateConfigurationTemplateMessage _
Show UpdateConfigurationTemplateMessage
Decode UpdateConfigurationTemplateMessage
Encode UpdateConfigurationTemplateMessage
```

#### `newUpdateConfigurationTemplateMessage`

``` purescript
newUpdateConfigurationTemplateMessage :: ApplicationName -> ConfigurationTemplateName -> UpdateConfigurationTemplateMessage
```

Constructs UpdateConfigurationTemplateMessage from required parameters

#### `newUpdateConfigurationTemplateMessage'`

``` purescript
newUpdateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: Maybe (Description), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }) -> UpdateConfigurationTemplateMessage
```

Constructs UpdateConfigurationTemplateMessage's fields from required parameters

#### `UpdateDate`

``` purescript
newtype UpdateDate
  = UpdateDate Timestamp
```

##### Instances
``` purescript
Newtype UpdateDate _
Generic UpdateDate _
Show UpdateDate
Decode UpdateDate
Encode UpdateDate
```

#### `UpdateEnvironmentMessage`

``` purescript
newtype UpdateEnvironmentMessage
  = UpdateEnvironmentMessage { "ApplicationName" :: Maybe (ApplicationName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "Tier" :: Maybe (EnvironmentTier), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }
```

<p>Request to update an environment.</p>

##### Instances
``` purescript
Newtype UpdateEnvironmentMessage _
Generic UpdateEnvironmentMessage _
Show UpdateEnvironmentMessage
Decode UpdateEnvironmentMessage
Encode UpdateEnvironmentMessage
```

#### `newUpdateEnvironmentMessage`

``` purescript
newUpdateEnvironmentMessage :: UpdateEnvironmentMessage
```

Constructs UpdateEnvironmentMessage from required parameters

#### `newUpdateEnvironmentMessage'`

``` purescript
newUpdateEnvironmentMessage' :: ({ "ApplicationName" :: Maybe (ApplicationName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "Tier" :: Maybe (EnvironmentTier), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) } -> { "ApplicationName" :: Maybe (ApplicationName), "EnvironmentId" :: Maybe (EnvironmentId), "EnvironmentName" :: Maybe (EnvironmentName), "GroupName" :: Maybe (GroupName), "Description" :: Maybe (Description), "Tier" :: Maybe (EnvironmentTier), "VersionLabel" :: Maybe (VersionLabel), "TemplateName" :: Maybe (ConfigurationTemplateName), "SolutionStackName" :: Maybe (SolutionStackName), "PlatformArn" :: Maybe (PlatformArn), "OptionSettings" :: Maybe (ConfigurationOptionSettingsList), "OptionsToRemove" :: Maybe (OptionsSpecifierList) }) -> UpdateEnvironmentMessage
```

Constructs UpdateEnvironmentMessage's fields from required parameters

#### `UpdateTagsForResourceMessage`

``` purescript
newtype UpdateTagsForResourceMessage
  = UpdateTagsForResourceMessage { "ResourceArn" :: ResourceArn, "TagsToAdd" :: Maybe (TagList), "TagsToRemove" :: Maybe (TagKeyList) }
```

##### Instances
``` purescript
Newtype UpdateTagsForResourceMessage _
Generic UpdateTagsForResourceMessage _
Show UpdateTagsForResourceMessage
Decode UpdateTagsForResourceMessage
Encode UpdateTagsForResourceMessage
```

#### `newUpdateTagsForResourceMessage`

``` purescript
newUpdateTagsForResourceMessage :: ResourceArn -> UpdateTagsForResourceMessage
```

Constructs UpdateTagsForResourceMessage from required parameters

#### `newUpdateTagsForResourceMessage'`

``` purescript
newUpdateTagsForResourceMessage' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn, "TagsToAdd" :: Maybe (TagList), "TagsToRemove" :: Maybe (TagKeyList) } -> { "ResourceArn" :: ResourceArn, "TagsToAdd" :: Maybe (TagList), "TagsToRemove" :: Maybe (TagKeyList) }) -> UpdateTagsForResourceMessage
```

Constructs UpdateTagsForResourceMessage's fields from required parameters

#### `UserDefinedOption`

``` purescript
newtype UserDefinedOption
  = UserDefinedOption Boolean
```

##### Instances
``` purescript
Newtype UserDefinedOption _
Generic UserDefinedOption _
Show UserDefinedOption
Decode UserDefinedOption
Encode UserDefinedOption
```

#### `ValidateConfigurationSettingsMessage`

``` purescript
newtype ValidateConfigurationSettingsMessage
  = ValidateConfigurationSettingsMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList }
```

<p>A list of validation messages for a specified configuration template.</p>

##### Instances
``` purescript
Newtype ValidateConfigurationSettingsMessage _
Generic ValidateConfigurationSettingsMessage _
Show ValidateConfigurationSettingsMessage
Decode ValidateConfigurationSettingsMessage
Encode ValidateConfigurationSettingsMessage
```

#### `newValidateConfigurationSettingsMessage`

``` purescript
newValidateConfigurationSettingsMessage :: ApplicationName -> ConfigurationOptionSettingsList -> ValidateConfigurationSettingsMessage
```

Constructs ValidateConfigurationSettingsMessage from required parameters

#### `newValidateConfigurationSettingsMessage'`

``` purescript
newValidateConfigurationSettingsMessage' :: ApplicationName -> ConfigurationOptionSettingsList -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: Maybe (ConfigurationTemplateName), "EnvironmentName" :: Maybe (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList }) -> ValidateConfigurationSettingsMessage
```

Constructs ValidateConfigurationSettingsMessage's fields from required parameters

#### `ValidationMessage`

``` purescript
newtype ValidationMessage
  = ValidationMessage { "Message" :: Maybe (ValidationMessageString), "Severity" :: Maybe (ValidationSeverity), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) }
```

<p>An error or warning for a desired configuration option value.</p>

##### Instances
``` purescript
Newtype ValidationMessage _
Generic ValidationMessage _
Show ValidationMessage
Decode ValidationMessage
Encode ValidationMessage
```

#### `newValidationMessage`

``` purescript
newValidationMessage :: ValidationMessage
```

Constructs ValidationMessage from required parameters

#### `newValidationMessage'`

``` purescript
newValidationMessage' :: ({ "Message" :: Maybe (ValidationMessageString), "Severity" :: Maybe (ValidationSeverity), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) } -> { "Message" :: Maybe (ValidationMessageString), "Severity" :: Maybe (ValidationSeverity), "Namespace" :: Maybe (OptionNamespace), "OptionName" :: Maybe (ConfigurationOptionName) }) -> ValidationMessage
```

Constructs ValidationMessage's fields from required parameters

#### `ValidationMessageString`

``` purescript
newtype ValidationMessageString
  = ValidationMessageString String
```

##### Instances
``` purescript
Newtype ValidationMessageString _
Generic ValidationMessageString _
Show ValidationMessageString
Decode ValidationMessageString
Encode ValidationMessageString
```

#### `ValidationMessagesList`

``` purescript
newtype ValidationMessagesList
  = ValidationMessagesList (Array ValidationMessage)
```

##### Instances
``` purescript
Newtype ValidationMessagesList _
Generic ValidationMessagesList _
Show ValidationMessagesList
Decode ValidationMessagesList
Encode ValidationMessagesList
```

#### `ValidationSeverity`

``` purescript
newtype ValidationSeverity
  = ValidationSeverity String
```

##### Instances
``` purescript
Newtype ValidationSeverity _
Generic ValidationSeverity _
Show ValidationSeverity
Decode ValidationSeverity
Encode ValidationSeverity
```

#### `VersionLabel`

``` purescript
newtype VersionLabel
  = VersionLabel String
```

##### Instances
``` purescript
Newtype VersionLabel _
Generic VersionLabel _
Show VersionLabel
Decode VersionLabel
Encode VersionLabel
```

#### `VersionLabels`

``` purescript
newtype VersionLabels
  = VersionLabels (Array VersionLabel)
```

##### Instances
``` purescript
Newtype VersionLabels _
Generic VersionLabels _
Show VersionLabels
Decode VersionLabels
Encode VersionLabels
```

#### `VersionLabelsList`

``` purescript
newtype VersionLabelsList
  = VersionLabelsList (Array VersionLabel)
```

##### Instances
``` purescript
Newtype VersionLabelsList _
Generic VersionLabelsList _
Show VersionLabelsList
Decode VersionLabelsList
Encode VersionLabelsList
```

#### `VirtualizationType`

``` purescript
newtype VirtualizationType
  = VirtualizationType String
```

##### Instances
``` purescript
Newtype VirtualizationType _
Generic VirtualizationType _
Show VirtualizationType
Decode VirtualizationType
Encode VirtualizationType
```


