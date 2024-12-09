#!/bin/bash
echo "正在编译打包源码..."
rm -rf ./mvn.log
mvn -f ../pom.xml clean package | tee mvn.log
buildResult=`grep 'BUILD SUCCESS' mvn.log`

if [[ -z $buildResult ]]
then
  echo "项目构建失败...退出，请检查"
  exit 0
else
  echo "项目构建成功..."
fi
echo "开始构建新镜像..."
docker build -f ./Dockerfile -t deploy-springboot:v1.0 ../
imageId=`docker images | grep deploy-springboot | grep v1.0 | awk '{print $3}'`
echo "正在启动容器..."
docker run -d -p 9999:8080 $imageId
echo "启动成功..."
containerId=`docker ps | grep $imageId | awk '{print $1'}`
docker logs -f $containerId
