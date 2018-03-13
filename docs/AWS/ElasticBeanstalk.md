## Module AWS.ElasticBeanstalk

<fullname>AWS Elastic Beanstalk</fullname> <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud.</p> <p>For more information about this product, go to the <a href="http://aws.amazon.com/elasticbeanstalk/">AWS Elastic Beanstalk</a> details page. The location of the latest AWS Elastic Beanstalk WSDL is <a href="http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> <p> <b>Endpoints</b> </p> <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p>

#### `abortEnvironmentUpdate`

``` purescript
abortEnvironmentUpdate :: forall eff. AbortEnvironmentUpdateMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels in-progress environment configuration update or application version deployment.</p>

#### `applyEnvironmentManagedAction`

``` purescript
applyEnvironmentManagedAction :: forall eff. ApplyEnvironmentManagedActionRequest -> Aff (exception :: EXCEPTION | eff) ApplyEnvironmentManagedActionResult
```

<p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>

#### `checkDNSAvailability`

``` purescript
checkDNSAvailability :: forall eff. CheckDNSAvailabilityMessage -> Aff (exception :: EXCEPTION | eff) CheckDNSAvailabilityResultMessage
```

<p>Checks if the specified CNAME is available.</p>

#### `composeEnvironments`

``` purescript
composeEnvironments :: forall eff. ComposeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescriptionsMessage
```

<p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a> for details.</p>

#### `createApplication`

``` purescript
createApplication :: forall eff. CreateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionMessage
```

<p> Creates an application that has one configuration template named <code>default</code> and no application versions. </p>

#### `createApplicationVersion`

``` purescript
createApplicationVersion :: forall eff. CreateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionMessage
```

<p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>

#### `createConfigurationTemplate`

``` purescript
createConfigurationTemplate :: forall eff. CreateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescription
```

<p>Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>

#### `createEnvironment`

``` purescript
createEnvironment :: forall eff. CreateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Launches an environment for the specified application using the specified configuration.</p>

#### `createPlatformVersion`

``` purescript
createPlatformVersion :: forall eff. CreatePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) CreatePlatformVersionResult
```

<p>Create a new version of your custom platform.</p>

#### `createStorageLocation`

``` purescript
createStorageLocation :: forall eff. Aff (exception :: EXCEPTION | eff) CreateStorageLocationResultMessage
```

<p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, <code>CreateStorageLocation</code> still returns the bucket name but does not create a new bucket.</p>

#### `deleteApplication`

``` purescript
deleteApplication :: forall eff. DeleteApplicationMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>

#### `deleteApplicationVersion`

``` purescript
deleteApplicationVersion :: forall eff. DeleteApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>

#### `deleteConfigurationTemplate`

``` purescript
deleteConfigurationTemplate :: forall eff. DeleteConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>

#### `deleteEnvironmentConfiguration`

``` purescript
deleteEnvironmentConfiguration :: forall eff. DeleteEnvironmentConfigurationMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>

#### `deletePlatformVersion`

``` purescript
deletePlatformVersion :: forall eff. DeletePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) DeletePlatformVersionResult
```

<p>Deletes the specified version of a custom platform.</p>

#### `describeApplicationVersions`

``` purescript
describeApplicationVersions :: forall eff. DescribeApplicationVersionsMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionsMessage
```

<p>Retrieve a list of application versions.</p>

#### `describeApplications`

``` purescript
describeApplications :: forall eff. DescribeApplicationsMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionsMessage
```

<p>Returns the descriptions of existing applications.</p>

#### `describeConfigurationOptions`

``` purescript
describeConfigurationOptions :: forall eff. DescribeConfigurationOptionsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationOptionsDescription
```

<p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>

#### `describeConfigurationSettings`

``` purescript
describeConfigurationSettings :: forall eff. DescribeConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescriptions
```

<p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>

#### `describeEnvironmentHealth`

``` purescript
describeEnvironmentHealth :: forall eff. DescribeEnvironmentHealthRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentHealthResult
```

<p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>

#### `describeEnvironmentManagedActionHistory`

``` purescript
describeEnvironmentManagedActionHistory :: forall eff. DescribeEnvironmentManagedActionHistoryRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentManagedActionHistoryResult
```

<p>Lists an environment's completed and failed managed actions.</p>

#### `describeEnvironmentManagedActions`

``` purescript
describeEnvironmentManagedActions :: forall eff. DescribeEnvironmentManagedActionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentManagedActionsResult
```

<p>Lists an environment's upcoming and in-progress managed actions.</p>

#### `describeEnvironmentResources`

``` purescript
describeEnvironmentResources :: forall eff. DescribeEnvironmentResourcesMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentResourceDescriptionsMessage
```

<p>Returns AWS resources for this environment.</p>

#### `describeEnvironments`

``` purescript
describeEnvironments :: forall eff. DescribeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescriptionsMessage
```

<p>Returns descriptions for existing environments.</p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. DescribeEventsMessage -> Aff (exception :: EXCEPTION | eff) EventDescriptionsMessage
```

<p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>

#### `describeInstancesHealth`

``` purescript
describeInstancesHealth :: forall eff. DescribeInstancesHealthRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstancesHealthResult
```

<p>Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health reporting</a>.</p>

#### `describePlatformVersion`

``` purescript
describePlatformVersion :: forall eff. DescribePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) DescribePlatformVersionResult
```

<p>Describes the version of the platform.</p>

#### `listAvailableSolutionStacks`

``` purescript
listAvailableSolutionStacks :: forall eff. Aff (exception :: EXCEPTION | eff) ListAvailableSolutionStacksResultMessage
```

<p>Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.</p>

#### `listPlatformVersions`

``` purescript
listPlatformVersions :: forall eff. ListPlatformVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListPlatformVersionsResult
```

<p>Lists the available platforms.</p>

#### `listTagsForResource`

``` purescript
listTagsForResource :: forall eff. ListTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) ResourceTagsDescriptionMessage
```

<p>Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p>

#### `rebuildEnvironment`

``` purescript
rebuildEnvironment :: forall eff. RebuildEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>

#### `requestEnvironmentInfo`

``` purescript
requestEnvironmentInfo :: forall eff. RequestEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>

#### `restartAppServer`

``` purescript
restartAppServer :: forall eff. RestartAppServerMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>

#### `retrieveEnvironmentInfo`

``` purescript
retrieveEnvironmentInfo :: forall eff. RetrieveEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) RetrieveEnvironmentInfoResultMessage
```

<p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>

#### `swapEnvironmentCNAMEs`

``` purescript
swapEnvironmentCNAMEs :: forall eff. SwapEnvironmentCNAMEsMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Swaps the CNAMEs of two environments.</p>

#### `terminateEnvironment`

``` purescript
terminateEnvironment :: forall eff. TerminateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Terminates the specified environment.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. UpdateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionMessage
```

<p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>

#### `updateApplicationResourceLifecycle`

``` purescript
updateApplicationResourceLifecycle :: forall eff. UpdateApplicationResourceLifecycleMessage -> Aff (exception :: EXCEPTION | eff) ApplicationResourceLifecycleDescriptionMessage
```

<p>Modifies lifecycle settings for an application.</p>

#### `updateApplicationVersion`

``` purescript
updateApplicationVersion :: forall eff. UpdateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionMessage
```

<p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>

#### `updateConfigurationTemplate`

``` purescript
updateConfigurationTemplate :: forall eff. UpdateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescription
```

<p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>

#### `updateEnvironment`

``` purescript
updateEnvironment :: forall eff. UpdateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>

#### `updateTagsForResource`

``` purescript
updateTagsForResource :: forall eff. UpdateTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code> for tags to add or update, and <code>TagsToRemove</code>.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p> <p>If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:</p> <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code> parameter.</p> </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code> parameter.</p> </dd> </dl> <p>For details about creating a custom user policy, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>

#### `validateConfigurationSettings`

``` purescript
validateConfigurationSettings :: forall eff. ValidateConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsValidationMessages
```

<p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>

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
  = AbortEnvironmentUpdateMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newAbortEnvironmentUpdateMessage' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> AbortEnvironmentUpdateMessage
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
  = ApplicationDescription { "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Versions" :: NullOrUndefined (VersionLabelsList), "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }
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
newApplicationDescription' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Versions" :: NullOrUndefined (VersionLabelsList), "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Versions" :: NullOrUndefined (VersionLabelsList), "ConfigurationTemplates" :: NullOrUndefined (ConfigurationTemplateNamesList), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }) -> ApplicationDescription
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
  = ApplicationDescriptionMessage { "Application" :: NullOrUndefined (ApplicationDescription) }
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
newApplicationDescriptionMessage' :: ({ "Application" :: NullOrUndefined (ApplicationDescription) } -> { "Application" :: NullOrUndefined (ApplicationDescription) }) -> ApplicationDescriptionMessage
```

Constructs ApplicationDescriptionMessage's fields from required parameters

