# An RKE cluster on AWS

An RKE cluster requires the subnet that contains it to have the following tag:

```
"kubernetes.io/cluster/[CLUSTER NAME]": "owned"
```

This example demonstrates this.