_**暂停更新. 相关功能作为Submodule调整到 [HybridPageKit](https://github.com/dequan1331/HybridPageKit) 项目中. 后续使用Cocoapods，集成HybridPageKit的subspecs ——'HybridPageKit/WKWebViewExtension'**_

***

<br>
<br>


# WKWebViewExtension

[英文](./README.md) | [扩展阅读](https://dequan1331.github.io/) | [Extended Reading](https://dequan1331.github.io/index-en.html)


一系列WKWebView的扩展 .

提供自定义长按MenuItems Bug修复、支持NSURLProtocol、清理iOS 8浏览器缓存等功能。
 
> 与[ReusableNestingScrollview](https://github.com/dequan1331/ReusableNestingScrollview)一起，组件服务于[HybridPageKit](https://github.com/dequan1331/HybridPageKit)，一个资讯类内容底层页完善的通用组件。

## 配置

iOS 8.0 or later

		
##	安装

1.	CocoaPods
	
		platform :ios, '8.0'
		pod 'WKWebViewExtension'

2.	下载repo并引入头文件

	```objective-c
	#import <WKWebViewExtensionsDef.h>
	```

## 特点

1.	自定义长按MenuItems Bug修复  `iOS11系统已修复`

	
		自定义长按MenuItems Bug修复，iOS11前部分Item无法删除
   		

2.	支持NSURLProtocol

		支持NSURLProtocol

3.	清理浏览器缓存

		支持iOS 8 删除全部浏览器缓存
		
4.	安全滚动

		通过Runloop检测WebView的ContentSize是否大于滚动距离，自动滚动或等待重试
		
5.	安全执行JS

		防止WebView异步执行JS回调时，WebView释放导致Crash，容错JS执行回调null对象
		
6.	扩展Navigation Delegate

		通过代理分发，扩展Navigation Delegate，支持业务层级外部Delegate以及内部服务于JS Bridge的Delegate

7.	同步配置WebView UA

		扩展通过UIWebView同步配置UA，防止异步执行产生时序问题。
		
## 证书

All source code is licensed under the [MIT License](https://github.com/dequan1331/WKWebViewExtension/blob/master/LICENSE).