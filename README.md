This is demo code to show Your Custom Xib UIView(w/ or w/o autolayout) on another Xib or Storyboard View Controller

The most important UIView base code is inside [`BaseView`](https://github.com/jhihguan/CustomXibOnXib/blob/master/CustomXib/View/BaseView.m) or [`here`](https://gist.github.com/jhihguan/4d36fad70eb92b0a9dec). 

```Objective-C
- (void)xibSetup {
#if !TARGET_INTERFACE_BUILDER
    NSBundle *bundle = [NSBundle mainBundle];
#else
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
#endif
// change nib named string if your xib name not the same as class
    UIView *view = [[bundle loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    view.frame = self.layer.bounds;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
}
```

Because showing Xib on another Xib you have to implement `initWithFrame` with some view setup function. And be aware of the `TARGET_INTERFACE_BUILDER`, it's a must have bundle init type check method.

###screen shots
![1](https://github.com/jhihguan/CustomXibOnXib/blob/master/Screen/screen1.png)

![2](https://github.com/jhihguan/CustomXibOnXib/blob/master/Screen/screen2.png)