#### `ApplicationDescriptionsMessage`

``` purescript
newtype ApplicationDescriptionsMessage
  = ApplicationDescriptionsMessage { "Applications" :: NullOrUndefined (ApplicationDescriptionList) }
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
newApplicationDescriptionsMessage' :: ({ "Applications" :: NullOrUndefined (ApplicationDescriptionList) } -> { "Applications" :: NullOrUndefined (ApplicationDescriptionList) }) -> ApplicationDescriptionsMessage
```

Constructs ApplicationDescriptionsMessage's fields from required parameters

#### `ApplicationMetrics`

``` purescript
newtype ApplicationMetrics
  = ApplicationMetrics { "Duration" :: NullOrUndefined (NullableInteger), "RequestCount" :: NullOrUndefined (RequestCount), "StatusCodes" :: NullOrUndefined (StatusCodes), "Latency" :: NullOrUndefined (Latency) }
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
newApplicationMetrics' :: ({ "Duration" :: NullOrUndefined (NullableInteger), "RequestCount" :: NullOrUndefined (RequestCount), "StatusCodes" :: NullOrUndefined (StatusCodes), "Latency" :: NullOrUndefined (Latency) } -> { "Duration" :: NullOrUndefined (NullableInteger), "RequestCount" :: NullOrUndefined (RequestCount), "StatusCodes" :: NullOrUndefined (StatusCodes), "Latency" :: NullOrUndefined (Latency) }) -> ApplicationMetrics
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
  = ApplicationResourceLifecycleConfig { "ServiceRole" :: NullOrUndefined (String), "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig) }
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
newApplicationResourceLifecycleConfig' :: ({ "ServiceRole" :: NullOrUndefined (String), "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig) } -> { "ServiceRole" :: NullOrUndefined (String), "VersionLifecycleConfig" :: NullOrUndefined (ApplicationVersionLifecycleConfig) }) -> ApplicationResourceLifecycleConfig
```

Constructs ApplicationResourceLifecycleConfig's fields from required parameters

#### `ApplicationResourceLifecycleDescriptionMessage`

``` purescript
newtype ApplicationResourceLifecycleDescriptionMessage
  = ApplicationResourceLifecycleDescriptionMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }
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
newApplicationResourceLifecycleDescriptionMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }) -> ApplicationResourceLifecycleDescriptionMessage
```

Constructs ApplicationResourceLifecycleDescriptionMessage's fields from required parameters

#### `ApplicationVersionDescription`

``` purescript
newtype ApplicationVersionDescription
  = ApplicationVersionDescription { "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "VersionLabel" :: NullOrUndefined (VersionLabel), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "BuildArn" :: NullOrUndefined (String), "SourceBundle" :: NullOrUndefined (S3Location), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (ApplicationVersionStatus) }
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
newApplicationVersionDescription' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "VersionLabel" :: NullOrUndefined (VersionLabel), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "BuildArn" :: NullOrUndefined (String), "SourceBundle" :: NullOrUndefined (S3Location), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (ApplicationVersionStatus) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "Description" :: NullOrUndefined (Description), "VersionLabel" :: NullOrUndefined (VersionLabel), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "BuildArn" :: NullOrUndefined (String), "SourceBundle" :: NullOrUndefined (S3Location), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (ApplicationVersionStatus) }) -> ApplicationVersionDescription
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
  = ApplicationVersionDescriptionMessage { "ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription) }
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
newApplicationVersionDescriptionMessage' :: ({ "ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription) } -> { "ApplicationVersion" :: NullOrUndefined (ApplicationVersionDescription) }) -> ApplicationVersionDescriptionMessage
```

Constructs ApplicationVersionDescriptionMessage's fields from required parameters

#### `ApplicationVersionDescriptionsMessage`

``` purescript
newtype ApplicationVersionDescriptionsMessage
  = ApplicationVersionDescriptionsMessage { "ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList), "NextToken" :: NullOrUndefined (Token) }
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
newApplicationVersionDescriptionsMessage' :: ({ "ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList), "NextToken" :: NullOrUndefined (Token) } -> { "ApplicationVersions" :: NullOrUndefined (ApplicationVersionDescriptionList), "NextToken" :: NullOrUndefined (Token) }) -> ApplicationVersionDescriptionsMessage
```

Constructs ApplicationVersionDescriptionsMessage's fields from required parameters

#### `ApplicationVersionLifecycleConfig`

``` purescript
newtype ApplicationVersionLifecycleConfig
  = ApplicationVersionLifecycleConfig { "MaxCountRule" :: NullOrUndefined (MaxCountRule), "MaxAgeRule" :: NullOrUndefined (MaxAgeRule) }
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
newApplicationVersionLifecycleConfig' :: ({ "MaxCountRule" :: NullOrUndefined (MaxCountRule), "MaxAgeRule" :: NullOrUndefined (MaxAgeRule) } -> { "MaxCountRule" :: NullOrUndefined (MaxCountRule), "MaxAgeRule" :: NullOrUndefined (MaxAgeRule) }) -> ApplicationVersionLifecycleConfig
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
  = ApplyEnvironmentManagedActionRequest { "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "ActionId" :: String }
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
newApplyEnvironmentManagedActionRequest' :: String -> ({ "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "ActionId" :: String } -> { "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "ActionId" :: String }) -> ApplyEnvironmentManagedActionRequest
```

Constructs ApplyEnvironmentManagedActionRequest's fields from required parameters

#### `ApplyEnvironmentManagedActionResult`

``` purescript
newtype ApplyEnvironmentManagedActionResult
  = ApplyEnvironmentManagedActionResult { "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (String) }
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
newApplyEnvironmentManagedActionResult' :: ({ "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (String) } -> { "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (String) }) -> ApplyEnvironmentManagedActionResult
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
  = AutoScalingGroup { "Name" :: NullOrUndefined (ResourceId) }
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
newAutoScalingGroup' :: ({ "Name" :: NullOrUndefined (ResourceId) } -> { "Name" :: NullOrUndefined (ResourceId) }) -> AutoScalingGroup
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
  = BuildConfiguration { "ArtifactName" :: NullOrUndefined (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: NullOrUndefined (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: NullOrUndefined (BoxedInt) }
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
newBuildConfiguration' :: NonEmptyString -> NonEmptyString -> ({ "ArtifactName" :: NullOrUndefined (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: NullOrUndefined (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: NullOrUndefined (BoxedInt) } -> { "ArtifactName" :: NullOrUndefined (String), "CodeBuildServiceRole" :: NonEmptyString, "ComputeType" :: NullOrUndefined (ComputeType), "Image" :: NonEmptyString, "TimeoutInMinutes" :: NullOrUndefined (BoxedInt) }) -> BuildConfiguration
```

Constructs BuildConfiguration's fields from required parameters

#### `Builder`

``` purescript
newtype Builder
  = Builder { "ARN" :: NullOrUndefined (ARN) }
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
newBuilder' :: ({ "ARN" :: NullOrUndefined (ARN) } -> { "ARN" :: NullOrUndefined (ARN) }) -> Builder
```

Constructs Builder's fields from required parameters

#### `CPUUtilization`

