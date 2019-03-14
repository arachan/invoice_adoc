#!/bin/sh

# ヘッダーを取得
sed -n '1p' data.csv > temp/header.csv
# ヘッダー行を抜く
# コンマ区切りで入出力
# 3行目と4行目を計算して5行目に出力
# 合計行を追加
cat data.csv | sed '1d' | awk -F',' 'BEGIN {FS=",";OFS=","}{sum+=$3*$4;print $1,$2,$3,$4,$3*$4} END{print "","","","合計",sum}' > temp/temp.csv
# ヘッダーとデータを結合
cat temp/header.csv temp/temp.csv > result.csv