# CustomUITableViewCell
swift方法使用Storyboard自定义UITableViewCell

效果图
![image.png](https://upload-images.jianshu.io/upload_images/1756672-1737b0cea86077d6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

1. 在Storyboard中先拖拽进UITableView，以及UITableViewCell。
![image.png](https://upload-images.jianshu.io/upload_images/1756672-30f3d87cf8f5552e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2. 将UITableViewCell拖进ViewController中，按照control键即可拖拽进去， 并设置代理方法以及数据源方法
![image.png](https://upload-images.jianshu.io/upload_images/1756672-224345146846ce3c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3.自定义UITableViewCell
  3.1 创建自定义UITableViewCell类，关联到Storyboard中，添加关联类名，记得设置identifier。在cell中添加想用的label控件，拖进自定义cell类中进行赋值，
![image.png](https://upload-images.jianshu.io/upload_images/1756672-3fa2c4774c5eb5ac.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![image.png](https://upload-images.jianshu.io/upload_images/1756672-e2591abc05c0ba9c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

Storyboard与xib是不一样的，Storyboard自己会registercell, 所以不用手动调用
`VVTestTableView.register(<UINib>, forCellReuseIdentifier: <String>)`或者
       ` VVTestTableView.register(<cellClass: AnyClass>, forCellReuseIdentifier: <String>)`方法
