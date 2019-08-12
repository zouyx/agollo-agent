agollo-agent - Apollo in Service Mesh
================

[![golang](https://img.shields.io/badge/Language-Go-green.svg?style=flat)](https://golang.org)
[![Build Status](https://travis-ci.org/zouyx/agollo-agent.svg?branch=master)](https://travis-ci.org/zouyx/agollo-agent)
[![Go Report Card](https://goreportcard.com/badge/github.com/zouyx/agollo-agent)](https://goreportcard.com/report/github.com/zouyx/agollo-agent)
[![codebeat badge](https://codebeat.co/badges/6908a8d0-8865-4a93-b3f0-504e267de6b4)](https://codebeat.co/projects/github-com-zouyx-agollo-agent-master)
[![Coverage Status](https://coveralls.io/repos/github/zouyx/agollo-agent/badge.svg?branch=master)](https://coveralls.io/github/zouyx/agollo-agent?branch=master)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![GoDoc](http://godoc.org/github.com/zouyx/agollo-agent?status.svg)](http://godoc.org/github.com/zouyx/agollo-agent)
[![GitHub release](https://img.shields.io/github/release/zouyx/agollo-agent.svg)](https://github.com/zouyx/agollo-agent/releases)
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

[Apollo](https://github.com/ctripcorp/apollo)的Service Mesh实现

# Dependence

```bash
./import.sh
```

推荐[gopm](https://github.com/gpmgo/gopm)，不需要翻墙

# Installation

如果还没有安装Go开发环境，请参考以下文档[Getting Started](http://golang.org/doc/install.html) ，安装完成后，请执行以下命令：

## Mac/Linux

``` shell
./build.sh
```

## Windows

``` shell
```

*请注意*: 最好使用Go 1.8进行编译

# Run

完成编译后

- 进入build文件夹，配置app.properties（参考：[使用配置](https://github.com/zouyx/agollo/wiki/使用指南)）
- 执行
  - Mac/Linux : ./agollo-demo
  - Windows : agollo-demo.exe
  
# Contribution
  * Source Code: https://github.com/zouyx/agollo/
  * Issue Tracker: https://github.com/zouyx/agollo/issues

# License
The project is licensed under the [Apache 2 license](https://github.com/zouyx/agollo/blob/master/LICENSE).

# Reference
Apollo : https://github.com/ctripcorp/apollo

