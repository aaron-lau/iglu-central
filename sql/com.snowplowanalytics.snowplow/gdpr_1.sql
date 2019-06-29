-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.6.0
-- Generated: 2019-06-27 09:51 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_gdpr_1 (
    "schema_vendor"        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"       VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"              CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"          TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"             VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"             VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"           VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "basis_for_processing" VARCHAR(20)   ENCODE ZSTD NOT NULL,
    "document_description" VARCHAR(4096) ENCODE ZSTD,
    "document_id"          VARCHAR(255)  ENCODE ZSTD,
    "document_version"     VARCHAR(16)   ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_gdpr_1 IS 'iglu:com.snowplowanalytics.snowplow/gdpr/jsonschema/1-0-0';
