#!/bin/bash

if [ -z "$1" ]; then
  echo "Namespace argument missing"
  exit 1
fi

PASSWORD=$(kubectl -n "$1" get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)

echo "{\"argocd_password\": \"$PASSWORD\"}"
