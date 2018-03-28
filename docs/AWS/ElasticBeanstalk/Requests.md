## Module AWS.ElasticBeanstalk.Requests

#### `abortEnvironmentUpdate`

``` purescript
abortEnvironmentUpdate :: forall eff. Service -> AbortEnvironmentUpdateMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels in-progress environment configuration update or application version deployment.</p>

#### `applyEnvironmentManagedAction`

``` purescript
applyEnvironmentManagedAction :: forall eff. Service -> ApplyEnvironmentManagedActionRequest -> Aff (exception :: EXCEPTION | eff) ApplyEnvironmentManagedActionResult
```

<p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>

#### `checkDNSAvailability`

``` purescript
checkDNSAvailability :: forall eff. Service -> CheckDNSAvailabilityMessage -> Aff (exception :: EXCEPTION | eff) CheckDNSAvailabilityResultMessage
```

<p>Checks if the specified CNAME is available.</p>

#### `composeEnvironments`

``` purescript
composeEnvironments :: forall eff. Service -> ComposeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescriptionsMessage
```

<p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a> for details.</p>

#### `createApplication`

``` purescript
createApplication :: forall eff. Service -> CreateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionMessage
```

<p> Creates an application that has one configuration template named <code>default</code> and no application versions. </p>

#### `createApplicationVersion`

``` purescript
createApplicationVersion :: forall eff. Service -> CreateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionMessage
```

<p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>

#### `createConfigurationTemplate`

``` purescript
createConfigurationTemplate :: forall eff. Service -> CreateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescription
```

<p>Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>

#### `createEnvironment`

``` purescript
createEnvironment :: forall eff. Service -> CreateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Launches an environment for the specified application using the specified configuration.</p>

#### `createPlatformVersion`

``` purescript
createPlatformVersion :: forall eff. Service -> CreatePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) CreatePlatformVersionResult
```

<p>Create a new version of your custom platform.</p>

#### `createStorageLocation`

``` purescript
createStorageLocation :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) CreateStorageLocationResultMessage
```

<p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, <code>CreateStorageLocation</code> still returns the bucket name but does not create a new bucket.</p>

#### `deleteApplication`

``` purescript
deleteApplication :: forall eff. Service -> DeleteApplicationMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>

#### `deleteApplicationVersion`

``` purescript
deleteApplicationVersion :: forall eff. Service -> DeleteApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>

#### `deleteConfigurationTemplate`

``` purescript
deleteConfigurationTemplate :: forall eff. Service -> DeleteConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>

#### `deleteEnvironmentConfiguration`

``` purescript
deleteEnvironmentConfiguration :: forall eff. Service -> DeleteEnvironmentConfigurationMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>

#### `deletePlatformVersion`

``` purescript
deletePlatformVersion :: forall eff. Service -> DeletePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) DeletePlatformVersionResult
```

<p>Deletes the specified version of a custom platform.</p>

#### `describeApplicationVersions`

``` purescript
describeApplicationVersions :: forall eff. Service -> DescribeApplicationVersionsMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionsMessage
```

<p>Retrieve a list of application versions.</p>

#### `describeApplications`

``` purescript
describeApplications :: forall eff. Service -> DescribeApplicationsMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionsMessage
```

<p>Returns the descriptions of existing applications.</p>

#### `describeConfigurationOptions`

``` purescript
describeConfigurationOptions :: forall eff. Service -> DescribeConfigurationOptionsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationOptionsDescription
```

<p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>

#### `describeConfigurationSettings`

``` purescript
describeConfigurationSettings :: forall eff. Service -> DescribeConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescriptions
```

<p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>

#### `describeEnvironmentHealth`

``` purescript
describeEnvironmentHealth :: forall eff. Service -> DescribeEnvironmentHealthRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentHealthResult
```

<p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>

#### `describeEnvironmentManagedActionHistory`

``` purescript
describeEnvironmentManagedActionHistory :: forall eff. Service -> DescribeEnvironmentManagedActionHistoryRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentManagedActionHistoryResult
```

<p>Lists an environment's completed and failed managed actions.</p>

#### `describeEnvironmentManagedActions`

