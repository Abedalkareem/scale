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
