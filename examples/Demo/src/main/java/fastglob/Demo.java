package fastglob;

import fastglob.FastGLOB;

/**
 * Basic Hello World Demo for FastGLOB.
 */
public class Demo {
    public static void main(String[] args) {
        System.out.println("=== FastGLOB Demo ===");
        
        FastGLOB api = new FastGLOB();
        
        System.out.println("Calling native method...");
        api.doSomethingNative();
        
        System.out.println("=== Demo Complete ===");
    }
}
