//
//  WKWebView + DeleteMenuItems.h
//  WKWebViewExtension
//
//  Created by dequanzhu.
//  Copyright © 2018 HybridPageKit. All rights reserved.
//

#import "ViewController.h"
#import "WebView.h"
@interface DelegateHandler:NSObject <WKNavigationDelegate>
@end
@implementation DelegateHandler
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"External delegate");
}
@end

@interface ViewController ()<WKNavigationDelegate>
@property(nonatomic,strong,readwrite)WKWebView *webView;
@property(nonatomic,strong,readwrite)DelegateHandler *externalDelegate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _externalDelegate = _externalDelegate = [[DelegateHandler alloc]init];
    
    [self.view addSubview:({
        _webView = [[WebView alloc]initWithFrame:self.view.bounds];
        [_webView useExternalNavigationDelegate];
        [_webView setMainNavigationDelegate:self];
        [_webView addExternalNavigationDelegate:_externalDelegate];
        [_webView loadHTMLString:[self _getHtmlString] baseURL:nil];
        _webView;
    })];
}

- (NSString *)_getHtmlString{
    NSMutableString *htmlString = @"<!DOCTYPE html><html><head><meta name=\"viewport\" content=\"initial-scale=1.0, width=device-width, user-scalable=no,viewport-fit=cover\"/></head><body><br><br>".mutableCopy;
    for (int i = 0; i<3; i++) {
        [htmlString appendString:@"<h1 align=\"center\" style=\"color:rgb(28,135,219)\">HybridPageKit</h1><h4 align=\"center\">WKWebViewExtension</h4>"];
    }
    [htmlString appendString:@"<br><h3 align=\"center\" style=\"color:rgb(28,135,219)\">Long Press here - Test MenuItems</h3></a><br>"];
    [htmlString appendString:@"<a style=\"text-decoration:none;color:rgb(28,135,219);width:100%;text-align:center \" href= \"https://github.com/dequan1331/HybridPageKit\"><h3>Click here - Test Protocol with Log</h3></a><br>"];
    [htmlString appendString:@"<a style=\"text-decoration:none;color:rgb(28,135,219);width:100%;text-align:center \" href= \"testUA\"><h3>Click here - Test UA with Log</h3></a><br>"];
    [htmlString appendString:@"<a style=\"text-decoration:none;color:rgb(28,135,219);width:100%;text-align:center \" href= \"testScroll\"><h3>Click here - Test Scroll</h3></a><br>"];
    
    for (int i = 0; i<3; i++) {
        [htmlString appendString:@"<h1 align=\"center\" style=\"color:rgb(28,135,219)\">HybridPageKit</h1><h4 align=\"center\">WKWebViewExtension</h4>"];
    }
    [htmlString appendString:@"</body></html>"];
    return htmlString.copy;
}

#pragma mark -
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
 
    
    if ([navigationAction.request.URL.absoluteString isEqualToString:@"testUA"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        [self.webView safeAsyncEvaluateJavaScriptString:@"navigator.userAgent" completionBlock:^(NSObject *result) {
            NSLog(@"navigator.userAgent : %@",result);
        }];
        return;
    }
    
    if ([navigationAction.request.URL.absoluteString isEqualToString:@"testScroll"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        [self.webView scrollToOffset:50.f maxRunloops:50 completionBlock:^(BOOL success, NSInteger loopTimes) {
            NSLog(@"safe scroll with %@ loops", @(loopTimes));
        }];
        return;
    }

    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"Main delegate");
}
@end
