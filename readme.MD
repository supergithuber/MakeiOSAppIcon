##  MakeiOSAppIcon

### Usage:

1. 下载项目，编译生成可执行文件
2. 导出可执行文件，或者直接使用我附在Executeble File文件夹下的可执行文件
3. 把1024*1024的png放在和可执行文件同级目录下
4. cd到可执行文件目录，执行:

```
./MakeiOSAppIcon  pathOfIcon
```

就会在可执行文件同级目录下生成 AppIcon.appiconset文件夹，直接把这个文件夹替换iOS项目中对应的文件夹即可

----

* 兼容至目前的Xcode10，接下来可能会有其他分辨率的Icon，需要更新代码