``` purescript
newtype CPUUtilization
  = CPUUtilization { "User" :: NullOrUndefined (NullableDouble), "Nice" :: NullOrUndefined (NullableDouble), "System" :: NullOrUndefined (NullableDouble), "Idle" :: NullOrUndefined (NullableDouble), "IOWait" :: NullOrUndefined (NullableDouble), "IRQ" :: NullOrUndefined (NullableDouble), "SoftIRQ" :: NullOrUndefined (NullableDouble) }
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
newCPUUtilization' :: ({ "User" :: NullOrUndefined (NullableDouble), "Nice" :: NullOrUndefined (NullableDouble), "System" :: NullOrUndefined (NullableDouble), "Idle" :: NullOrUndefined (NullableDouble), "IOWait" :: NullOrUndefined (NullableDouble), "IRQ" :: NullOrUndefined (NullableDouble), "SoftIRQ" :: NullOrUndefined (NullableDouble) } -> { "User" :: NullOrUndefined (NullableDouble), "Nice" :: NullOrUndefined (NullableDouble), "System" :: NullOrUndefined (NullableDouble), "Idle" :: NullOrUndefined (NullableDouble), "IOWait" :: NullOrUndefined (NullableDouble), "IRQ" :: NullOrUndefined (NullableDouble), "SoftIRQ" :: NullOrUndefined (NullableDouble) }) -> CPUUtilization
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
  = CheckDNSAvailabilityResultMessage { "Available" :: NullOrUndefined (CnameAvailability), "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname) }
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
newCheckDNSAvailabilityResultMessage' :: ({ "Available" :: NullOrUndefined (CnameAvailability), "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname) } -> { "Available" :: NullOrUndefined (CnameAvailability), "FullyQualifiedCNAME" :: NullOrUndefined (DNSCname) }) -> CheckDNSAvailabilityResultMessage
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
  = ComposeEnvironmentsMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "GroupName" :: NullOrUndefined (GroupName), "VersionLabels" :: NullOrUndefined (VersionLabels) }
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
newComposeEnvironmentsMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "GroupName" :: NullOrUndefined (GroupName), "VersionLabels" :: NullOrUndefined (VersionLabels) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "GroupName" :: NullOrUndefined (GroupName), "VersionLabels" :: NullOrUndefined (VersionLabels) }) -> ComposeEnvironmentsMessage
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
  = ConfigurationOptionDescription { "Namespace" :: NullOrUndefined (OptionNamespace), "Name" :: NullOrUndefined (ConfigurationOptionName), "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue), "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity), "UserDefined" :: NullOrUndefined (UserDefinedOption), "ValueType" :: NullOrUndefined (ConfigurationOptionValueType), "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues), "MinValue" :: NullOrUndefined (OptionRestrictionMinValue), "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue), "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength), "Regex" :: NullOrUndefined (OptionRestrictionRegex) }
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
newConfigurationOptionDescription' :: ({ "Namespace" :: NullOrUndefined (OptionNamespace), "Name" :: NullOrUndefined (ConfigurationOptionName), "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue), "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity), "UserDefined" :: NullOrUndefined (UserDefinedOption), "ValueType" :: NullOrUndefined (ConfigurationOptionValueType), "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues), "MinValue" :: NullOrUndefined (OptionRestrictionMinValue), "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue), "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength), "Regex" :: NullOrUndefined (OptionRestrictionRegex) } -> { "Namespace" :: NullOrUndefined (OptionNamespace), "Name" :: NullOrUndefined (ConfigurationOptionName), "DefaultValue" :: NullOrUndefined (ConfigurationOptionDefaultValue), "ChangeSeverity" :: NullOrUndefined (ConfigurationOptionSeverity), "UserDefined" :: NullOrUndefined (UserDefinedOption), "ValueType" :: NullOrUndefined (ConfigurationOptionValueType), "ValueOptions" :: NullOrUndefined (ConfigurationOptionPossibleValues), "MinValue" :: NullOrUndefined (OptionRestrictionMinValue), "MaxValue" :: NullOrUndefined (OptionRestrictionMaxValue), "MaxLength" :: NullOrUndefined (OptionRestrictionMaxLength), "Regex" :: NullOrUndefined (OptionRestrictionRegex) }) -> ConfigurationOptionDescription
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
  = ConfigurationOptionSetting { "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName), "Value" :: NullOrUndefined (ConfigurationOptionValue) }
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
newConfigurationOptionSetting' :: ({ "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName), "Value" :: NullOrUndefined (ConfigurationOptionValue) } -> { "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName), "Value" :: NullOrUndefined (ConfigurationOptionValue) }) -> ConfigurationOptionSetting
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
  = ConfigurationOptionsDescription { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList) }
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
newConfigurationOptionsDescription' :: ({ "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList) } -> { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (ConfigurationOptionDescriptionsList) }) -> ConfigurationOptionsDescription
```

Constructs ConfigurationOptionsDescription's fields from required parameters

#### `ConfigurationSettingsDescription`

``` purescript
newtype ConfigurationSettingsDescription
  = ConfigurationSettingsDescription { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }
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
newConfigurationSettingsDescription' :: ({ "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "DeploymentStatus" :: NullOrUndefined (ConfigurationDeploymentStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }) -> ConfigurationSettingsDescription
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
  = ConfigurationSettingsDescriptions { "ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList) }
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
newConfigurationSettingsDescriptions' :: ({ "ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList) } -> { "ConfigurationSettings" :: NullOrUndefined (ConfigurationSettingsDescriptionList) }) -> ConfigurationSettingsDescriptions
```

Constructs ConfigurationSettingsDescriptions's fields from required parameters

#### `ConfigurationSettingsValidationMessages`

``` purescript
newtype ConfigurationSettingsValidationMessages
  = ConfigurationSettingsValidationMessages { "Messages" :: NullOrUndefined (ValidationMessagesList) }
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
newConfigurationSettingsValidationMessages' :: ({ "Messages" :: NullOrUndefined (ValidationMessagesList) } -> { "Messages" :: NullOrUndefined (ValidationMessagesList) }) -> ConfigurationSettingsValidationMessages
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
  = CreateApplicationMessage { "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }
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
newCreateApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) } -> { "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description), "ResourceLifecycleConfig" :: NullOrUndefined (ApplicationResourceLifecycleConfig) }) -> CreateApplicationMessage
```

Constructs CreateApplicationMessage's fields from required parameters

#### `CreateApplicationVersionMessage`

``` purescript
newtype CreateApplicationVersionMessage
  = CreateApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "SourceBundle" :: NullOrUndefined (S3Location), "BuildConfiguration" :: NullOrUndefined (BuildConfiguration), "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication), "Process" :: NullOrUndefined (ApplicationVersionProccess) }
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
newCreateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "SourceBundle" :: NullOrUndefined (S3Location), "BuildConfiguration" :: NullOrUndefined (BuildConfiguration), "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication), "Process" :: NullOrUndefined (ApplicationVersionProccess) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description), "SourceBuildInformation" :: NullOrUndefined (SourceBuildInformation), "SourceBundle" :: NullOrUndefined (S3Location), "BuildConfiguration" :: NullOrUndefined (BuildConfiguration), "AutoCreateApplication" :: NullOrUndefined (AutoCreateApplication), "Process" :: NullOrUndefined (ApplicationVersionProccess) }) -> CreateApplicationVersionMessage
```

Constructs CreateApplicationVersionMessage's fields from required parameters

#### `CreateConfigurationTemplateMessage`

``` purescript
newtype CreateConfigurationTemplateMessage
  = CreateConfigurationTemplateMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "SourceConfiguration" :: NullOrUndefined (SourceConfiguration), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }
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
newCreateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "SourceConfiguration" :: NullOrUndefined (SourceConfiguration), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "SourceConfiguration" :: NullOrUndefined (SourceConfiguration), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }) -> CreateConfigurationTemplateMessage
```

Constructs CreateConfigurationTemplateMessage's fields from required parameters

#### `CreateEnvironmentMessage`

``` purescript
newtype CreateEnvironmentMessage
  = CreateEnvironmentMessage { "ApplicationName" :: ApplicationName, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix), "Tier" :: NullOrUndefined (EnvironmentTier), "Tags" :: NullOrUndefined (Tags), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }
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
newCreateEnvironmentMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix), "Tier" :: NullOrUndefined (EnvironmentTier), "Tags" :: NullOrUndefined (Tags), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> { "ApplicationName" :: ApplicationName, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "CNAMEPrefix" :: NullOrUndefined (DNSCnamePrefix), "Tier" :: NullOrUndefined (EnvironmentTier), "Tags" :: NullOrUndefined (Tags), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }) -> CreateEnvironmentMessage
```

Constructs CreateEnvironmentMessage's fields from required parameters

#### `CreatePlatformVersionRequest`

``` purescript
newtype CreatePlatformVersionRequest
  = CreatePlatformVersionRequest { "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }
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
newCreatePlatformVersionRequest' :: S3Location -> PlatformName -> PlatformVersion -> ({ "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) } -> { "PlatformName" :: PlatformName, "PlatformVersion" :: PlatformVersion, "PlatformDefinitionBundle" :: S3Location, "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList) }) -> CreatePlatformVersionRequest
```

Constructs CreatePlatformVersionRequest's fields from required parameters

#### `CreatePlatformVersionResult`

``` purescript
newtype CreatePlatformVersionResult
  = CreatePlatformVersionResult { "PlatformSummary" :: NullOrUndefined (PlatformSummary), "Builder" :: NullOrUndefined (Builder) }
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
newCreatePlatformVersionResult' :: ({ "PlatformSummary" :: NullOrUndefined (PlatformSummary), "Builder" :: NullOrUndefined (Builder) } -> { "PlatformSummary" :: NullOrUndefined (PlatformSummary), "Builder" :: NullOrUndefined (Builder) }) -> CreatePlatformVersionResult
```

Constructs CreatePlatformVersionResult's fields from required parameters

#### `CreateStorageLocationResultMessage`

