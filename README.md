# PaySDK

1、配置

① 添加URL Schemes
在Xcode中，选择你的工程设置项，选中TARGETS，在Info标签栏的 URL Types添加URL Schemes。支付宝填入自定义复杂的字符串（例alipay2015）。如果使用微信，填入所注册的微信应用程序APPID。
② iOS 9以上在Info.plist添加以下代码：
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>weixin</string>
    <string>wechat</string>
    <string>alipay</string>
</array>
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>

2、使用

① 初始化
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //配置参数
    [PayService initWithAppID:@"分配的APPID" andMerchantId:@"分配的MerchantId" andWeChatPay:@""];
    return YES;
}
② handleOpenUrl
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    [PayService openURL:url];
    return YES;
}
③调用
ZXFPayRequest *payRequest = [[ZXFPayRequest alloc] init];
    payRequest.tradeNo = @"**";
    payRequest.amount = @(**);
    payRequest.tradeTitle = @"**";
    payRequest.tradeMsg = @"**";
    payRequest.mobile = @"**";
    payRequest.scheme = @"**"";//实现了支付宝支付功能，该参数必须填。
    
    PayService *pService = [[PayService alloc] init];
    [pService sendPayRequest:payRequest response:^(NSError *error, ZXFPayResponse *response) {
        //处理相关回调逻辑
    }];

3、注意事项

① XXXXXXX does not contain bitcode. You must rebuild it with bitcode enabled (Xcode setting ENABLE_BITCODE), obtain an updated library from the vendor, or disable bitcode for this target.
请到 Xcode 项目的 Build Settings 页搜索 bitcode，将 Enable Bitcode 设置为 NO。
