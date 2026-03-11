#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/andrejsrna/Documents/web/gardenyx-shopify"
STORE="ck6dvj-mf.myshopify.com"

exec shopify theme push \
  --live \
  --allow-live \
  --nodelete \
  --store "$STORE" \
  --path "$ROOT" \
  --ignore "sections/footer.liquid" \
  --ignore "sections/footer-group.json" \
  --ignore "config/settings_data.json" \
  --ignore "config/settings_schema.json" \
  "$@"
