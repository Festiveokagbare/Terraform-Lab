variable "ami-type" {
    description = "ami info"
    type = string
    default = "ami-0ca9fb66e076a6e32"
  
}
variable "instance_type" {
    default = "t2.micro"
  
}
variable "env" {
    default = "dev"
  
}
variable "instance-name" {
  default = "Postgresql-server-dev"
}
variable "team" {
    default = "dev team"
  
}