set -x
kubectl delete deployment redis-ha
docker build . -t alpine-sidekick
docker save alpine-sidekick | (eval $(minikube docker-env); docker load)
sleep 2
kubectl apply -f redis-local.yml
