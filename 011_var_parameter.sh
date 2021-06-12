#!/bin/sh

# 011) 실행 시 변숫값이 비어 있을 때 기본값을 정의해서 설정하기


cp largefile.tar.gz ${TMPDIR:=/tmp}
cd $TMPDIR
tar xzf largefile.tar.gz

echo "Extract files to $TMPDIR."


#   :-      변수값이 설정되어 있는지만 확인하고 값은 덮어쓰고 싶지 않을때
#   :?      변수값이 미정의 또는 빈 문자열이면 message를 출력하고 스크립트를 종료
#   :+      변수값이 미정의 또는 빈 문자열이면 null을 반환