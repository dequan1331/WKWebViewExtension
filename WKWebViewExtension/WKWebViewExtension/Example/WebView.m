//
//  WebView.m
//  WKWebViewExtension
//
//  Created by dequanzhu.
//  Copyright © 2018 HybridPageKit. All rights reserved.
//

#import "WebView.h"

@interface WebViewProtocol : NSURLProtocol
@end
@implementation WebViewProtocol
+ (BOOL)canInitWithRequest:(NSURLRequest *)request{
    return YES;
}
+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request {
    return request;
}
- (void)startLoading{
    NSLog(@"WebViewProtocol start loading");
}
- (void)stopLoading{
    NSLog(@"WebViewProtocol stop loading");
}
@end

@implementation WebView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [NSURLProtocol registerClass:[WebViewProtocol class]];
        
        [WKWebView fixWKWebViewMenuItems];
        [WKWebView supportProtocolWithHTTP:YES customSchemeArray:nil];
        [WKWebView configCustomUAWithType:kConfigUATypeAppend UAString:@"HybridPageKit"];
    }
    return self;
}

#pragma mark - UIResponder

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(cut:) || action == @selector(copy:) || action == @selector(paste:) ||
               action == @selector(delete:)) {
        return [super canPerformAction:action withSender:sender];
    }
    return NO;
}

@end