``` purescript
newtype CreateStorageLocationResultMessage
  = CreateStorageLocationResultMessage { "S3Bucket" :: NullOrUndefined (S3Bucket) }
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
newCreateStorageLocationResultMessage' :: ({ "S3Bucket" :: NullOrUndefined (S3Bucket) } -> { "S3Bucket" :: NullOrUndefined (S3Bucket) }) -> CreateStorageLocationResultMessage
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
  = CustomAmi { "VirtualizationType" :: NullOrUndefined (VirtualizationType), "ImageId" :: NullOrUndefined (ImageId) }
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
newCustomAmi' :: ({ "VirtualizationType" :: NullOrUndefined (VirtualizationType), "ImageId" :: NullOrUndefined (ImageId) } -> { "VirtualizationType" :: NullOrUndefined (VirtualizationType), "ImageId" :: NullOrUndefined (ImageId) }) -> CustomAmi
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
  = DeleteApplicationMessage { "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce) }
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
newDeleteApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce) } -> { "ApplicationName" :: ApplicationName, "TerminateEnvByForce" :: NullOrUndefined (TerminateEnvForce) }) -> DeleteApplicationMessage
```

Constructs DeleteApplicationMessage's fields from required parameters

#### `DeleteApplicationVersionMessage`

``` purescript
newtype DeleteApplicationVersionMessage
  = DeleteApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle) }
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
newDeleteApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "DeleteSourceBundle" :: NullOrUndefined (DeleteSourceBundle) }) -> DeleteApplicationVersionMessage
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
  = DeletePlatformVersionRequest { "PlatformArn" :: NullOrUndefined (PlatformArn) }
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
newDeletePlatformVersionRequest' :: ({ "PlatformArn" :: NullOrUndefined (PlatformArn) } -> { "PlatformArn" :: NullOrUndefined (PlatformArn) }) -> DeletePlatformVersionRequest
```

Constructs DeletePlatformVersionRequest's fields from required parameters

#### `DeletePlatformVersionResult`

``` purescript
newtype DeletePlatformVersionResult
  = DeletePlatformVersionResult { "PlatformSummary" :: NullOrUndefined (PlatformSummary) }
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
newDeletePlatformVersionResult' :: ({ "PlatformSummary" :: NullOrUndefined (PlatformSummary) } -> { "PlatformSummary" :: NullOrUndefined (PlatformSummary) }) -> DeletePlatformVersionResult
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
  = Deployment { "VersionLabel" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (NullableLong), "Status" :: NullOrUndefined (String), "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp) }
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
newDeployment' :: ({ "VersionLabel" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (NullableLong), "Status" :: NullOrUndefined (String), "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp) } -> { "VersionLabel" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (NullableLong), "Status" :: NullOrUndefined (String), "DeploymentTime" :: NullOrUndefined (DeploymentTimestamp) }) -> Deployment
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
  = DescribeApplicationVersionsMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabels" :: NullOrUndefined (VersionLabelsList), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }
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
newDescribeApplicationVersionsMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabels" :: NullOrUndefined (VersionLabelsList), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabels" :: NullOrUndefined (VersionLabelsList), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }) -> DescribeApplicationVersionsMessage
```

Constructs DescribeApplicationVersionsMessage's fields from required parameters

#### `DescribeApplicationsMessage`

``` purescript
newtype DescribeApplicationsMessage
  = DescribeApplicationsMessage { "ApplicationNames" :: NullOrUndefined (ApplicationNamesList) }
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
newDescribeApplicationsMessage' :: ({ "ApplicationNames" :: NullOrUndefined (ApplicationNamesList) } -> { "ApplicationNames" :: NullOrUndefined (ApplicationNamesList) }) -> DescribeApplicationsMessage
```

Constructs DescribeApplicationsMessage's fields from required parameters

#### `DescribeConfigurationOptionsMessage`

``` purescript
newtype DescribeConfigurationOptionsMessage
  = DescribeConfigurationOptionsMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (OptionsSpecifierList) }
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
newDescribeConfigurationOptionsMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (OptionsSpecifierList) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "Options" :: NullOrUndefined (OptionsSpecifierList) }) -> DescribeConfigurationOptionsMessage
```

Constructs DescribeConfigurationOptionsMessage's fields from required parameters

#### `DescribeConfigurationSettingsMessage`

``` purescript
newtype DescribeConfigurationSettingsMessage
  = DescribeConfigurationSettingsMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newDescribeConfigurationSettingsMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> DescribeConfigurationSettingsMessage
```

Constructs DescribeConfigurationSettingsMessage's fields from required parameters

#### `DescribeEnvironmentHealthRequest`

``` purescript
newtype DescribeEnvironmentHealthRequest
  = DescribeEnvironmentHealthRequest { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes) }
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
newDescribeEnvironmentHealthRequest' :: ({ "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes) } -> { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (EnvironmentHealthAttributes) }) -> DescribeEnvironmentHealthRequest
```

Constructs DescribeEnvironmentHealthRequest's fields from required parameters

#### `DescribeEnvironmentHealthResult`

``` purescript
newtype DescribeEnvironmentHealthResult
  = DescribeEnvironmentHealthResult { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "HealthStatus" :: NullOrUndefined (String), "Status" :: NullOrUndefined (EnvironmentHealth), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary), "RefreshedAt" :: NullOrUndefined (RefreshedAt) }
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
newDescribeEnvironmentHealthResult' :: ({ "EnvironmentName" :: NullOrUndefined (EnvironmentName), "HealthStatus" :: NullOrUndefined (String), "Status" :: NullOrUndefined (EnvironmentHealth), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary), "RefreshedAt" :: NullOrUndefined (RefreshedAt) } -> { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "HealthStatus" :: NullOrUndefined (String), "Status" :: NullOrUndefined (EnvironmentHealth), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "InstancesHealth" :: NullOrUndefined (InstanceHealthSummary), "RefreshedAt" :: NullOrUndefined (RefreshedAt) }) -> DescribeEnvironmentHealthResult
```

Constructs DescribeEnvironmentHealthResult's fields from required parameters

#### `DescribeEnvironmentManagedActionHistoryRequest`

``` purescript
newtype DescribeEnvironmentManagedActionHistoryRequest
  = DescribeEnvironmentManagedActionHistoryRequest { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "NextToken" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (Int) }
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
newDescribeEnvironmentManagedActionHistoryRequest' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "NextToken" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (Int) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "NextToken" :: NullOrUndefined (String), "MaxItems" :: NullOrUndefined (Int) }) -> DescribeEnvironmentManagedActionHistoryRequest
```

Constructs DescribeEnvironmentManagedActionHistoryRequest's fields from required parameters

#### `DescribeEnvironmentManagedActionHistoryResult`

``` purescript
newtype DescribeEnvironmentManagedActionHistoryResult
  = DescribeEnvironmentManagedActionHistoryResult { "ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems), "NextToken" :: NullOrUndefined (String) }
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
newDescribeEnvironmentManagedActionHistoryResult' :: ({ "ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems), "NextToken" :: NullOrUndefined (String) } -> { "ManagedActionHistoryItems" :: NullOrUndefined (ManagedActionHistoryItems), "NextToken" :: NullOrUndefined (String) }) -> DescribeEnvironmentManagedActionHistoryResult
```

Constructs DescribeEnvironmentManagedActionHistoryResult's fields from required parameters

#### `DescribeEnvironmentManagedActionsRequest`

``` purescript
newtype DescribeEnvironmentManagedActionsRequest
  = DescribeEnvironmentManagedActionsRequest { "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ActionStatus) }
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
newDescribeEnvironmentManagedActionsRequest' :: ({ "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ActionStatus) } -> { "EnvironmentName" :: NullOrUndefined (String), "EnvironmentId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ActionStatus) }) -> DescribeEnvironmentManagedActionsRequest
```

Constructs DescribeEnvironmentManagedActionsRequest's fields from required parameters

#### `DescribeEnvironmentManagedActionsResult`

``` purescript
newtype DescribeEnvironmentManagedActionsResult
  = DescribeEnvironmentManagedActionsResult { "ManagedActions" :: NullOrUndefined (ManagedActions) }
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
newDescribeEnvironmentManagedActionsResult' :: ({ "ManagedActions" :: NullOrUndefined (ManagedActions) } -> { "ManagedActions" :: NullOrUndefined (ManagedActions) }) -> DescribeEnvironmentManagedActionsResult
```

Constructs DescribeEnvironmentManagedActionsResult's fields from required parameters

#### `DescribeEnvironmentResourcesMessage`

``` purescript
newtype DescribeEnvironmentResourcesMessage
  = DescribeEnvironmentResourcesMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newDescribeEnvironmentResourcesMessage' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> DescribeEnvironmentResourcesMessage
```

Constructs DescribeEnvironmentResourcesMessage's fields from required parameters

#### `DescribeEnvironmentsMessage`

``` purescript
newtype DescribeEnvironmentsMessage
  = DescribeEnvironmentsMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList), "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList), "IncludeDeleted" :: NullOrUndefined (IncludeDeleted), "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }
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
newDescribeEnvironmentsMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList), "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList), "IncludeDeleted" :: NullOrUndefined (IncludeDeleted), "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "EnvironmentIds" :: NullOrUndefined (EnvironmentIdList), "EnvironmentNames" :: NullOrUndefined (EnvironmentNamesList), "IncludeDeleted" :: NullOrUndefined (IncludeDeleted), "IncludedDeletedBackTo" :: NullOrUndefined (IncludeDeletedBackTo), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }) -> DescribeEnvironmentsMessage
```

