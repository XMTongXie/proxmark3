# Proxmark3 复制门禁卡
## 背景

> 公司新来几个同事，使用手机NFC复制门禁卡失败，这个时候就该pm3上场了

## STEP1、知识储备

### 1、Proxmark3能干啥

Proxmark3 是一款国外安全团队研发的开原设备，可以破解IC卡、ID卡等等，如门禁卡、学生卡、饭卡、公交卡、地铁卡等等。

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015152225752.png" alt="image-20211015152225752" style="zoom:50%;" /> 



### 2、卡片知识

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015155501823.png" alt="image-20211015155501823"  /> 

## STEP2、环境要求

> ①win10/win7
>
> ②需要复制的门禁卡
>
> ③T5577空白卡一张
>
> ④PM3驱动
>
> ⑤Proxmark Tool

## STEP3、读卡



> 打开	Proxmark Tool.exe   >  选择com口  ，我这里是5口，所以我选择COM5。
>
> 端口选择正确不会有提示信息，如下图。

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015142847616.png" alt="image-20211015142847616" style="zoom:50%;" /> 



> 端口选择错误，会出现如图报错信息。

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015143049348.png" alt="image-20211015143049348" style="zoom:50%;" /> 



```
输入命令，查看设备天线电压，以测试设备是否正确连接。(有时候输入命令可能需要多等几秒钟才会输出结果。)
hw  tune
```

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015143317191.png" alt="image-20211015143317191" style="zoom:50%;" /> 

```
使用高频卡命令，检测卡片类型，发现报错，排除高频卡
hf 14a reader
```

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015163404974.png" alt="image-20211015163404974" style="zoom:50%;" /> 

```
使用低频卡命令查看，显示卡片类型为EM410x，并成功读出数据
lf search 
```

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015163838693.png" alt="image-20211015163838693" style="zoom:50%;" /> 

## step 4、复制卡

> EM4XX卡片也叫ID卡，可以用T5577卡片来进行克隆。
>
> 取下圆形天线区的EM410X卡片，把T5577空白卡片放入方形天线区，进行克隆

<img src="https://gitee.com/little-magician/picture-resources/raw/master/MarkDown%20/image-20211015145310926.png" alt="image-20211015145310926" style="zoom:50%;" /> 

> 确认卡片是否克隆成功
>
> 把克隆好的卡片放入圆形天线区，并进行数据读取，发现卡片类型变成Em410x，并且卡片ID和被破解的ID一样则表示卡片克隆成功

## STEP5、使用手册、驱动

​     [资料下载](https://github.com/XMTongXie/proxmark3)
