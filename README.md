[![pub package](https://img.shields.io/pub/v/scale.svg)](https://pub.dartlang.org/packages/scale)
[![Telegram](https://img.shields.io/badge/chat-telegram-0088cc)](https://t.me/+NvUXzshmIg44N2M0)
[![Youtube](https://img.shields.io/badge/subscribe-youtube-c4302b)](https://www.youtube.com/@AkDebuging)
[![Twitter](https://img.shields.io/badge/follow-x-000000)](https://x.com/akdebuging)
[![Coffee](https://img.shields.io/badge/buy%20me%20a-coffee-orange)](https://www.buymeacoffee.com/akdebuging)

<img src="https://raw.githubusercontent.com/Abedalkareem/scale/master/images/logo.png" width="200"/>

A flutter package to help you scale your design on all screens sizes to achieve the same design look.

## Screenshot  

iPhone 8, iPhone X Max, iPad Pro 12.9

<img src="https://raw.githubusercontent.com/Abedalkareem/scale/master/images/iphone8plus.png" width="200"/> <img src="https://raw.githubusercontent.com/Abedalkareem/scale/master/images/iphonexmax.png" width="200"/> <img src="https://raw.githubusercontent.com/Abedalkareem/scale/master/images/ipadpro12_9.png" width="400"/>

macOS

<img src="https://raw.githubusercontent.com/Abedalkareem/scale/master/images/macos.png" width="800"/>


*This screenshots from my app, it's available on [AppStore](https://apps.apple.com/gm/app/id1514479049) and [PlayStore](https://play.google.com/store/apps/details?id=com.jostudio.monkeybanana)*

## Usage  

First of all, in your base widget setup `Scale`.
So, if you have a design with 1280 * 720. You will pass first the context then the design size.

``` dart
Scale.setup(context, Size(1280, 720));
```

### Scale relative to height
Now to scale a number relative to screen height

``` dart
final height = Scale.scaleVertically(50);
```

Or, you can use the extension
``` dart
final height = 50.sv;
```

### Scale relative to width

To scale a number relative to screen width

``` dart
final width = Scale.scaleHorizontally(50);
```

Or, you can use the extension
``` dart
final width = 50.sh;
```

### Scale font

The font will be scaled relative to screen width, to do that:

``` dart
final fontSize = Scale.scaleFont(17);
```

Or, you can use the extension
``` dart
final fontSize = 17.sf;
```

## Installing  

Simply add `scale` as a dependency in your `pubspec.yaml` by running the following command:

``` console
$ flutter pub add scale
```