#!/bin/bash

#----------------------------------------------------------------
echo "Performing SSL check for portal.sapienceanalytics.com"
ssl-cert-check -s portal.sapienceanalytics.com -p 443 -x 30
ssl-cert-check -s portal.sapienceanalytics.com -p 443 -x 30 -n -q  && curl -fsS --retry 3 https://hc-ping.com/3776a7df-0907-46dd-864f-f77fdbfcf829  > /dev/null
echo $?

#----------------------------------------------------------------
echo "Performing SSL check for sisense.prod.prod.us.azure.sapienceanalytics.com"
ssl-cert-check -s sisense.prod.prod.us.azure.sapienceanalytics.com -p 443 -x 30
ssl-cert-check -s sisense.prod.prod.us.azure.sapienceanalytics.com -p 443 -x 30 -n -q  && curl -fsS --retry 3 https://hc-ping.com/32228b18-7552-4183-9258-23532cc5ba0c  > /dev/null
echo $?

#----------------------------------------------------------------
echo "Performing SSL check for manage.sapienceanalytics.com"
ssl-cert-check -s manage.sapienceanalytics.com -p 443 -x 30
ssl-cert-check -s manage.sapienceanalytics.com -p 443 -x 30 -n -q  && curl -fsS --retry 3 https://hc-ping.com/84187f96-6f8d-4516-b071-9114d5b24b26  > /dev/null
echo $?

#----------------------------------------------------------------