Constructs DescribeEnvironmentsMessage's fields from required parameters

#### `DescribeEventsMessage`

``` purescript
newtype DescribeEventsMessage
  = DescribeEventsMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity), "StartTime" :: NullOrUndefined (TimeFilterStart), "EndTime" :: NullOrUndefined (TimeFilterEnd), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }
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
newDescribeEventsMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity), "StartTime" :: NullOrUndefined (TimeFilterStart), "EndTime" :: NullOrUndefined (TimeFilterEnd), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity), "StartTime" :: NullOrUndefined (TimeFilterStart), "EndTime" :: NullOrUndefined (TimeFilterEnd), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (Token) }) -> DescribeEventsMessage
```

Constructs DescribeEventsMessage's fields from required parameters

#### `DescribeInstancesHealthRequest`

``` purescript
newtype DescribeInstancesHealthRequest
  = DescribeInstancesHealthRequest { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes), "NextToken" :: NullOrUndefined (NextToken) }
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
newDescribeInstancesHealthRequest' :: ({ "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes), "NextToken" :: NullOrUndefined (NextToken) } -> { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "AttributeNames" :: NullOrUndefined (InstancesHealthAttributes), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeInstancesHealthRequest
```

Constructs DescribeInstancesHealthRequest's fields from required parameters

#### `DescribeInstancesHealthResult`

``` purescript
newtype DescribeInstancesHealthResult
  = DescribeInstancesHealthResult { "InstanceHealthList" :: NullOrUndefined (InstanceHealthList), "RefreshedAt" :: NullOrUndefined (RefreshedAt), "NextToken" :: NullOrUndefined (NextToken) }
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
newDescribeInstancesHealthResult' :: ({ "InstanceHealthList" :: NullOrUndefined (InstanceHealthList), "RefreshedAt" :: NullOrUndefined (RefreshedAt), "NextToken" :: NullOrUndefined (NextToken) } -> { "InstanceHealthList" :: NullOrUndefined (InstanceHealthList), "RefreshedAt" :: NullOrUndefined (RefreshedAt), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeInstancesHealthResult
```

Constructs DescribeInstancesHealthResult's fields from required parameters

#### `DescribePlatformVersionRequest`

``` purescript
newtype DescribePlatformVersionRequest
  = DescribePlatformVersionRequest { "PlatformArn" :: NullOrUndefined (PlatformArn) }
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
newDescribePlatformVersionRequest' :: ({ "PlatformArn" :: NullOrUndefined (PlatformArn) } -> { "PlatformArn" :: NullOrUndefined (PlatformArn) }) -> DescribePlatformVersionRequest
```

Constructs DescribePlatformVersionRequest's fields from required parameters

#### `DescribePlatformVersionResult`

``` purescript
newtype DescribePlatformVersionResult
  = DescribePlatformVersionResult { "PlatformDescription" :: NullOrUndefined (PlatformDescription) }
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
newDescribePlatformVersionResult' :: ({ "PlatformDescription" :: NullOrUndefined (PlatformDescription) } -> { "PlatformDescription" :: NullOrUndefined (PlatformDescription) }) -> DescribePlatformVersionResult
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
  = ElasticBeanstalkServiceException { message :: NullOrUndefined (ExceptionMessage) }
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
newElasticBeanstalkServiceException' :: ({ message :: NullOrUndefined (ExceptionMessage) } -> { message :: NullOrUndefined (ExceptionMessage) }) -> ElasticBeanstalkServiceException
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
  = EnvironmentDescription { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EndpointURL" :: NullOrUndefined (EndpointURL), "CNAME" :: NullOrUndefined (DNSCname), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (EnvironmentStatus), "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress), "Health" :: NullOrUndefined (EnvironmentHealth), "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus), "Resources" :: NullOrUndefined (EnvironmentResourcesDescription), "Tier" :: NullOrUndefined (EnvironmentTier), "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks), "EnvironmentArn" :: NullOrUndefined (EnvironmentArn) }
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
newEnvironmentDescription' :: ({ "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EndpointURL" :: NullOrUndefined (EndpointURL), "CNAME" :: NullOrUndefined (DNSCname), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (EnvironmentStatus), "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress), "Health" :: NullOrUndefined (EnvironmentHealth), "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus), "Resources" :: NullOrUndefined (EnvironmentResourcesDescription), "Tier" :: NullOrUndefined (EnvironmentTier), "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks), "EnvironmentArn" :: NullOrUndefined (EnvironmentArn) } -> { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "Description" :: NullOrUndefined (Description), "EndpointURL" :: NullOrUndefined (EndpointURL), "CNAME" :: NullOrUndefined (DNSCname), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "Status" :: NullOrUndefined (EnvironmentStatus), "AbortableOperationInProgress" :: NullOrUndefined (AbortableOperationInProgress), "Health" :: NullOrUndefined (EnvironmentHealth), "HealthStatus" :: NullOrUndefined (EnvironmentHealthStatus), "Resources" :: NullOrUndefined (EnvironmentResourcesDescription), "Tier" :: NullOrUndefined (EnvironmentTier), "EnvironmentLinks" :: NullOrUndefined (EnvironmentLinks), "EnvironmentArn" :: NullOrUndefined (EnvironmentArn) }) -> EnvironmentDescription
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
  = EnvironmentDescriptionsMessage { "Environments" :: NullOrUndefined (EnvironmentDescriptionsList), "NextToken" :: NullOrUndefined (Token) }
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
newEnvironmentDescriptionsMessage' :: ({ "Environments" :: NullOrUndefined (EnvironmentDescriptionsList), "NextToken" :: NullOrUndefined (Token) } -> { "Environments" :: NullOrUndefined (EnvironmentDescriptionsList), "NextToken" :: NullOrUndefined (Token) }) -> EnvironmentDescriptionsMessage
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
  = EnvironmentInfoDescription { "InfoType" :: NullOrUndefined (EnvironmentInfoType), "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId), "SampleTimestamp" :: NullOrUndefined (SampleTimestamp), "Message" :: NullOrUndefined (Message) }
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
newEnvironmentInfoDescription' :: ({ "InfoType" :: NullOrUndefined (EnvironmentInfoType), "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId), "SampleTimestamp" :: NullOrUndefined (SampleTimestamp), "Message" :: NullOrUndefined (Message) } -> { "InfoType" :: NullOrUndefined (EnvironmentInfoType), "Ec2InstanceId" :: NullOrUndefined (Ec2InstanceId), "SampleTimestamp" :: NullOrUndefined (SampleTimestamp), "Message" :: NullOrUndefined (Message) }) -> EnvironmentInfoDescription
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
  = EnvironmentLink { "LinkName" :: NullOrUndefined (String), "EnvironmentName" :: NullOrUndefined (String) }
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
newEnvironmentLink' :: ({ "LinkName" :: NullOrUndefined (String), "EnvironmentName" :: NullOrUndefined (String) } -> { "LinkName" :: NullOrUndefined (String), "EnvironmentName" :: NullOrUndefined (String) }) -> EnvironmentLink
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
  = EnvironmentResourceDescription { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList), "Instances" :: NullOrUndefined (InstanceList), "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList), "LoadBalancers" :: NullOrUndefined (LoadBalancerList), "Triggers" :: NullOrUndefined (TriggerList), "Queues" :: NullOrUndefined (QueueList) }
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
newEnvironmentResourceDescription' :: ({ "EnvironmentName" :: NullOrUndefined (EnvironmentName), "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList), "Instances" :: NullOrUndefined (InstanceList), "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList), "LoadBalancers" :: NullOrUndefined (LoadBalancerList), "Triggers" :: NullOrUndefined (TriggerList), "Queues" :: NullOrUndefined (QueueList) } -> { "EnvironmentName" :: NullOrUndefined (EnvironmentName), "AutoScalingGroups" :: NullOrUndefined (AutoScalingGroupList), "Instances" :: NullOrUndefined (InstanceList), "LaunchConfigurations" :: NullOrUndefined (LaunchConfigurationList), "LoadBalancers" :: NullOrUndefined (LoadBalancerList), "Triggers" :: NullOrUndefined (TriggerList), "Queues" :: NullOrUndefined (QueueList) }) -> EnvironmentResourceDescription
```

Constructs EnvironmentResourceDescription's fields from required parameters

#### `EnvironmentResourceDescriptionsMessage`

``` purescript
newtype EnvironmentResourceDescriptionsMessage
  = EnvironmentResourceDescriptionsMessage { "EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription) }
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
newEnvironmentResourceDescriptionsMessage' :: ({ "EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription) } -> { "EnvironmentResources" :: NullOrUndefined (EnvironmentResourceDescription) }) -> EnvironmentResourceDescriptionsMessage
```

