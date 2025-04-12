#!/bin/bash
echo 'Building API Docs'

# Bundle the API Docs
npx @redocly/cli bundle ./openapi/openapi.yaml -o redocly-rest-api-example.yaml && \
npx @redocly/cli build-docs redocly-rest-api-example.yaml -o index.html
