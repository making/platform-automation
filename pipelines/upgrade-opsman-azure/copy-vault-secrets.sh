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
         ;do
  vault kv put concourse/main/upgrade-opsman-azure/$v value=$(vault kv get -field=value concourse/main/install-pas-azure/$v)
done