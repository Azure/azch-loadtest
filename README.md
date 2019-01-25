Usage
=====

```sh
docker run --rm -it azch/loadtest <public ip of order capture service>
```

To run this using Azure Container Instances
```sh
az container create -g akschallenge --n loadtest --image azch/loadtest -e SERVICE_IP=<public ip of order capture service> --restart-policy Never --no-wait

az container attach -g akschallenge --n loadtest

az container delete -g akschallenge --n loadtest
```

az container create -g akschallenge --name loadtest --image azch/loadtest  --restart-policy Never  --no-wait --environment-variables SERVICE_IP=23.96.91.35

az container logs --resource-group akschallenge --name loadtest