#Habitat HA cluster on k8s

## Hook in redis-publisher not triggered
How to reproduce:

1. Start minikube
2. Start the bootstrap supervisors (see https://github.com/ContainerSolutions/bootstrap-habitat-supervisors-on-k8s)
3. Load redis docker image in minikube. `bash export-redis.sh`
4. Build sidekick container & load in minikube. `bash build-redis-publish.sh`
5. Update your redis.yml; replace moretea with your origin.
6. Deploy redis with `kubectl apply -f redis.yml`

To iterate:
1. Delete redis deployment: `kubectl delete deployment redis-ha`
2. Build sidekick container & load in minikube. `bash build-redis-publish.sh`
3. Deploy redis with `kubectl apply -f redis.yml`
