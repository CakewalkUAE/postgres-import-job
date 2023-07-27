#!/usr/bin/env ash

set -e

pg_dumpall ${DUMP_FLAGS} "${SRC_POSTGRES}" | psql "${DST_POSTGRES}"
