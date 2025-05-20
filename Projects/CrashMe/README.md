# CrashMe

该项目是收集常见的crash，并对其进行分析，以便于开发者定位和复现问题。

## 环境

## QA

1. 项目运行错误 SDK does not contain 'libarclite'  问题
```
clang: error: SDK does not contain 'libarclite' at the path '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc/libarclite_iphonesimulator.a'; try increasing the minimum deployment target
```
[解决方案](https://github.com/yuehuig/libarclite)

1. 项目运行错误 Sandbox: rsync.samba deny(1) file-write-create

[解决方案](https://stackoverflow.com/questions/76590131/error-while-build-ios-app-in-xcode-sandbox-rsync-samba-13105-deny1-file-w)
![img](https://i.sstatic.net/NHtpa.png)
