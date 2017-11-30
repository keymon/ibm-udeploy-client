all:
	docker build . -t keymon/ibm-udeploy-client
	docker push keymon/ibm-udeploy-client
