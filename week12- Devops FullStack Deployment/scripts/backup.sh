#!/bin/bash

DATE=$(date +%F)

pg_dump -U postgres ecommerce > backup-$DATE.sql
aws s3 cp backup-$DATE.sql s3://my-backups/