#!/bin/bash

# Init Lmod
. /etc/profile.d/modules.sh

# Init script return code
chk_ret=0

# Check the style of all EasyConfigs
chk_style_fails=""
for eb_src in [0-9].[0-9].[0-9]/*; do
  echo "EasyBuild - Checking style of ${eb_src}"
  eb --check-style "${eb_src}"
  eb_ret="${?}"
  echo ""
  test "${chk_ret}" = "0" && chk_ret="${eb_ret}"
  test "${eb_ret}" != "0" && chk_style_fails="${chk_style_fails} ${eb_src}"
done

# Report banner
echo ""
echo "***** All tests finished *****"
echo ""

# Report style issues
if test ! -z "${chk_style_fails}"; then
  echo "The following EasyConfigs have style issues:"
  echo ""
  for chk_fail in ${chk_style_fails}; do
    echo "  * ${chk_fail}"
  done
  echo ""
fi

exit "${chk_ret}"
