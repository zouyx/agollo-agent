projectName="agollo-agent"
echo "构建$projectName....."
echo "=============================="
echo "设置GOPATH.."
srcBaseDir="$(pwd)"
export GOPATH=${srcBaseDir%src*}

echo "导包中.."
go get github.com/cihub/seelog
go get github.com/coocood/freecache
go get github.com/zouyx/agollo