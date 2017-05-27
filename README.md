# Setup_portal

## 说明

- 此项目可以实现一键部署云平台2.2.stable环境。
- 安装需要有网络，如遇到无网环境，请准备 ubuntu本地源。
- 使用本项目的前提是已经安装好openstack、ceph、S3。
- 目前只支持root用户安装。
- 目前只支持独立安装，不支持集群。


## 版本说明
- 软件版本：2.2.stable
- ansible：> 2.3.0
- OS：Ubuntu 14.04.5 LTS

## 如何使用

1. 因为包很大，所以大部分包暂时没有放到代码里面:

```
# 目录结构：
# tree 
.
├── apache-tomcat-7.5.77.tar.gz
├── AuthCenter-2.2.stable.war
├── elasticsearch-2.3.5.tar.gz
├── logstash-2.3.4.tar.gz
├── message-client-websend-1.2.0.jar
├── messaging-center-1.2.0.jar
├── ncloud-2.2.stable.war
├── NeunnManager-2.2.stable.war
├── neunn-search-0.0.1-SNAPSHOT.jar
├── nginx
│   ├── headers-more-nginx-module-0.29.tar.gz
│   ├── nginx-1.9.7.tar.gz
│   ├── openssl-1.0.2j.tar.gz
│   ├── pcre-8.38.tar.gz
│   └── zlib-1.2.8.tar.gz
└── portalnd-v2.2.stable.zip

1 directory, 15 files

```

2. 编辑group_vars/all，设置变量信息
3. 编辑hosts，设置主机信息。**mysql数据库主机使用了控制节点的第一个mysql服务器和rabbitmq就已经安装完成;rabbitmq主机配置填写控制节点的虚IP地址**
4. 执行安装脚本  

```
#ansible-playbook -i hosts config-database.yml -k
#SSH password:   # 输入数据库服务器的密码

#ansible-playbook -i hosts config-rabbitmq.yml -k
#SSH password:   # 输入rabbitmq服务器的密码

ansible-playbook -i hosts setup_portal.yml

```
