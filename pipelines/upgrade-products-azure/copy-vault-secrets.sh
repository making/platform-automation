#!/bin/bash
set -ex
for v in controlplane_ci_account_name \
         controlplane_ci_storage_account_access_key \
         controlplane_ci_storage_container_name \
         pivnet_api_token \
         om_username \
         om_password \
         dns_suffix \
         dns_subdomain \
         email \
         location \
         slack_webhook_url \
         ;do
  vault kv put concourse/main/upgrade-products-azure/$v value="$(vault kv get -field=value concourse/main/upgrade-opsman-azure/$v)"
done