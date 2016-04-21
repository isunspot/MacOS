动态修改XIB文件里面的控件，显示窗的位置，大小

1.在NSWindowController里面声明
@property(nonatomic, weak) IBOutlet NSButton *DymicButton;
2.在XIB里面创建BUTTON；
3.将BUTTON绑定到DymicButton；
4.在awakeFromNib里面加载代码添加显示前处理：
CGRect Rect;
Rect = self.DymicButton.frame;
Rect.origin.x = 新位置x;
Rect.origin.y = 新位置y;
[self.DymicButton setFrameOrigin:Rect.origin];

上面就可以实现动态修改按钮位置了。

======================================================
5.修改显示窗类似方法：
NSRect panelRect = [[self window] frame];
panelRect.origin.x = 新位置x;
panelRect.origin.y = 新位置y;
panelRect.size.width = 新宽度;
panelRect.size.height = 新高度;
[[self window] setFrame:panelRect display:NO];
