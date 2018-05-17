_**This repo will no longer be updated. The new versions has been moved to [HybridPageKit](https://github.com/dequan1331/HybridPageKit) as a submodule. Integrate ' HybridPageKit/WKWebViewExtension ' subspecs with Cocoapods.**_

***

<br>
<br>


# WKWebViewExtension

[Extended Reading](https://dequan1331.github.io/index-en.html) | [中文](./README_CN.md) | [扩展阅读](https://dequan1331.github.io/)

An extension for WKWebView . 

Providing `WKWebView MenuItems delete` 、 `WKWebView support protocol` 、 `WKWebView clear cache or iOS8` and so on.

> Together with [ReusableNestingScrollview](https://github.com/dequan1331/ReusableNestingScrollview), sub repo of [HybridPageKit](https://github.com/dequan1331/HybridPageKit), which is a general sulotion of news App content page.


## Requirements
iOS 8.0 or later

		
##	Installation

1.	CocoaPods
	
		platform :ios, '8.0'
		pod 'WKWebViewExtension'

2.	Cloning the repository

	```objective-c
	#import <WKWebViewExtensionsDef.h>
	```

## Features

1.	DeleteMenuItems  `iOS11 this issue has been fixed `

	
		WKWebView Support Delete System MenuItems
   		Delete System Items Without cut/copy/paste/delete
   		

2.	SupportProtocol

		WKWebView Support Protocol Like UIWebView

3.	SafeClearCache

		WKWebView Support iOS8 Clear All Cache
		
4.	SafeScrollTo

		WKWebView Safe ScrollTo Specific Offset Without Blank Screen by Runloop
		
5.	SafeEvaluateJS

		Safe Evaluate JS And Retainify Webview For CallBack, and Make Sure CallBack IS NOT null
		
6.	ExternalNavigationDelegates

		WKWebView Support Internal And Extenal Delegates

7.	SyncConfigUA

		Sync Config UA Without WKWebView
		
## Licenses

All source code is licensed under the [MIT License](https://github.com/dequan1331/WKWebViewExtension/blob/master/LICENSE).

## Contact

<img src="./contact.png">