Constructs EnvironmentResourceDescriptionsMessage's fields from required parameters

#### `EnvironmentResourcesDescription`

``` purescript
newtype EnvironmentResourcesDescription
  = EnvironmentResourcesDescription { "LoadBalancer" :: NullOrUndefined (LoadBalancerDescription) }
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
newEnvironmentResourcesDescription' :: ({ "LoadBalancer" :: NullOrUndefined (LoadBalancerDescription) } -> { "LoadBalancer" :: NullOrUndefined (LoadBalancerDescription) }) -> EnvironmentResourcesDescription
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
  = EnvironmentTier { "Name" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newEnvironmentTier' :: ({ "Name" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> EnvironmentTier
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
  = EventDescription { "EventDate" :: NullOrUndefined (EventDate), "Message" :: NullOrUndefined (EventMessage), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity) }
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
newEventDescription' :: ({ "EventDate" :: NullOrUndefined (EventDate), "Message" :: NullOrUndefined (EventMessage), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity) } -> { "EventDate" :: NullOrUndefined (EventDate), "Message" :: NullOrUndefined (EventMessage), "ApplicationName" :: NullOrUndefined (ApplicationName), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "PlatformArn" :: NullOrUndefined (PlatformArn), "RequestId" :: NullOrUndefined (RequestId), "Severity" :: NullOrUndefined (EventSeverity) }) -> EventDescription
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
  = EventDescriptionsMessage { "Events" :: NullOrUndefined (EventDescriptionList), "NextToken" :: NullOrUndefined (Token) }
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
newEventDescriptionsMessage' :: ({ "Events" :: NullOrUndefined (EventDescriptionList), "NextToken" :: NullOrUndefined (Token) } -> { "Events" :: NullOrUndefined (EventDescriptionList), "NextToken" :: NullOrUndefined (Token) }) -> EventDescriptionsMessage
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
  = Instance { "Id" :: NullOrUndefined (ResourceId) }
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
newInstance' :: ({ "Id" :: NullOrUndefined (ResourceId) } -> { "Id" :: NullOrUndefined (ResourceId) }) -> Instance
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
  = InstanceHealthSummary { "NoData" :: NullOrUndefined (NullableInteger), "Unknown" :: NullOrUndefined (NullableInteger), "Pending" :: NullOrUndefined (NullableInteger), "Ok" :: NullOrUndefined (NullableInteger), "Info" :: NullOrUndefined (NullableInteger), "Warning" :: NullOrUndefined (NullableInteger), "Degraded" :: NullOrUndefined (NullableInteger), "Severe" :: NullOrUndefined (NullableInteger) }
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
newInstanceHealthSummary' :: ({ "NoData" :: NullOrUndefined (NullableInteger), "Unknown" :: NullOrUndefined (NullableInteger), "Pending" :: NullOrUndefined (NullableInteger), "Ok" :: NullOrUndefined (NullableInteger), "Info" :: NullOrUndefined (NullableInteger), "Warning" :: NullOrUndefined (NullableInteger), "Degraded" :: NullOrUndefined (NullableInteger), "Severe" :: NullOrUndefined (NullableInteger) } -> { "NoData" :: NullOrUndefined (NullableInteger), "Unknown" :: NullOrUndefined (NullableInteger), "Pending" :: NullOrUndefined (NullableInteger), "Ok" :: NullOrUndefined (NullableInteger), "Info" :: NullOrUndefined (NullableInteger), "Warning" :: NullOrUndefined (NullableInteger), "Degraded" :: NullOrUndefined (NullableInteger), "Severe" :: NullOrUndefined (NullableInteger) }) -> InstanceHealthSummary
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
  = Latency { "P999" :: NullOrUndefined (NullableDouble), "P99" :: NullOrUndefined (NullableDouble), "P95" :: NullOrUndefined (NullableDouble), "P90" :: NullOrUndefined (NullableDouble), "P85" :: NullOrUndefined (NullableDouble), "P75" :: NullOrUndefined (NullableDouble), "P50" :: NullOrUndefined (NullableDouble), "P10" :: NullOrUndefined (NullableDouble) }
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
newLatency' :: ({ "P999" :: NullOrUndefined (NullableDouble), "P99" :: NullOrUndefined (NullableDouble), "P95" :: NullOrUndefined (NullableDouble), "P90" :: NullOrUndefined (NullableDouble), "P85" :: NullOrUndefined (NullableDouble), "P75" :: NullOrUndefined (NullableDouble), "P50" :: NullOrUndefined (NullableDouble), "P10" :: NullOrUndefined (NullableDouble) } -> { "P999" :: NullOrUndefined (NullableDouble), "P99" :: NullOrUndefined (NullableDouble), "P95" :: NullOrUndefined (NullableDouble), "P90" :: NullOrUndefined (NullableDouble), "P85" :: NullOrUndefined (NullableDouble), "P75" :: NullOrUndefined (NullableDouble), "P50" :: NullOrUndefined (NullableDouble), "P10" :: NullOrUndefined (NullableDouble) }) -> Latency
```

Constructs Latency's fields from required parameters

#### `LaunchConfiguration`

``` purescript
newtype LaunchConfiguration
  = LaunchConfiguration { "Name" :: NullOrUndefined (ResourceId) }
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
newLaunchConfiguration' :: ({ "Name" :: NullOrUndefined (ResourceId) } -> { "Name" :: NullOrUndefined (ResourceId) }) -> LaunchConfiguration
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
  = ListAvailableSolutionStacksResultMessage { "SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList), "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList) }
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
newListAvailableSolutionStacksResultMessage' :: ({ "SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList), "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList) } -> { "SolutionStacks" :: NullOrUndefined (AvailableSolutionStackNamesList), "SolutionStackDetails" :: NullOrUndefined (AvailableSolutionStackDetailsList) }) -> ListAvailableSolutionStacksResultMessage
```

Constructs ListAvailableSolutionStacksResultMessage's fields from required parameters

#### `ListPlatformVersionsRequest`

``` purescript
newtype ListPlatformVersionsRequest
  = ListPlatformVersionsRequest { "Filters" :: NullOrUndefined (PlatformFilters), "MaxRecords" :: NullOrUndefined (PlatformMaxRecords), "NextToken" :: NullOrUndefined (Token) }
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
newListPlatformVersionsRequest' :: ({ "Filters" :: NullOrUndefined (PlatformFilters), "MaxRecords" :: NullOrUndefined (PlatformMaxRecords), "NextToken" :: NullOrUndefined (Token) } -> { "Filters" :: NullOrUndefined (PlatformFilters), "MaxRecords" :: NullOrUndefined (PlatformMaxRecords), "NextToken" :: NullOrUndefined (Token) }) -> ListPlatformVersionsRequest
```

Constructs ListPlatformVersionsRequest's fields from required parameters

#### `ListPlatformVersionsResult`

``` purescript
newtype ListPlatformVersionsResult
  = ListPlatformVersionsResult { "PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList), "NextToken" :: NullOrUndefined (Token) }
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
newListPlatformVersionsResult' :: ({ "PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList), "NextToken" :: NullOrUndefined (Token) } -> { "PlatformSummaryList" :: NullOrUndefined (PlatformSummaryList), "NextToken" :: NullOrUndefined (Token) }) -> ListPlatformVersionsResult
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
  = Listener { "Protocol" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) }
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
newListener' :: ({ "Protocol" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) } -> { "Protocol" :: NullOrUndefined (String), "Port" :: NullOrUndefined (Int) }) -> Listener
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
  = LoadBalancer { "Name" :: NullOrUndefined (ResourceId) }
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
newLoadBalancer' :: ({ "Name" :: NullOrUndefined (ResourceId) } -> { "Name" :: NullOrUndefined (ResourceId) }) -> LoadBalancer
```

Constructs LoadBalancer's fields from required parameters

#### `LoadBalancerDescription`

``` purescript
newtype LoadBalancerDescription
  = LoadBalancerDescription { "LoadBalancerName" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription) }
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
newLoadBalancerDescription' :: ({ "LoadBalancerName" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription) } -> { "LoadBalancerName" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Listeners" :: NullOrUndefined (LoadBalancerListenersDescription) }) -> LoadBalancerDescription
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
  = ManagedAction { "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (ActionStatus), "WindowStartTime" :: NullOrUndefined (Timestamp) }
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
newManagedAction' :: ({ "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (ActionStatus), "WindowStartTime" :: NullOrUndefined (Timestamp) } -> { "ActionId" :: NullOrUndefined (String), "ActionDescription" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "Status" :: NullOrUndefined (ActionStatus), "WindowStartTime" :: NullOrUndefined (Timestamp) }) -> ManagedAction
```

Constructs ManagedAction's fields from required parameters

#### `ManagedActionHistoryItem`

