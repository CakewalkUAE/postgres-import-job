#!/usr/bin/env ash

set -e

pg_dumpall "${SRC_POSTGRES}" | psql "${DST_POSTGRES}"
