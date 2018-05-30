#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create users and databases
"${psql[@]}" <<- 'EOSQL'
CREATE EXTENSION HSTORE;

CREATE TABLE journal (
   "id" BIGSERIAL NOT NULL PRIMARY KEY,
   "persistenceid" VARCHAR(254) NOT NULL,
   "sequencenr" INT NOT NULL,
   "rowid" BIGINT DEFAULT NULL,
   "deleted" BOOLEAN DEFAULT false,
   "payload" BYTEA,
   "manifest" VARCHAR(512),
   "uuid" VARCHAR(36) NOT NULL,
   "writeruuid" VARCHAR(36) NOT NULL,
   "created" timestamptz NOT NULL,
   "tags" HSTORE,
   "event" JSON,
   constraint "cc_journal_payload_event" check (payload IS NOT NULL OR event IS NOT NULL)
);

CREATE UNIQUE INDEX journal_pidseq_idx ON journal (persistenceid, sequencenr);
CREATE UNIQUE INDEX journal_rowid_idx ON journal (rowid);

CREATE TABLE snapshot (
   "persistenceid" VARCHAR(254) NOT NULL,
   "sequencenr" INT NOT NULL,
   "timestamp" bigint NOT NULL,
   "snapshot" BYTEA,
   "manifest" VARCHAR(512),
   "json" JSON,
   CONSTRAINT "cc_snapshot_payload_json" check (snapshot IS NOT NULL OR (json IS NOT NULL AND manifest IS NOT NULL)),
   PRIMARY KEY (persistenceid, sequencenr)
);
EOSQL
