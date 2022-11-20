
#! /bin/sh
countryCode=$1
sku1=$2
sku2=$3

while [ -z "$countryCode" ]
do
   echo 'Enter Country Code '
   read -r -p $'Country Code:' countryCode
done
while [ -z "$sku1" ]
do
   echo 'Enter SKU '
   read -r -p $'SKU:' sku1
done
while [ -z "$sku2" ]
do
   echo 'Enter SKU '
   read -r -p $'SKU:' sku2
done

curl  https://api.ecom.snoozestage.com/ecommerce-api-gateway/inventory/api/v1/inventory?countryCode=$countryCode\&skus=$sku1\&skus=$sku2







