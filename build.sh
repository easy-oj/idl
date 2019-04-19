#!/usr/bin/env bash

rm -rf ac
rm -rf github.com

protoc --gofast_out=plugins=grpc:. ./base.proto
protoc --gofast_out=plugins=grpc:. ./common.proto
protoc --gofast_out=plugins=grpc:. ./repos.proto
protoc --gofast_out=plugins=grpc:. ./oss.proto
protoc --gofast_out=plugins=grpc:. ./queue.proto

protoc --java_out=. ./base.proto
protoc --java_out=. ./common.proto
protoc --java_out=. ./repos.proto
protoc --java_out=. ./oss.proto
protoc --java_out=. ./queue.proto

protoc --grpc-java_out=. ./base.proto
protoc --grpc-java_out=. ./common.proto
protoc --grpc-java_out=. ./repos.proto
protoc --grpc-java_out=. ./oss.proto
protoc --grpc-java_out=. ./queue.proto