``` purescript
describeEnvironmentManagedActions :: forall eff. Service -> DescribeEnvironmentManagedActionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEnvironmentManagedActionsResult
```

<p>Lists an environment's upcoming and in-progress managed actions.</p>

#### `describeEnvironmentResources`

``` purescript
describeEnvironmentResources :: forall eff. Service -> DescribeEnvironmentResourcesMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentResourceDescriptionsMessage
```

<p>Returns AWS resources for this environment.</p>

#### `describeEnvironments`

``` purescript
describeEnvironments :: forall eff. Service -> DescribeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescriptionsMessage
```

<p>Returns descriptions for existing environments.</p>

#### `describeEvents`

``` purescript
describeEvents :: forall eff. Service -> DescribeEventsMessage -> Aff (exception :: EXCEPTION | eff) EventDescriptionsMessage
```

<p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>

#### `describeInstancesHealth`

``` purescript
describeInstancesHealth :: forall eff. Service -> DescribeInstancesHealthRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstancesHealthResult
```

<p>Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health reporting</a>.</p>

#### `describePlatformVersion`

``` purescript
describePlatformVersion :: forall eff. Service -> DescribePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) DescribePlatformVersionResult
```

<p>Describes the version of the platform.</p>

#### `listAvailableSolutionStacks`

``` purescript
listAvailableSolutionStacks :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) ListAvailableSolutionStacksResultMessage
```

<p>Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.</p>

#### `listPlatformVersions`

``` purescript
listPlatformVersions :: forall eff. Service -> ListPlatformVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListPlatformVersionsResult
```

<p>Lists the available platforms.</p>

#### `listTagsForResource`

``` purescript
listTagsForResource :: forall eff. Service -> ListTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) ResourceTagsDescriptionMessage
```

<p>Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p>

#### `rebuildEnvironment`

``` purescript
rebuildEnvironment :: forall eff. Service -> RebuildEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>

#### `requestEnvironmentInfo`

``` purescript
requestEnvironmentInfo :: forall eff. Service -> RequestEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>

#### `restartAppServer`

``` purescript
restartAppServer :: forall eff. Service -> RestartAppServerMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>

#### `retrieveEnvironmentInfo`

``` purescript
retrieveEnvironmentInfo :: forall eff. Service -> RetrieveEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) RetrieveEnvironmentInfoResultMessage
```

<p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>

#### `swapEnvironmentCNAMEs`

``` purescript
swapEnvironmentCNAMEs :: forall eff. Service -> SwapEnvironmentCNAMEsMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Swaps the CNAMEs of two environments.</p>

#### `terminateEnvironment`

``` purescript
terminateEnvironment :: forall eff. Service -> TerminateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Terminates the specified environment.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. Service -> UpdateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ApplicationDescriptionMessage
```

<p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>

#### `updateApplicationResourceLifecycle`

``` purescript
updateApplicationResourceLifecycle :: forall eff. Service -> UpdateApplicationResourceLifecycleMessage -> Aff (exception :: EXCEPTION | eff) ApplicationResourceLifecycleDescriptionMessage
```

<p>Modifies lifecycle settings for an application.</p>

#### `updateApplicationVersion`

``` purescript
updateApplicationVersion :: forall eff. Service -> UpdateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ApplicationVersionDescriptionMessage
```

<p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>

#### `updateConfigurationTemplate`

``` purescript
updateConfigurationTemplate :: forall eff. Service -> UpdateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsDescription
```

<p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>

#### `updateEnvironment`

``` purescript
updateEnvironment :: forall eff. Service -> UpdateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) EnvironmentDescription
```

<p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>

#### `updateTagsForResource`

``` purescript
updateTagsForResource :: forall eff. Service -> UpdateTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code> for tags to add or update, and <code>TagsToRemove</code>.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p> <p>If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:</p> <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code> parameter.</p> </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code> parameter.</p> </dd> </dl> <p>For details about creating a custom user policy, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>

#### `validateConfigurationSettings`

``` purescript
validateConfigurationSettings :: forall eff. Service -> ValidateConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ConfigurationSettingsValidationMessages
```

<p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>


