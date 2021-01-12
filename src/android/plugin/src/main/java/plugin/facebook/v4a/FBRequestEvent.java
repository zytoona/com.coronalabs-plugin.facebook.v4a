//
//  FBRequestEvent.java
//  Facebook-v4a Plugin
//
//  Copyright (c) 2015 Corona Labs Inc. All rights reserved.
//

package plugin.facebook.v4a;

import com.ansca.corona.CoronaRuntime;

import com.naef.jnlua.LuaState;

public class FBRequestEvent extends FBBaseEvent {

	private final boolean mDidComplete;

	public FBRequestEvent(String response, boolean isError, boolean didComplete) {
		super(FBType.request, response, isError);
		mDidComplete = didComplete;
	}

	public void executeUsing(CoronaRuntime runtime) {
		super.executeUsing(runtime);

		LuaState L = runtime.getLuaState();

		L.pushBoolean(mDidComplete);
		L.setField(-2, "didComplete");
	}
}
