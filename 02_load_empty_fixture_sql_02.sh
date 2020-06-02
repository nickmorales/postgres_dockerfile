#!/bin/bash
psql -U postgres -d empty_fixture -f /sgn/t/data/fixture/empty_fixture.sql
