#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "=============================Install Vagrant============================================================="
# export VAGRANT_CURRENT_VERSION="2.2.9"
apt-get install -qqy unzip jq

# https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_SHA256SUMS
export VAGRANT_CURRENT_VERSION="$(curl -s https://checkpoint-api.hashicorp.com/v1/check/vagrant | jq -r -M '.current_version')"
export VAGRANT_URL="https://releases.hashicorp.com/vagrant/${VAGRANT_CURRENT_VERSION}/vagrant_${VAGRANT_CURRENT_VERSION}_x86_64.deb"
export VAGRANT_SHA256_URL="https://releases.hashicorp.com/vagrant/$VAGRANT_CURRENT_VERSION/vagrant_${VAGRANT_CURRENT_VERSION}_SHA256SUMS"
export  VAGRANT_SHA256_SIG_URL="https://releases.hashicorp.com/vagrant/$VAGRANT_CURRENT_VERSION/vagrant_${VAGRANT_CURRENT_VERSION}_SHA256SUMS.sig"

# wget -nv "${VAGRANT_URL}"
curl -LO "${VAGRANT_URL}"
curl -LO "${VAGRANT_SHA256_URL}"
curl -LO "${VAGRANT_SHA256_SIG_URL}"
export HASHICORP_PUBLIC_KEY_URL="https://keybase.io/hashicorp/pgp_keys.asc" #https://www.hashicorp.com/security
# curl -sSL "${HASHICORP_PUBLIC_KEY_URL}" | gpg --import - # import the public key (PGP key)
`curl -sSL "${HASHICORP_PUBLIC_KEY_URL}" | gpg --import -` # import the public key (PGP key)
gpg --verify "vagrant_${VAGRANT_CURRENT_VERSION}_SHA256SUMS.sig" "vagrant_${VAGRANT_CURRENT_VERSION}_SHA256SUMS" 2>/dev/null #Verify the signature file is untampered

sha256sum  vagrant_${VAGRANT_CURRENT_VERSION}_x86_64.deb # via sha256sum
openssl dgst -sha256 vagrant_${VAGRANT_CURRENT_VERSION}_x86_64.deb # via openssl

echo $(shasum -a 256 -c "vagrant_${VAGRANT_CURRENT_VERSION}_SHA256SUMS" 2>&1 | grep OK)

dpkg -i vagrant_${VAGRANT_CURRENT_VERSION}_x86_64.deb
vagrant version
