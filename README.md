基于Qt5的桌面应用程序上传到Mac App Store流程

---
###开发环境：
#####Qt5.3.2、MacOS10.10.3、xcode6.1
---

###参考资料：
* [1、Mac下Qt程序打包](http://www.sollyu.com/mac-qt-program-released/)
* [2、调整Qt5打包后Framework中的目录结构脚本](https://gist.github.com/kingcheez/6154462d7734e0c0f3a4)
* [3、info.plist文件键值说明](http://my.oschina.net/u/727843/blog/392824)
* [4、Framework Bundles苹果官方说明](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPFrameworks/Concepts/FrameworkAnatomy.html)
* [5、python库:plist文件读取(biplist)](https://github.com/wooster/biplist)

---
###流程：
1.    编译工程, Build Phases中增加以下脚本
	* [拷贝Qt所需的Framework和插件脚本](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/1.sh)<br/>过程中直接使用macdeployqt命令，会自动拷贝所有的Qt的库，如果需要精简程序可在脚本中写代码手动有选择的拷贝 
	* [调整app下Qt的每个Frameworkde目录脚本](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/2.sh)<br/>使用了参考资料[2]的脚本，另存为了py文件([ChangeQt5FrameworkDir.py](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/ChangeQt5FrameworkDir.py))<br/>
	* [Qt的Framework的info.plist修改脚本](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/3.sh)<br/>
由于Qt的各个Framework中的info.plist使用并不符合苹果的规范，所以自己写了个python脚本([AddBundleInfo.py](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/AddBundleInfo.py))来修改Qt各个Framework中的info.plist信息, 嵌入到了[ChangeQt5FrameworkDir.py](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/ChangeQt5FrameworkDir.py)文件中

2. 配置xcode<br/>
	* xcode上配置具有Distribution（发布）权限的账号及修改工程签名配置等，这里不做阐述，具体请度娘
	* 配置归档属性，xcode->Edit Scheme->Archive->Build Configuration修改为Release


3. 生成归档（Archive）
	* Xcode菜单->product->Archive，等待Xcode自动将工程生成归档(Archive)<br/>
	![Alt text](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/BulidPhases.png)
	* 生成完成后弹出Origanier窗体，会看到自动归档的信息<br/>
	![Alt text](https://github.com/PatchLion/Qt5AppPushToMacAppStore/blob/master/Organizer.png)
	* 点击Validate可验证归档是否符合上传要求
	* 如果符合上传要求则可以点击Submit开始上传
	
4. 过程中遇到的其他问题
	* 提示icns文件找不到512x512、512x512@2的图标，重新生成icns文件后通过

---
