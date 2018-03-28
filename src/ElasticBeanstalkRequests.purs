
module AWS.ElasticBeanstalk.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ElasticBeanstalk as ElasticBeanstalk
import AWS.ElasticBeanstalk.Types as ElasticBeanstalkTypes


-- | <p>Cancels in-progress environment configuration update or application version deployment.</p>
abortEnvironmentUpdate :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.AbortEnvironmentUpdateMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
abortEnvironmentUpdate (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "abortEnvironmentUpdate"


-- | <p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>
applyEnvironmentManagedAction :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.ApplyEnvironmentManagedActionRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplyEnvironmentManagedActionResult
applyEnvironmentManagedAction (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "applyEnvironmentManagedAction"


-- | <p>Checks if the specified CNAME is available.</p>
checkDNSAvailability :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CheckDNSAvailabilityMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.CheckDNSAvailabilityResultMessage
checkDNSAvailability (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "checkDNSAvailability"


-- | <p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a> for details.</p>
composeEnvironments :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.ComposeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentDescriptionsMessage
composeEnvironments (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "composeEnvironments"


-- | <p> Creates an application that has one configuration template named <code>default</code> and no application versions. </p>
createApplication :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CreateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationDescriptionMessage
createApplication (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplication"


-- | <p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>
createApplicationVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CreateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationVersionDescriptionMessage
createApplicationVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplicationVersion"


-- | <p>Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>
createConfigurationTemplate :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CreateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ConfigurationSettingsDescription
createConfigurationTemplate (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createConfigurationTemplate"


-- | <p>Launches an environment for the specified application using the specified configuration.</p>
createEnvironment :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CreateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentDescription
createEnvironment (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createEnvironment"


-- | <p>Create a new version of your custom platform.</p>
createPlatformVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.CreatePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.CreatePlatformVersionResult
createPlatformVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPlatformVersion"


-- | <p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, <code>CreateStorageLocation</code> still returns the bucket name but does not create a new bucket.</p>
createStorageLocation :: forall eff. ElasticBeanstalk.Service ->  Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.CreateStorageLocationResultMessage
createStorageLocation (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "createStorageLocation"


-- | <p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>
deleteApplication :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DeleteApplicationMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteApplication (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplication"


-- | <p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>
deleteApplicationVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DeleteApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteApplicationVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplicationVersion"


-- | <p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>
deleteConfigurationTemplate :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DeleteConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteConfigurationTemplate (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteConfigurationTemplate"


-- | <p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>
deleteEnvironmentConfiguration :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DeleteEnvironmentConfigurationMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteEnvironmentConfiguration (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEnvironmentConfiguration"


-- | <p>Deletes the specified version of a custom platform.</p>
deletePlatformVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DeletePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DeletePlatformVersionResult
deletePlatformVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePlatformVersion"


-- | <p>Retrieve a list of application versions.</p>
describeApplicationVersions :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeApplicationVersionsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationVersionDescriptionsMessage
describeApplicationVersions (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeApplicationVersions"


-- | <p>Returns the descriptions of existing applications.</p>
describeApplications :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeApplicationsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationDescriptionsMessage
describeApplications (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeApplications"


-- | <p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>
describeConfigurationOptions :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeConfigurationOptionsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ConfigurationOptionsDescription
describeConfigurationOptions (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigurationOptions"


-- | <p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>
describeConfigurationSettings :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ConfigurationSettingsDescriptions
describeConfigurationSettings (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigurationSettings"


-- | <p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>
describeEnvironmentHealth :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEnvironmentHealthRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DescribeEnvironmentHealthResult
describeEnvironmentHealth (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentHealth"


-- | <p>Lists an environment's completed and failed managed actions.</p>
describeEnvironmentManagedActionHistory :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEnvironmentManagedActionHistoryRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DescribeEnvironmentManagedActionHistoryResult
describeEnvironmentManagedActionHistory (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentManagedActionHistory"


-- | <p>Lists an environment's upcoming and in-progress managed actions.</p>
describeEnvironmentManagedActions :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEnvironmentManagedActionsRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DescribeEnvironmentManagedActionsResult
describeEnvironmentManagedActions (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentManagedActions"


-- | <p>Returns AWS resources for this environment.</p>
describeEnvironmentResources :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEnvironmentResourcesMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentResourceDescriptionsMessage
describeEnvironmentResources (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironmentResources"


-- | <p>Returns descriptions for existing environments.</p>
describeEnvironments :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEnvironmentsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentDescriptionsMessage
describeEnvironments (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEnvironments"


-- | <p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>
describeEvents :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeEventsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EventDescriptionsMessage
describeEvents (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEvents"


-- | <p>Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health reporting</a>.</p>
describeInstancesHealth :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribeInstancesHealthRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DescribeInstancesHealthResult
describeInstancesHealth (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstancesHealth"


-- | <p>Describes the version of the platform.</p>
describePlatformVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.DescribePlatformVersionRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.DescribePlatformVersionResult
describePlatformVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePlatformVersion"


-- | <p>Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.</p>
listAvailableSolutionStacks :: forall eff. ElasticBeanstalk.Service ->  Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ListAvailableSolutionStacksResultMessage
listAvailableSolutionStacks (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "listAvailableSolutionStacks"


-- | <p>Lists the available platforms.</p>
listPlatformVersions :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.ListPlatformVersionsRequest -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ListPlatformVersionsResult
listPlatformVersions (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPlatformVersions"


-- | <p>Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p>
listTagsForResource :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.ListTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ResourceTagsDescriptionMessage
listTagsForResource (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForResource"


-- | <p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>
rebuildEnvironment :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.RebuildEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
rebuildEnvironment (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rebuildEnvironment"


-- | <p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>
requestEnvironmentInfo :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.RequestEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
requestEnvironmentInfo (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "requestEnvironmentInfo"


-- | <p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>
restartAppServer :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.RestartAppServerMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
restartAppServer (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "restartAppServer"


-- | <p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>
retrieveEnvironmentInfo :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.RetrieveEnvironmentInfoMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.RetrieveEnvironmentInfoResultMessage
retrieveEnvironmentInfo (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "retrieveEnvironmentInfo"


-- | <p>Swaps the CNAMEs of two environments.</p>
swapEnvironmentCNAMEs :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.SwapEnvironmentCNAMEsMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
swapEnvironmentCNAMEs (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "swapEnvironmentCNAMEs"


-- | <p>Terminates the specified environment.</p>
terminateEnvironment :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.TerminateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentDescription
terminateEnvironment (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "terminateEnvironment"


-- | <p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>
updateApplication :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateApplicationMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationDescriptionMessage
updateApplication (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplication"


-- | <p>Modifies lifecycle settings for an application.</p>
updateApplicationResourceLifecycle :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateApplicationResourceLifecycleMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationResourceLifecycleDescriptionMessage
updateApplicationResourceLifecycle (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplicationResourceLifecycle"


-- | <p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>
updateApplicationVersion :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateApplicationVersionMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ApplicationVersionDescriptionMessage
updateApplicationVersion (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplicationVersion"


-- | <p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>
updateConfigurationTemplate :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateConfigurationTemplateMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ConfigurationSettingsDescription
updateConfigurationTemplate (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateConfigurationTemplate"


-- | <p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>
updateEnvironment :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateEnvironmentMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.EnvironmentDescription
updateEnvironment (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateEnvironment"


-- | <p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code> for tags to add or update, and <code>TagsToRemove</code>.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p> <p>If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:</p> <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code> parameter.</p> </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code> parameter.</p> </dd> </dl> <p>For details about creating a custom user policy, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>
updateTagsForResource :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.UpdateTagsForResourceMessage -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateTagsForResource (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTagsForResource"


-- | <p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>
validateConfigurationSettings :: forall eff. ElasticBeanstalk.Service -> ElasticBeanstalkTypes.ValidateConfigurationSettingsMessage -> Aff (exception :: EXCEPTION | eff) ElasticBeanstalkTypes.ConfigurationSettingsValidationMessages
validateConfigurationSettings (ElasticBeanstalk.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "validateConfigurationSettings"
