# JacksZoomOut


实现图片（任意View）的放大查看

1.可以是约束布局的View，也可以是坐标(frame)布局的View
2.通过superView.insertSubview(zView, belowSubview: self.replaceView) 和 superView.insertSubview(replaceView, aboveSubview: zView)
保证查看结束后，zView可以恢复原来在父视图中的对应层级（与兄弟视图之间的层级）
3.目前只实现了一次查看一张图片（View）。

