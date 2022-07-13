# caf-example
> caf example output from caf tooling created to ease wrangling large configuration files

### Generation Code Example

```python
  stack = Stack(stack_name='stack1', region_name="northcentralus", network_cidr='10.0.0.0/16')

  dsc_db_host_compute = stack.add_service(service_name='dsc-db-host-compute')
  dsc_db_container_compute = stack.add_service(service_name='dsc-db-container-compute')
  dsc_azml_compute = stack.add_service(service_name='dsc-azml-compute')

  dsc_db_host_compute.allow_inbound_from(dsc_db_container_compute, port_range="443", protocol='tcp')

  stack.gen_caf()
```

### Deploy 
``` bash
git clone https://github.com/moon0440/caf-example.git
cd caf-example 
az login
terraform plan -out plan.out
terraform apply plan.out
```
