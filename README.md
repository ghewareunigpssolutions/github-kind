# github-kind

Deploy app using the following command:
    kubectl create deploy hello --image brainupgrade/hello:1.0

Expose the deployment using the following command:
    kubectl create svc nodeport --tcp=80:8080 --node-port=32444

Access application using the following URL:
    http://<forwarded-address>:32444

```    