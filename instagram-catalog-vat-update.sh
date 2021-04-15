#!/bin/bash

cd /home/bidiman/

#billyskate
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billyskate-merchant%20export.txt -O /home/bidiman/billyskate-merchant\ export.txt
./instagram-vat-correction.pl billyskate-merchant\ export.txt > /var/www/html/MYCRONJOB/billyskate-fb-catalog.csv

#billystep
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billystep-merchant%20export.txt -O /home/bidiman/billystep-merchant\ export.txt
./instagram-vat-correction.pl billystep-merchant\ export.txt > /var/www/html/MYCRONJOB/billystep-fb-catalog.csv

#billywake
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billywake-merchant%20export.txt -O /home/bidiman/billywake-merchant\ export.txt
./instagram-vat-correction.pl billywake-merchant\ export.txt > /var/www/html/MYCRONJOB/billywake-fb-catalog.csv

#billykite
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billykite-merchant%20export.txt -O /home/bidiman/billykite-merchant\ export.txt
./instagram-vat-correction.pl billykite-merchant\ export.txt > /var/www/html/MYCRONJOB/billykite-fb-catalog.csv

#billysurf
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billysurf-merchant%20export.txt -O /home/bidiman/billysurf-merchant\ export.txt
./instagram-vat-correction.pl billysurf-merchant\ export.txt > /var/www/html/MYCRONJOB/billysurf-fb-catalog.csv

