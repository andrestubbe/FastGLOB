package fastglob;

import fastcore.FastCore;

/**
 * FastGLOB Main API Class.
 * Native Windows capabilities exposed via JNI.
 */
public class FastGLOB {

    // Load the native library once upon class initialization
    static {
        FastCore.loadLibrary("fastglob");
    }

    /**
     * Executes the native capability via C++.
     */
    public native void doSomethingNative();

}
