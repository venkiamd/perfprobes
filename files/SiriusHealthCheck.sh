#!/bin/bash
curl  https://api.ipify.org/?format=json -s -o /dev/null -w "response_code: %{http_code}
dns_time: %{time_namelookup}
connect_time: %{time_connect}
pretransfer_time: %{time_pretransfer}
starttransfer_time: %{time_starttransfer}
total_time: %{time_total}\n
" >> /var/log/SiriusHealthCheck
