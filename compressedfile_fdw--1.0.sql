/* contrib/compressedfile_fdw/compressedfile_fdw--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION compressedfile_fdw" to load this file. \quit

CREATE FUNCTION compressedfile_fdw_handler()
RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION compressedfile_fdw_validator(text[], oid)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FOREIGN DATA WRAPPER compressedfile_fdw
  HANDLER compressedfile_fdw_handler
  VALIDATOR compressedfile_fdw_validator;
