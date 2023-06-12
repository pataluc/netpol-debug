#kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- curl service-1-80.poc-netpol.svc.cluster.local:80
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- curl service-1-81.poc-netpol.svc.cluster.local:81
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- curl service-2-80.poc-netpol.svc.cluster.local:80
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- curl service-2-81.poc-netpol.svc.cluster.local:81
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- curl service-2-80.poc-netpol.svc.cluster.local:80
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- curl service-2-81.poc-netpol.svc.cluster.local:81
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- curl service-1-80.poc-netpol.svc.cluster.local:80
#kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- curl service-1-81.poc-netpol.svc.cluster.local:81

kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- nc -vzw 1 service-1-80.poc-netpol.svc.cluster.local 80
kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- nc -vzw 1 service-1-81.poc-netpol.svc.cluster.local 81
kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- nc -vzw 1 service-2-80.poc-netpol.svc.cluster.local 80
kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- nc -vzw 1 service-2-81.poc-netpol.svc.cluster.local 81
kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- nc -vzw 1 service-2-80.poc-netpol.svc.cluster.local 80
kubectl exec -t $(kubectl get pods -o name | grep "deployment-1") -c curl -- nc -vzw 1 service-2-81.poc-netpol.svc.cluster.local 81
kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- nc -vzw 1 service-1-80.poc-netpol.svc.cluster.local 80
kubectl exec -t $(kubectl get pods -o name | grep "deployment-2") -c curl -- nc -vzw 1 service-1-81.poc-netpol.svc.cluster.local 81
