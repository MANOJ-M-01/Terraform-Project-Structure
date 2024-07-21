[How To Structure Terraform Project (3 Levels)](https://youtu.be/nMVXs8VnrF4)

```sh
terraform apply --auto-approve
terraform destroy --auto-approve
```

### v1
```sh
./tf.sh apply
./tf.sh destroy
```

### v2

[upgrade in terraform](https://youtu.be/nMVXs8VnrF4?t=2015)


### v3
Each module will be hosted in a separate repository with a tag. Over time, this approach will become more complicated. For example, if you have 100 services, you will need to create 100 repositories 🤯