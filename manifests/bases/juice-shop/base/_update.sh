#!/bin/bash
set -ex

helm repo add seccurecodebox https://charts.securecodebox.io || true

helm template my-juice-shop seccurecodebox/juice-shop \
    --no-hooks > juice-shop.yml
