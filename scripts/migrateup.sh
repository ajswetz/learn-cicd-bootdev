#!/bin/bash

if [ -f .env ]; then
    source .env
fi

GOOSE_DRIVER=turso GOOSE_MIGRATION_DIR=sql/schema goose up
