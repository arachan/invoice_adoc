Invoice
--------

I'm boring to write invoice.

I don't use even Word.

Oh, Let's use **AsciiDoc** to write inovice.

## Environment

- Windows10 Pro x64
    - PowerShell v5.1
- Visual Studio Code
    - AsciiDoc Extensions
- Git-Bash
    - include Git

## invoice data

- csv
- utf8
- data.csv

I want to calculate subtotal and sum to use Shell or PowerShell.

Linux/Mac can use shellscript include awk and sed.

Windows10 can use PowerShell.

calc.sh or calc.ps1 make **result.csv** form data.csv


## How to use

1. Write into data.csv
2. Run calc.sh or calc.ps1 to calculate subtotal and sum.
3. Write invoice.adoc
4. Convert to pdf to use asciidoctor-pdf

## Stamp

In Japan, we use stamp.

So, I prepaired stamp.jpg file.

stamp is old style authentication.

Japanese City Office prefer not Sign but stamp.

Bank and Tax office, Campany's general section prefer stamp, too.

Umm.... :-(

### invoice.adoc

Sample invoice is Japanese.

In English is under contents.

#### Point

**Simple Design**

AsciiDoc don't have Right Justify and Left Justify. 

So, Write upper to down.

**Contents**

It is include result.csv.

It change table to convert pdf or html.

```
== Invoice

=== To
Imperial Univercity Hospital

9-3 Tukiji
Chuo Ward
Tokyo Pref.
JP 104-0004

President
Shigekazu Hiruma

=== From

Kanbara Doctor Agency

Akira Kanbara

image::stamp.jpg[width=40]

1-4-1
Saga
Koto Ward
Tokyo Perf.
JP 135-0031

=== Contents

[format="csv", options="header"]
|===
include::result.csv[]
|===

=== the Bank Account

●● Bank ●● branch

(General)　000-000-000000

Kanbara Doctor Agency

```
