# FastGLOB v0.1.0 — Native Win32 Globbing for Java 🚀

We are proud to announce the initial stable release of **FastGLOB v0.1.0**, a core high-performance JNI module in the **FastJava** suite!

FastGLOB provides lightning-fast, zero-allocation directory traversal and glob pattern matching for Java applications running on Windows, bypassing the overhead of standard `java.nio.file.PathMatcher`.

### Key Features ⚡
* **🚀 Direct Win32 Performance:** Bypasses JNI roundtrip limits by executing entire directory traversals and filtering natively inside C++ using Win32 API.
* **🛡️ Zero GC Allocation:** Matching is done natively on the C++ stack; only the final, matched paths are sent back to the JVM heap.
* **✨ Semantic Superiority:** Full support for:
  - `.gitignore`-compatible patterns.
  - Brace Expansion (e.g., `src/**/*.{cpp,h}`).
  - Negation Support (e.g., `!**/target/**`).
  - Consistent double-star (`**`) behavior matching root-level files.
* **📦 Zero Dependencies:** Requires only Java 17+ and Windows 10/11 x64.

### Getting Started 📥

Add FastGLOB to your `pom.xml` via JitPack:

```xml
<repositories>
    <repository>
        <id>jitpack.io</id>
        <url>https://jitpack.io</url>
    </repository>
</repositories>

<dependencies>
    <!-- 1. FastGLOB Main Module -->
    <dependency>
        <groupId>com.github.andrestubbe</groupId>
        <artifactId>FastGlob</artifactId>
        <version>v0.1.0</version>
    </dependency>
    
    <!-- 2. FastCore JNI Loader (Required) -->
    <dependency>
        <groupId>com.github.andrestubbe</groupId>
        <artifactId>fastcore</artifactId>
        <version>v1.0.0</version>
    </dependency>
</dependencies>
```
