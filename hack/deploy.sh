set -x
kubectl delete statefulset hab-sup-bootstrap-set
kubectl delete deployment redis-ha
docker build . -t alpine-sidekick
kubectl apply -f ../../bootstrap-habitat-supervisors-on-k8s/bootstrap-hab-sup-on-k8s.yml
docker save  alpine-sidekick | (eval $(minikube docker-env); docker load)
sleep 2
kubectl apply -f redis.yml
jeejklaar 

