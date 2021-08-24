
#!/bin/bash
set -euo pipefail

CHART_DIRS="charts"
KUBEVAL_VERSION="v0.16.1"
SCHEMA_LOCATION="https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/"

# install kubeval
curl --silent --show-error --fail --location --output /tmp/kubeval.tar.gz https://github.com/instrumenta/kubeval/releases/download/"${KUBEVAL_VERSION}"/kubeval-linux-amd64.tar.gz
tar -xf /tmp/kubeval.tar.gz kubeval

# validate charts
for CHART_DIR in ${CHART_DIRS}; do
  if [[ "$CHART_DIR" != "lib-"* ]] ; then 
    helm template --values charts/"${CHART_DIR}"/ci/ci-values.yaml charts/"${CHART_DIR}" | ./kubeval --strict --ignore-missing-schemas --kubernetes-version "${KUBERNETES_VERSION#v}" --schema-location "${SCHEMA_LOCATION}"
  else 
    echo "skipping $CHART_DIR - library chart" 
  fi
done
