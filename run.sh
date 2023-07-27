#!/usr/bin/env ash

set -e

pg_dump ${DUMP_FLAGS} "${SRC_POSTGRES}" --file=dumpfile.bak -Fc -Z 6 -v
pg_restore -d "${DST_POSTGRES}" -Fc --single-transaction -c --if-exists dumpfile.bak -v