``` purescript
newtype ManagedActionHistoryItem
  = ManagedActionHistoryItem { "ActionId" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "ActionDescription" :: NullOrUndefined (String), "FailureType" :: NullOrUndefined (FailureType), "Status" :: NullOrUndefined (ActionHistoryStatus), "FailureDescription" :: NullOrUndefined (String), "ExecutedTime" :: NullOrUndefined (Timestamp), "FinishedTime" :: NullOrUndefined (Timestamp) }
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
newManagedActionHistoryItem' :: ({ "ActionId" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "ActionDescription" :: NullOrUndefined (String), "FailureType" :: NullOrUndefined (FailureType), "Status" :: NullOrUndefined (ActionHistoryStatus), "FailureDescription" :: NullOrUndefined (String), "ExecutedTime" :: NullOrUndefined (Timestamp), "FinishedTime" :: NullOrUndefined (Timestamp) } -> { "ActionId" :: NullOrUndefined (String), "ActionType" :: NullOrUndefined (ActionType), "ActionDescription" :: NullOrUndefined (String), "FailureType" :: NullOrUndefined (FailureType), "Status" :: NullOrUndefined (ActionHistoryStatus), "FailureDescription" :: NullOrUndefined (String), "ExecutedTime" :: NullOrUndefined (Timestamp), "FinishedTime" :: NullOrUndefined (Timestamp) }) -> ManagedActionHistoryItem
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
  = MaxAgeRule { "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) }
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
newMaxAgeRule' :: BoxedBoolean -> ({ "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } -> { "Enabled" :: BoxedBoolean, "MaxAgeInDays" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) }) -> MaxAgeRule
```

Constructs MaxAgeRule's fields from required parameters

#### `MaxCountRule`

``` purescript
newtype MaxCountRule
  = MaxCountRule { "Enabled" :: BoxedBoolean, "MaxCount" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) }
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
newMaxCountRule' :: BoxedBoolean -> ({ "Enabled" :: BoxedBoolean, "MaxCount" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) } -> { "Enabled" :: BoxedBoolean, "MaxCount" :: NullOrUndefined (BoxedInt), "DeleteSourceFromS3" :: NullOrUndefined (BoxedBoolean) }) -> MaxCountRule
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
  = OptionRestrictionRegex { "Pattern" :: NullOrUndefined (RegexPattern), "Label" :: NullOrUndefined (RegexLabel) }
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
newOptionRestrictionRegex' :: ({ "Pattern" :: NullOrUndefined (RegexPattern), "Label" :: NullOrUndefined (RegexLabel) } -> { "Pattern" :: NullOrUndefined (RegexPattern), "Label" :: NullOrUndefined (RegexLabel) }) -> OptionRestrictionRegex
```

Constructs OptionRestrictionRegex's fields from required parameters

#### `OptionSpecification`

``` purescript
newtype OptionSpecification
  = OptionSpecification { "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) }
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
newOptionSpecification' :: ({ "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) } -> { "ResourceName" :: NullOrUndefined (ResourceName), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) }) -> OptionSpecification
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
  = PlatformDescription { "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformName" :: NullOrUndefined (PlatformName), "PlatformVersion" :: NullOrUndefined (PlatformVersion), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "Description" :: NullOrUndefined (Description), "Maintainer" :: NullOrUndefined (Maintainer), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages), "Frameworks" :: NullOrUndefined (PlatformFrameworks), "CustomAmiList" :: NullOrUndefined (CustomAmiList), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) }
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
newPlatformDescription' :: ({ "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformName" :: NullOrUndefined (PlatformName), "PlatformVersion" :: NullOrUndefined (PlatformVersion), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "Description" :: NullOrUndefined (Description), "Maintainer" :: NullOrUndefined (Maintainer), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages), "Frameworks" :: NullOrUndefined (PlatformFrameworks), "CustomAmiList" :: NullOrUndefined (CustomAmiList), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } -> { "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformName" :: NullOrUndefined (PlatformName), "PlatformVersion" :: NullOrUndefined (PlatformVersion), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "DateCreated" :: NullOrUndefined (CreationDate), "DateUpdated" :: NullOrUndefined (UpdateDate), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "Description" :: NullOrUndefined (Description), "Maintainer" :: NullOrUndefined (Maintainer), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "ProgrammingLanguages" :: NullOrUndefined (PlatformProgrammingLanguages), "Frameworks" :: NullOrUndefined (PlatformFrameworks), "CustomAmiList" :: NullOrUndefined (CustomAmiList), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) }) -> PlatformDescription
```

Constructs PlatformDescription's fields from required parameters

#### `PlatformFilter`

``` purescript
newtype PlatformFilter
  = PlatformFilter { "Type" :: NullOrUndefined (PlatformFilterType), "Operator" :: NullOrUndefined (PlatformFilterOperator), "Values" :: NullOrUndefined (PlatformFilterValueList) }
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
newPlatformFilter' :: ({ "Type" :: NullOrUndefined (PlatformFilterType), "Operator" :: NullOrUndefined (PlatformFilterOperator), "Values" :: NullOrUndefined (PlatformFilterValueList) } -> { "Type" :: NullOrUndefined (PlatformFilterType), "Operator" :: NullOrUndefined (PlatformFilterOperator), "Values" :: NullOrUndefined (PlatformFilterValueList) }) -> PlatformFilter
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
  = PlatformFramework { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newPlatformFramework' :: ({ "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> PlatformFramework
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
  = PlatformProgrammingLanguage { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newPlatformProgrammingLanguage' :: ({ "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> PlatformProgrammingLanguage
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
  = PlatformSummary { "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) }
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
newPlatformSummary' :: ({ "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) } -> { "PlatformArn" :: NullOrUndefined (PlatformArn), "PlatformOwner" :: NullOrUndefined (PlatformOwner), "PlatformStatus" :: NullOrUndefined (PlatformStatus), "PlatformCategory" :: NullOrUndefined (PlatformCategory), "OperatingSystemName" :: NullOrUndefined (OperatingSystemName), "OperatingSystemVersion" :: NullOrUndefined (OperatingSystemVersion), "SupportedTierList" :: NullOrUndefined (SupportedTierList), "SupportedAddonList" :: NullOrUndefined (SupportedAddonList) }) -> PlatformSummary
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
  = Queue { "Name" :: NullOrUndefined (String), "URL" :: NullOrUndefined (String) }
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
newQueue' :: ({ "Name" :: NullOrUndefined (String), "URL" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "URL" :: NullOrUndefined (String) }) -> Queue
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
  = RebuildEnvironmentMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newRebuildEnvironmentMessage' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> RebuildEnvironmentMessage
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
  = RequestEnvironmentInfoMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType }
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
newRequestEnvironmentInfoMessage' :: EnvironmentInfoType -> ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType }) -> RequestEnvironmentInfoMessage
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
  = ResourceTagsDescriptionMessage { "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceTags" :: NullOrUndefined (TagList) }
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
newResourceTagsDescriptionMessage' :: ({ "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceTags" :: NullOrUndefined (TagList) } -> { "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceTags" :: NullOrUndefined (TagList) }) -> ResourceTagsDescriptionMessage
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
  = RestartAppServerMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newRestartAppServerMessage' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> RestartAppServerMessage
```

Constructs RestartAppServerMessage's fields from required parameters

#### `RetrieveEnvironmentInfoMessage`

``` purescript
newtype RetrieveEnvironmentInfoMessage
  = RetrieveEnvironmentInfoMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType }
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
newRetrieveEnvironmentInfoMessage' :: EnvironmentInfoType -> ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "InfoType" :: EnvironmentInfoType }) -> RetrieveEnvironmentInfoMessage
```

Constructs RetrieveEnvironmentInfoMessage's fields from required parameters

#### `RetrieveEnvironmentInfoResultMessage`

