#!/bin/sh

set -eu

touch resume/Staticfile

cat <<EOF > app-manifest/manifest.yml
---
applications:
  - name: $APP_NAME
    routes:
      - route: $APP_ROUTE
    memory: $APP_MEMORY
    instances: $APP_INSTANCES
    buildpack: staticfile_buildpack
    root: resume
EOF
