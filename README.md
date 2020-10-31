# Terraform with AWS 101 by zkan

<div>
<img src="https://i.pinimg.com/originals/f4/54/15/f45415270449af33c39dcb1e8af5a62a.png"></img>
</div>
<div>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Amazon_Web_Services_Logo.svg/1200px-Amazon_Web_Services_Logo.svg.png"></img>
</div>

## command

init project terraform

```
terraform init
```

checkout resource

```
terraform plan
```

save plan

```
terraform plan -out [name]
```

excution file

```
terraform apply [planname]
```

destroy

```
terraform destroy
```

create plan with tf file

```
terraform plan -out tfplan -var-file=[filename.tfvars]
```

### Note

```
--> resource = create new resource
--> data = use exciting resource
```
