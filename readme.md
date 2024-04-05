## How to run

配置示例请看`example`文件夹，例如选择使用`ore_old.exe`，将`ore_old`改为`ore.exe`，然后可以使用批处理命令，ore_new和ore_old是已经编译过的可执行文件，Linux系统自行编译。

编译可执行文件：

```
cargo build
```

------

## 注意事项

- 私钥文档名字`私钥.txt`，需要改为英文名字
- 文本的私钥填写格式是每行一个私钥
- RPC节点推荐Quick Node
- ore_old不吃电脑CPU，ore_new吃电脑CPU（代码编译后是ore_new）

## 批处理命令

确保`私钥.txt`在bats目录下

#### 批量生成领取ORE的bat文件

1. 编辑generate-claim.bat，替换`RPC节点`和修改私钥文档名字`私钥.txt`，改为英文名字
2. 保存修改后启动

------

#### 批量生成铸造ORE的bat文件

1. 编辑generate-mine.bat，替换节点和修改私钥文档名字`私钥.txt`，改为英文名字
2. 保存修改后启动

------

#### 批量查询各私钥可领取的ORE

1. 编辑get_rewards.bat，修改私钥文档名字`私钥.txt`，改为英文名字

## V50

```
Hx8CRZtjzBwaZkHHomT9FemVBcnHQnbAGr7zRFzMjhfG
```

