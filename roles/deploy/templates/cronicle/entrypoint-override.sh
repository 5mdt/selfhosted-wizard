#!/bin/bash
test -f /opt/cronicle/data/global/af/56/5a/af565a097a0cf8d7d5855ecc92c24c34.json\
  && echo '{"type":"list_page","items":[{"hostname":"'$(hostname)'","ip":"'$(hostname -i | awk '{print$1}')'"}]}'\
  > /opt/cronicle/data/global/af/56/5a/af565a097a0cf8d7d5855ecc92c24c34.json \
  || true
sh /entrypoint.sh
