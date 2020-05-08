export OM_TARGET=pcf.sandbox.a.ik.am
export OM_USERNAME=admin
echo -n "OM_PASSWORD > "
read -s OM_PASSWORD
export OM_PASSWORD
export OM_DECRYPTION_PASSPHRASE=${OM_PASSWORD}
export OM_SKIP_SSL_VALIDATION=true