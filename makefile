SHELL := /bin/bash

ifndef VERBOSE
.SILENT:
endif

MANIFESTS_FILE := rendered.yaml

.PHON: render deploy undeploy clean

render:
	kustomize build base > ${MANIFESTS_FILE}

deploy: 
	if [[ -f "${MANIFESTS_FILE}" ]]; then kubectl create -f ${MANIFESTS_FILE}; else echo "First render the manifests by \"make render.\"";fi

undeploy:
	if [[ -f "${MANIFESTS_FILE}" ]]; then kubectl delete -f ${MANIFESTS_FILE}; else echo "Where is your ${MANIFESTS_FILE} file?";fi

clean:
	if [[ -f "${MANIFESTS_FILE}" ]]; then rm ${MANIFESTS_FILE}; fi
