local metadata =
{
	plugin =
	{
		format = 'jar',
		manifest = 
		{
			permissions = {},
			usesPermissions =
			{
				"android.permission.INTERNET",
			},
			usesFeatures = {},
			applicationChildElements =
			{
				-- Array of strings
				-- Facebook SDK v4+
				[[
				<!-- Add facebook activity so login can work. Replaces LoginActivity from version 3.  -->
				<activity android:name="com.facebook.FacebookActivity"
						android:configChanges="keyboard|keyboardHidden|screenLayout|screenSize|orientation" 
						android:theme="@style/com_facebook_activity_theme" />
		        <activity android:name="plugin.facebook.v4a.FacebookFragmentActivity"
					android:theme="@android:style/Theme.NoTitleBar.Fullscreen" 
					android:configChanges="keyboardHidden|screenSize|orientation"/>
				]],
			},
		},
	},
	coronaManifest = {
		dependencies = {
			["shared.android.support.v4"] = "com.coronalabs",
			["shared.android.support.v7.appcompat"] = "com.coronalabs",
			["shared.android.support.v7.cardview"] = "com.coronalabs",
		},
	},
}

return metadata