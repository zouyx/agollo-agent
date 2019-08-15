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

echo "打包中.."
bin_name=agollo-agent
addition_file="app.properties seelog.xml"

echo "making linux_64..."
GOOS=linux   GOARCH=amd64 go build -o ./dist/${bin_name}_linux_64 main/main.go

echo "making linux_386..."
GOOS=linux   GOARCH=386   go build -o ./dist/${bin_name}_linux_386 main/main.go

echo "making windows_386..."
GOOS=windows GOARCH=386   go build -o ./dist/${bin_name}_windows_386.exe main/main.go

echo "making windows_64..."
GOOS=windows GOARCH=amd64 go build -o ./dist/${bin_name}_windows_64.exe main/main.go

echo "making darwin_386..."
GOOS=darwin  GOARCH=386   go build -o ./dist/${bin_name}_darwin_386 main/main.go

echo "making darwin_64..."
GOOS=darwin  GOARCH=amd64 go build -o ./dist/${bin_name}_darwin_64 main/main.go

echo "构建运行环境.."
cp -rf seelog.xml dist/
cp -rf app.properties dist/
cd ./dist
echo "taring linux_64..."
tar -zcvf ${bin_name}_linux_64.gz ${bin_name}_linux_64 ${addition_file}

echo "taring linux_386..."
tar -zcvf ${bin_name}_linux_386.gz ${bin_name}_linux_386 ${addition_file}

echo "taring windows_386..."
tar -zcvf ${bin_name}_windows_386.gz ${bin_name}_windows_386.exe ${addition_file}

echo "taring windows_64..."
tar -zcvf ${bin_name}_windows_64.gz ${bin_name}_windows_64.exe ${addition_file}

echo "taring darwin_386..."
tar -zcvf ${bin_name}_darwin_386.gz ${bin_name}_darwin_386 ${addition_file}

echo "taring darwin_64..."
tar -zcvf ${bin_name}_darwin_64.gz ${bin_name}_darwin_64 ${addition_file}