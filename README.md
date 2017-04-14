# Habitat HA cluster on k8s

## From pre-build docker image

1. Start minikube
2. Start the bootstrap supervisors (see https://github.com/ContainerSolutions/bootstrap-habitat-supervisors-on-k8s)
3. Load redis docker image in minikube. `bash export-redis.sh`
4. Deploy redis with `kubectl apply -f redis.yml`

## From scratch
1. Start minikube
2. Start the bootstrap supervisors (see https://github.com/ContainerSolutions/bootstrap-habitat-supervisors-on-k8s)
3. Load redis docker image in minikube. `bash export-redis.sh`
4. Build sidekick container & deploy to minikube. `bash deploy.sh`
