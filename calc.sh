#!/bin/sh

# ヘッダーを取得
sed -n '1p' data.csv > temp/header.csv
# ヘッダー行を抜く
# コンマ区切りで入出力
# 合計の計算
# 明細金額を計算 3行目の数量と4行目の金額を掛ける
# 合計行を追加
cat data.csv | sed '1d' | awk -F',' 'BEGIN {FS=",";OFS=","}{sum+=$3*$4;print $1,$2,$3,$4,$3*$4} END{print "","","","合計",sum}' > temp/temp.csv
# ヘッダーとデータを結合
cat temp/header.csv temp/temp.csv > result.csv