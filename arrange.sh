#!/bin/bash

DIR="./files"

cd "$DIR" || exit 1

for file in *.txt
do 
    #파일 맨 앞 문자 추출
    #대문자는 소문자로 바꿔서 변수에 저장
    first=$(echo "${file:0:1}" | tr '[:upper:]' '[:lower:]')
    
    #첫번째 문자 폴더로 이동
    mv "$file" "../$first/"
done