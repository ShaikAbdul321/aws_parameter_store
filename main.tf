resource "aws_ssm_parameter" "foo" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}
variable "params" {
  default = [
    { name:"shaik", type:"String",value:"shaik@123"},
    { name:"cutie", type:"String",value:"cutie@123"},
  ]
}