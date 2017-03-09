export POD=$(kubectl get pods | grep redis-depl | awk '{ print $1 }' | head -n $ID | tail -n1)
kubectl logs $POD -f
