KUSTOMIZE = kubectl apply -k
NAMESPACE = chirpstack

.PHONY: all mosquitto postgres redis chirpstack wait

all: mosquitto postgres redis wait chirpstack

mosquitto:
	$(KUSTOMIZE) base/mosquitto

postgres:
	$(KUSTOMIZE) base/postgres

redis:
	$(KUSTOMIZE) base/redis

wait:
	@echo "Esperando serviços subirem..."
	@kubectl wait --namespace=$(NAMESPACE) --for=condition=available deployment/mosquitto --timeout=60s
	@kubectl wait --namespace=$(NAMESPACE) --for=condition=available deployment/postgres --timeout=60s
	@kubectl wait --namespace=$(NAMESPACE) --for=condition=available deployment/redis --timeout=60s

chirpstack:
	$(KUSTOMIZE) base/chirpstack
