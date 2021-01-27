#!/bin/bash
if grep "IPV4" roles/sample-apache/templates/index.html.j2; then
echo "Эта строка есть в файле"
else
echo "Этой строки нету в файле"
fi
