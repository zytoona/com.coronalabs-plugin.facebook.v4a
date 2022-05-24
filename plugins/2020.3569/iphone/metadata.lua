local metadata =
{
	plugin =
	{
		format = 'staticLibrary',
		staticLibs = { 'plugin_facebook', },
		frameworks = { 'Accounts', 'FBSDKCoreKit',  'FBSDKLoginKit', 'FBSDKShareKit', 'FBSDKCoreKit_Basics', "FBAEMKit", "FBSDKGamingServicesKit", "Accelerate"},
		frameworksOptional = {},
		delegates = { 'CoronaFacebookDelegate' },
		usesSwift = true,
	},
}

return metadata
