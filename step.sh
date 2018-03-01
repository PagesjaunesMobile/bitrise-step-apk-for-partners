#!/bin/bash
set -ex

echo "This is the value specified for the input 'example_step_input': ${example_step_input}"


# write your script here
echo "Récupération des APK partenaires pour la version ${partner_target_version}"
echo "Pour le partenaire ${partner_target_name}"

mkdir /tmp/partners_tmp
cd /tmp/partners_tmp

# get all apk

wget --user=bbm --password=$PARTNER_FTP_PASSWORD $PARTNER_FTP_PATH/$partner_target_version/pagesjaunes-${partner_target_version}-${partner_target_name}_emb.apk
