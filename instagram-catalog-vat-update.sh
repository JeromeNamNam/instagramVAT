#!/usr/bin/bash

cd /home/bidiman/

#billyskate
wget https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billyskate-merchant%20export.txt
./instagram-vat-correction.pl billyskate-merchant\ export.txt > /var/www/html/MYCRONJOB/billyskate-fb-catalog.csv

#billystep
wget https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billystep-merchant%20export.txt
./instagram-vat-correction.pl billystep-merchant\ export.txt > /var/www/html/MYCRONJOB/billystep-fb-catalog.csv

#billywake
wget https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billywake-merchant%20export.txt
./instagram-vat-correction.pl billywake-merchant\ export.txt > /var/www/html/MYCRONJOB/billywake-fb-catalog.csv

#billykite
wget https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billykite-merchant%20export.txt
./instagram-vat-correction.pl billykite-merchant\ export.txt > /var/www/html/MYCRONJOB/billykite-fb-catalog.csv

#billysurf
wget https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billysurf-merchant%20export.txt
./instagram-vat-correction.pl billysurf-merchant\ export.txt > /var/www/html/MYCRONJOB/billysurf-fb-catalog.csv

