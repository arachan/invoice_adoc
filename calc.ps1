# 明細行の計算
$data | 
Select-Object 日付,内容,数量,金額,@{name="明細額";expression={[INT]$_.数量*$_.金額}} |
Export-Csv result.csv -Encoding UTF8 -NoTypeInformation

# 合計を計算
$data=Import-Csv .\result.csv -Encoding UTF8
$sum=$data.明細額 | Measure-Object -Sum
$total=$sum.Sum

# 合計行を追加
",,,合計,$total" |Add-Content -Path .\result.csv -Encoding UTF8
