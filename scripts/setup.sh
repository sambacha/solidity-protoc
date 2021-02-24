#!/bin/bash  

# install protobuf
# https://github.com/protocolbuffers/protobuf/releases/download/v3.15.2/protoc-3.15.2-osx-x86_64.zip
curl -L https://github.com/protocolbuffers/protobuf/releases/download/v3.15.2/protoc-3.15.2-linux-x86_64.zip -o protoc.zip
unzip protoc.zip -d protoc
sudo mv protoc/bin/* /usr/local/bin/
sudo mv protoc/include/* /usr/local/include/
# install npm packages
#pushd test/solidity
#npm install
#npm install -g truffle
#popd