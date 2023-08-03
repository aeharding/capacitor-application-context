package com.mycompany.plugins.example;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ApplicationContext")
public class ApplicationContextPlugin extends Plugin {

    private ApplicationContext implementation = new ApplicationContext();

    @PluginMethod
    public void updateApplicationContext(PluginCall call) {
        call.resolve();
    }
}
