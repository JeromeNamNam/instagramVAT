#!/bin/bash

cd /home/bidiman/

#billyskate
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billyskate-merchant%20export.txt -O ./FEEDS/billyskate-merchant\ export.txt
./strip-tabs.rs /home/bidiman/FEEDS/billyskate-merchant\ export.txt > ./FEEDS/billyskate-merchant\ export.txt
./instagram-vat-correction.pl /home/bidiman/FEEDS/billyskate-merchant\ export.txt > /var/www/html/MYCRONJOB/billyskate-fb-catalog.csv

#billystep
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billystep-merchant%20export.txt  -O ./FEEDS/billystep-merchant\ export.txt
./strip-tabs.rs /home/bidiman/FEEDS/billystep-merchant\ export.txt > ./FEEDS/billystep-merchant\ export.txt
./instagram-vat-correction.pl /home/bidiman/FEEDS/billystep-merchant\ export.txt > /var/www/html/MYCRONJOB/billystep-fb-catalog.csv

#billywake
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billywake-merchant%20export.txt -O ./FEEDS/billywake-merchant\ export.txt
./strip-tabs.rs /home/bidiman/FEEDS/billywake-merchant\ export.txt > ./FEEDS/billywake-merchant\ export.txt
./instagram-vat-correction.pl /home/bidiman/FEEDS/billywake-merchant\ export.txt > /var/www/html/MYCRONJOB/billywake-fb-catalog.csv

#billykite
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billykite-merchant%20export.txt -O ./FEEDS/billykite-merchant\ export.txt
./strip-tabs.rs /home/bidiman/FEEDS/billykite-merchant\ export.txt > ./FEEDS/billykite-merchant\ export.txt
./instagram-vat-correction.pl /home/bidiman/FEEDS/billykite-merchant\ export.txt > /var/www/html/MYCRONJOB/billykite-fb-catalog.csv

#billysurf
wget -q https://app.excelify.io/files/billykite/aef199423acf286b99c2cc8174db1f18/export/billysurf-merchant%20export.txt -O ./FEEDS/billysurf-merchant\ export.txt
./strip-tabs.rs /home/bidiman/FEEDS/billysurf-merchant\ export.txt > ./FEEDS/billysurf-merchant\ export.txt
./instagram-vat-correction.pl /home/bidiman/FEEDS/billysurf-merchant\ export.txt > /var/www/html/MYCRONJOB/billysurf-fb-catalog.csv

