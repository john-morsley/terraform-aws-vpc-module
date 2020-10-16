# An RKE cluster on AWS

## RKE VPC

For RKE to create a cluster successfully it requires the subnet has the
following tag:

```
"kubernetes.io/cluster/[CLUSTER NAME]": "owned"
```

This example demonstrates this.