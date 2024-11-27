#!/usr/bin//bash
sqlite3 tasks.db '.read create-schema.sql'
sqlite3 tasks.db '.read seed-data.sql'