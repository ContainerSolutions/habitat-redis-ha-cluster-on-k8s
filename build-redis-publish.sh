ORIGIN=${ORIGIN:-moretea}

set -e

cd redis-publisher
if true; then
  echo "buillding & upoading"
  time hab pkg build -R . 
  pkg_ident=$(cat results/last_build.env | grep "pkg_ident" | awk -F '=' ' { print $2 }')

  # Export it to docker, and load it into minikube
  time sudo hab studio run hab pkg export docker $pkg_ident


  echo "Importing docker image..."
  docker save $ORIGIN/redis-publisher| (eval $(minikube docker-env); docker load)
  echo "done"
fi

kubectl config use-context minikube
