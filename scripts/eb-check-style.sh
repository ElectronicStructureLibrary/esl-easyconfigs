#!/bin/bash

chk_ret=0
for eb_src in [0-9].[0-9].[0-9]/*; do
  echo "===== Begin check style: ${eb_src} ====="
  eb --check-style "${eb_src}"
  eb_ret="${?}"
  echo "===== End   check style: ${eb_src} ====="
  test "${chk_ret}" = "0" && chk_ret="${eb_ret}"
done

exit "${chk_ret}"
