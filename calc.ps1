# ���׍s�̌v�Z
$data | 
Select-Object ���t,���e,����,���z,@{name="���׊z";expression={[INT]$_.����*$_.���z}} |
Export-Csv result.csv -Encoding UTF8 -NoTypeInformation

# ���v���v�Z
$data=Import-Csv .\result.csv -Encoding UTF8
$sum=$data.���׊z | Measure-Object -Sum
$total=$sum.Sum

# ���v�s��ǉ�
",,,���v,$total" |Add-Content -Path .\result.csv -Encoding UTF8
