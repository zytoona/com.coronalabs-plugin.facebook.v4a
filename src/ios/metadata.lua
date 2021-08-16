local metadata =
{
	plugin =
	{
		format = 'staticLibrary',
		staticLibs = { 'plugin_facebook', },
		frameworks = { 'Accounts', 'FBSDKCoreKit',  'FBSDKLoginKit', 'FBSDKShareKit', 'FBSDKCoreKit_Basics'},
		frameworksOptional = {},
		delegates = { 'CoronaFacebookDelegate' },
		usesSwift = true,
	},
}

return metadata
