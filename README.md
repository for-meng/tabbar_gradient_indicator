# Tabbar gradient indicator
a custom tabbar gradient indicator for flutter, and it support ios and android

## Screenshots

![image](https://raw.githubusercontent.com/for-meng/tabbar_gradient_indicator/main/images/example.jpg)


## Getting Started

1. Depend on it by adding this to your pubspec.yaml file: ```tabbar_gradient_indicator: ^0.0.1```

2. Import it: ```import 'package:tabbar_gradient_indicator/tabbar_gradient_indicator.dart'```

3. set the **indicator** property of Tabbar like this:
````dart
TabBar(indicator: TabBarGradientIndicator(
gradientColor: [Color(0xff579CFA) , Color(0xff2FDEE7)],
indicatorWidth: 2)
)
````