``` purescript
newtype RetrieveEnvironmentInfoResultMessage
  = RetrieveEnvironmentInfoResultMessage { "EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList) }
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
newRetrieveEnvironmentInfoResultMessage' :: ({ "EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList) } -> { "EnvironmentInfo" :: NullOrUndefined (EnvironmentInfoDescriptionList) }) -> RetrieveEnvironmentInfoResultMessage
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
  = S3Location { "S3Bucket" :: NullOrUndefined (S3Bucket), "S3Key" :: NullOrUndefined (S3Key) }
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
newS3Location' :: ({ "S3Bucket" :: NullOrUndefined (S3Bucket), "S3Key" :: NullOrUndefined (S3Key) } -> { "S3Bucket" :: NullOrUndefined (S3Bucket), "S3Key" :: NullOrUndefined (S3Key) }) -> S3Location
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
  = SingleInstanceHealth { "InstanceId" :: NullOrUndefined (InstanceId), "HealthStatus" :: NullOrUndefined (String), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "LaunchedAt" :: NullOrUndefined (LaunchedAt), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "System" :: NullOrUndefined (SystemStatus), "Deployment" :: NullOrUndefined (Deployment), "AvailabilityZone" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String) }
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
newSingleInstanceHealth' :: ({ "InstanceId" :: NullOrUndefined (InstanceId), "HealthStatus" :: NullOrUndefined (String), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "LaunchedAt" :: NullOrUndefined (LaunchedAt), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "System" :: NullOrUndefined (SystemStatus), "Deployment" :: NullOrUndefined (Deployment), "AvailabilityZone" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String) } -> { "InstanceId" :: NullOrUndefined (InstanceId), "HealthStatus" :: NullOrUndefined (String), "Color" :: NullOrUndefined (String), "Causes" :: NullOrUndefined (Causes), "LaunchedAt" :: NullOrUndefined (LaunchedAt), "ApplicationMetrics" :: NullOrUndefined (ApplicationMetrics), "System" :: NullOrUndefined (SystemStatus), "Deployment" :: NullOrUndefined (Deployment), "AvailabilityZone" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String) }) -> SingleInstanceHealth
```

Constructs SingleInstanceHealth's fields from required parameters

#### `SolutionStackDescription`

``` purescript
newtype SolutionStackDescription
  = SolutionStackDescription { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList) }
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
newSolutionStackDescription' :: ({ "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList) } -> { "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PermittedFileTypes" :: NullOrUndefined (SolutionStackFileTypeList) }) -> SolutionStackDescription
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
  = SourceConfiguration { "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) }
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
newSourceConfiguration' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName) }) -> SourceConfiguration
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
  = StatusCodes { "Status2xx" :: NullOrUndefined (NullableInteger), "Status3xx" :: NullOrUndefined (NullableInteger), "Status4xx" :: NullOrUndefined (NullableInteger), "Status5xx" :: NullOrUndefined (NullableInteger) }
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
newStatusCodes' :: ({ "Status2xx" :: NullOrUndefined (NullableInteger), "Status3xx" :: NullOrUndefined (NullableInteger), "Status4xx" :: NullOrUndefined (NullableInteger), "Status5xx" :: NullOrUndefined (NullableInteger) } -> { "Status2xx" :: NullOrUndefined (NullableInteger), "Status3xx" :: NullOrUndefined (NullableInteger), "Status4xx" :: NullOrUndefined (NullableInteger), "Status5xx" :: NullOrUndefined (NullableInteger) }) -> StatusCodes
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
  = SwapEnvironmentCNAMEsMessage { "SourceEnvironmentId" :: NullOrUndefined (EnvironmentId), "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName), "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId), "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName) }
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
newSwapEnvironmentCNAMEsMessage' :: ({ "SourceEnvironmentId" :: NullOrUndefined (EnvironmentId), "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName), "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId), "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName) } -> { "SourceEnvironmentId" :: NullOrUndefined (EnvironmentId), "SourceEnvironmentName" :: NullOrUndefined (EnvironmentName), "DestinationEnvironmentId" :: NullOrUndefined (EnvironmentId), "DestinationEnvironmentName" :: NullOrUndefined (EnvironmentName) }) -> SwapEnvironmentCNAMEsMessage
```

Constructs SwapEnvironmentCNAMEsMessage's fields from required parameters

#### `SystemStatus`

``` purescript
newtype SystemStatus
  = SystemStatus { "CPUUtilization" :: NullOrUndefined (CPUUtilization), "LoadAverage" :: NullOrUndefined (LoadAverage) }
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
newSystemStatus' :: ({ "CPUUtilization" :: NullOrUndefined (CPUUtilization), "LoadAverage" :: NullOrUndefined (LoadAverage) } -> { "CPUUtilization" :: NullOrUndefined (CPUUtilization), "LoadAverage" :: NullOrUndefined (LoadAverage) }) -> SystemStatus
```

Constructs SystemStatus's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }
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
newTag' :: ({ "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }) -> Tag
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
  = TerminateEnvironmentMessage { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources), "ForceTerminate" :: NullOrUndefined (ForceTerminate) }
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
newTerminateEnvironmentMessage' :: ({ "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources), "ForceTerminate" :: NullOrUndefined (ForceTerminate) } -> { "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "TerminateResources" :: NullOrUndefined (TerminateEnvironmentResources), "ForceTerminate" :: NullOrUndefined (ForceTerminate) }) -> TerminateEnvironmentMessage
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
  = Trigger { "Name" :: NullOrUndefined (ResourceId) }
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
newTrigger' :: ({ "Name" :: NullOrUndefined (ResourceId) } -> { "Name" :: NullOrUndefined (ResourceId) }) -> Trigger
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
  = UpdateApplicationMessage { "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description) }
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
newUpdateApplicationMessage' :: ApplicationName -> ({ "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description) } -> { "ApplicationName" :: ApplicationName, "Description" :: NullOrUndefined (Description) }) -> UpdateApplicationMessage
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
  = UpdateApplicationVersionMessage { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description) }
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
newUpdateApplicationVersionMessage' :: ApplicationName -> VersionLabel -> ({ "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description) } -> { "ApplicationName" :: ApplicationName, "VersionLabel" :: VersionLabel, "Description" :: NullOrUndefined (Description) }) -> UpdateApplicationVersionMessage
```

Constructs UpdateApplicationVersionMessage's fields from required parameters

#### `UpdateConfigurationTemplateMessage`

``` purescript
newtype UpdateConfigurationTemplateMessage
  = UpdateConfigurationTemplateMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }
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
newUpdateConfigurationTemplateMessage' :: ApplicationName -> ConfigurationTemplateName -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: ConfigurationTemplateName, "Description" :: NullOrUndefined (Description), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }) -> UpdateConfigurationTemplateMessage
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
  = UpdateEnvironmentMessage { "ApplicationName" :: NullOrUndefined (ApplicationName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "Tier" :: NullOrUndefined (EnvironmentTier), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }
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
newUpdateEnvironmentMessage' :: ({ "ApplicationName" :: NullOrUndefined (ApplicationName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "Tier" :: NullOrUndefined (EnvironmentTier), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) } -> { "ApplicationName" :: NullOrUndefined (ApplicationName), "EnvironmentId" :: NullOrUndefined (EnvironmentId), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "GroupName" :: NullOrUndefined (GroupName), "Description" :: NullOrUndefined (Description), "Tier" :: NullOrUndefined (EnvironmentTier), "VersionLabel" :: NullOrUndefined (VersionLabel), "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "SolutionStackName" :: NullOrUndefined (SolutionStackName), "PlatformArn" :: NullOrUndefined (PlatformArn), "OptionSettings" :: NullOrUndefined (ConfigurationOptionSettingsList), "OptionsToRemove" :: NullOrUndefined (OptionsSpecifierList) }) -> UpdateEnvironmentMessage
```

Constructs UpdateEnvironmentMessage's fields from required parameters

#### `UpdateTagsForResourceMessage`

``` purescript
newtype UpdateTagsForResourceMessage
  = UpdateTagsForResourceMessage { "ResourceArn" :: ResourceArn, "TagsToAdd" :: NullOrUndefined (TagList), "TagsToRemove" :: NullOrUndefined (TagKeyList) }
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
newUpdateTagsForResourceMessage' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn, "TagsToAdd" :: NullOrUndefined (TagList), "TagsToRemove" :: NullOrUndefined (TagKeyList) } -> { "ResourceArn" :: ResourceArn, "TagsToAdd" :: NullOrUndefined (TagList), "TagsToRemove" :: NullOrUndefined (TagKeyList) }) -> UpdateTagsForResourceMessage
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
  = ValidateConfigurationSettingsMessage { "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList }
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
newValidateConfigurationSettingsMessage' :: ApplicationName -> ConfigurationOptionSettingsList -> ({ "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList } -> { "ApplicationName" :: ApplicationName, "TemplateName" :: NullOrUndefined (ConfigurationTemplateName), "EnvironmentName" :: NullOrUndefined (EnvironmentName), "OptionSettings" :: ConfigurationOptionSettingsList }) -> ValidateConfigurationSettingsMessage
```

Constructs ValidateConfigurationSettingsMessage's fields from required parameters

#### `ValidationMessage`

``` purescript
newtype ValidationMessage
  = ValidationMessage { "Message" :: NullOrUndefined (ValidationMessageString), "Severity" :: NullOrUndefined (ValidationSeverity), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) }
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
newValidationMessage' :: ({ "Message" :: NullOrUndefined (ValidationMessageString), "Severity" :: NullOrUndefined (ValidationSeverity), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) } -> { "Message" :: NullOrUndefined (ValidationMessageString), "Severity" :: NullOrUndefined (ValidationSeverity), "Namespace" :: NullOrUndefined (OptionNamespace), "OptionName" :: NullOrUndefined (ConfigurationOptionName) }) -> ValidationMessage
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


