#!/bin/bash

REPOSITORY=registry.qseco.fr/tk4-k8s
 
declare -a containers=("tk4-node" "tn3270-web-node" "web-ui")

for container in "${containers[@]}"
do
	docker buildx build --platform linux/amd64 --load -t $REPOSITORY/$container:amd64 $container/
	docker buildx build --platform linux/arm64 --load -t $REPOSITORY/$container:arm64 $container/

	docker push $REPOSITORY/$container:arm64
	docker push $REPOSITORY/$container:amd64
done

sed 's/__ARCH__/amd64/g' deployment/template.yaml > deployment/amd64.yaml
sed 's/__ARCH__/arm64/g' deployment/template.yaml > deployment/arm64.yaml
