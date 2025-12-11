![cover_image](https://mmbiz.qlogo.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHNiaIUWhRJsRvf5DGXNfyTFbDgBibKSnD0YfUjDXiabvnQI9aeqccws5rQ/0?wx_fmt=jpeg)

#  Flutter应用信息

原创  coderwhy  [ coderwhy ](javascript:void\(0\);)

__ _ _ _ _

在小说阅读器中沉浸阅读

> 真正开发一个完成的跨平台App需要针对不同的平台设置不同的应用信息
>
>   * 比如应用标识、应用名称、应用图标、应用启动图等等
>

##  一. 应用标识

###  1.1. Android应用标识

Android应用标识在对应的Android目录下：Android/app/build.gradle

  * applicationId：是打包时的应用标识 

    
    
        defaultConfig {  
            // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).  
            applicationId "com.coderwhy.catefavor"  
            minSdkVersion 16  
            targetSdkVersion 28  
            versionCode flutterVersionCode.toInteger()  
            versionName flutterVersionName  
            testInstrumentationRunner "androidx.test.runner.AndroidJUnitRunner"  
        }  
    

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHrVTXk2WNcMWIO2D3q6fDmxAuItoRgiaFzCgEnn5Ah0SIlYBQAOiclkGg/640?wx_fmt=jpeg)
Android应用标识

###  1.2. iOS应用标识

iOS应用标识在对应的iOS目录下：ios/Runner/Info.plist（可以通过Xcode打开来进行修改）

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicH2r4Zwk9DF4bedIubBaK12D19aWTHmmjE4hs3QkltFPPEpYE6Kiag1ww/640?wx_fmt=jpeg)
iOS应用标识

##  二. 应用名称

###  2.1. Android应用名称

Android应用名称在对应的Android目录下：android/app/src/main/AndroidMainifest.xml

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHriaDLXJcJu2DbtxIbUboC279fa6pdDxydK2utGlicbYHq8xmkMfJwVqw/640?wx_fmt=jpeg)
Android应用名称

###  2.2. iOS应用名称

iOS应用名称在对应的iOS目录下：ios/Runner/Info.plist（可以通过Xcode打开来进行修改）

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicH4Xubqiac5JiapeRjLRheyEiaaQhqPKhZDqBQicdD0oQ7L8NnB0yhTcZAUg/640?wx_fmt=jpeg)
iOS应用名称

##  三. 应用图标

###  3.1. Android应用图标

官方建议将图标（icon）根据不同的dpi放置在res/mipmap文件夹下。

![](https://mmbiz.qpic.cn/mmbiz_png/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHhJRvU2uFyMdyzialFAR0WxqxpHk2eIvzUXR0Id6bnXhZjsaQVabjia0g/640?wx_fmt=png)
Android icon location
![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHTJY2j3K9VVKd3KtHKJffkhrfqVXQSxQ1aEQzvFjuRu7kOXoNRVMyuw/640?wx_fmt=jpeg)
img

###  3.2. iOS应用图标

iOS的应用图标在ios/Runner/Assets.xcassets/AppIcon.appiconset中管理（可以直接打开Xcode将对应的图标拖入）

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHwI8xCOJ9AUlfK0q5R0anKREwhotKxHfgGJOvrUlAicIk5iaVFpP7QnwQ/640?wx_fmt=jpeg)
iOS应用图标

##  四. 应用启动图

###  4.1. Android应用启动图

Android中默认的启动图是一片空白的，这是Flutter的默认设置效果。

  * 在哪里设置呢？android/app/src/main/res/drawable/launch_background.xml 

    
    
    <?xml version="1.0" encoding="utf-8"?>  
    <!-- Modify this file to customize your launch splash screen -->  
    <layer-list xmlns:android="http://schemas.android.com/apk/res/android">  
        <item android:drawable="@android:color/white" />  
      
        <!-- You can insert your own image assets here -->  
        <!--<item>  
            <bitmap  
                android:gravity="center"  
                android:src="@mipmap/launcher_image"/>  
        </item>-->  
    </layer-list>  
    

我们可以进行如下修改：

第一步：将对应的启动图片，添加到对应的minimap文件夹中

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHaP8dxmKuP5rzxkaEPJrXia65jiag9KTtnicO1HX28FAv7XeAb0gmfia0RA/640?wx_fmt=jpeg)
启动图

第二步：修改launch_background.xml文件如下：

  * 注意：我这里启动图命名为launcher_image，需要修改为你的名称 

    
    
    <?xml version="1.0" encoding="utf-8"?>  
    <!-- Modify this file to customize your launch splash screen -->  
    <layer-list xmlns:android="http://schemas.android.com/apk/res/android">  
    <!--    <item android:drawable="@android:color/white" />-->  
      
        <!-- You can insert your own image assets here -->  
        <item>  
            <bitmap  
                android:gravity="center"  
                android:src="@mipmap/launcher_image"/>  
        </item>  
    </layer-list>  
    

###  4.2. iOS应用启动图

**iOS需要两步来完成：**

第一步：将启动图片添加到资源依赖中

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHyFw12F6NpyZYkQcibXDicXor4F1e1lMSqicSVaiaZXufW6b5P0wFBWew6Q/640?wx_fmt=jpeg)
添加依赖的启动图

第二步：在LaunchScreen.storyboard中，添加一个ImageView，并且添加约束

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHb2oQibvzTvw4g20GrUjL4icAOmVdaZOztu7iasqvhW5IEV9ia4WOTFzKtQ/640?wx_fmt=jpeg)
LaunchScreen的布局

>
> 备注：所有内容首发于公众号，之后除了Flutter也会更新其他技术文章，TypeScript、React、Node、uniapp、mpvue、数据结构与算法等等，也会更新一些自己的学习心得等，欢迎大家关注

![](https://mmbiz.qpic.cn/mmbiz_jpg/O8xWXzAqXuuUqMlK9Xn5VNnvCtAdOAicHUibVEY5xWpXQu7wuuFYD2EYn6iaqpN6icpHq72Pyz0jNqibibkc4p2os0qw/640?wx_fmt=jpeg)
公众号

  

预览时标签不可点

微信扫一扫  
关注该公众号



微信扫一扫  
使用小程序

****



****



****



×  分析

__

![作者头像](http://mmbiz.qpic.cn/mmbiz_png/O8xWXzAqXuuMicMmNp6xBCODFtuI4MygS376w9ZOP45TU2s7DuQdia5qRDPL0DbXWfylfoavtp9TZog5zEcwBGHw/0?wx_fmt=png)

微信扫一扫可打开此内容，  
使用完整服务

：  ，  ，  ，  ，  ，  ，  ，  ，  ，  ，  ，  ，  。  视频  小程序  赞  ，轻点两下取消赞  在看  ，轻点两下取消在看
分享  留言  收藏  听过

