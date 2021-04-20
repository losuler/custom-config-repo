#!/usr/bin/env bash

cd "${AOSP_BUILD_DIR}"

# Apply community patches
echo "Applying community patch 00001-global-internet-permission-toggle.patch"
community_patches_dir="${ROOT_DIR}/community_patches"
rm -rf "${community_patches_dir}"
git clone https://github.com/rattlesnakeos/community_patches "${community_patches_dir}"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00001-global-internet-permission-toggle.patch"

echo "Applying community patch 00002-round-icon.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00002-round-icon.patch"

echo "Applying community patch 00003-enable-volte-wifi-calling.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00003-enable-volte-wifi-calling.patch"

echo "Applying community patch 00004-use-cloudflare-dns.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00004-use-cloudflare-dns.patch"

echo "Applying community patch 00005-2-button-navigation.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00005-2-button-navigation.patch"
