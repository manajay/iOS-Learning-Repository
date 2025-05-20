# CrashMe

该项目是收集常见的crash，并对其进行分析，以便于开发者定位和复现问题。

## 环境
Demo 当前运行环境，Xcode 16.1 模拟器运行， 如果运行失败，请看下面的 QA

## 推荐文章
- [Diagnosing issues using crash reports and device logs](https://developer.apple.com/documentation/xcode/diagnosing-issues-using-crash-reports-and-device-logs)
- [Understanding Crashes and Crash Logs](https://developer.apple.com/videos/play/wwdc2018/414/)
- [iOS Crash Dump Analysis, Second Edition](https://faisalmemon.github.io/ios-crash-dump-analysis-book/zh/)
- [Debug crashes in iOS using MetricKit](https://ohmyswift.com/blog/2025/05/08/debug-crashes-in-ios-using-metrickit/)

## 资源
- [iOS Crash Dump Analysis, Second Edition](../../Resources/Documents/ios-crash-dump-analysis-book-zh.pdf)

## QA

1. 项目运行错误 SDK does not contain 'libarclite'  问题
```
clang: error: SDK does not contain 'libarclite' at the path '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc/libarclite_iphonesimulator.a'; try increasing the minimum deployment target
```
[解决方案](https://github.com/yuehuig/libarclite)

1. 项目运行错误 Sandbox: rsync.samba deny(1) file-write-create

[解决方案](https://stackoverflow.com/questions/76590131/error-while-build-ios-app-in-xcode-sandbox-rsync-samba-13105-deny1-file-w)
![img](https://i.sstatic.net/NHtpa.png)
