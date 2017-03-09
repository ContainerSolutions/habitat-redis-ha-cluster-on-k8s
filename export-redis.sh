set -e
if true; then
  echo "buillding & upoading"

  # Export it to docker, and load it into minikube
  time sudo hab pkg install core/redis
  time sudo hab pkg export docker core/redis

  echo "Importing docker image..."
  docker save core/redis | (eval $(minikube docker-env); docker load)
  echo "done"
fi

kubectl config use-context minikube
