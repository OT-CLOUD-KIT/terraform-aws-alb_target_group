
/*-------------------------------------------------------*/
variable "applicaton_name" {
  type = string
}
variable "applicaton_port" {
  type = number
}
variable "applicaton_health_check_target" {
  type = string
}
/*-------------------------------------------------------*/
variable "tg_target_type" {
  type = string
  default = "instance"
}
variable "tg_protocol" {
  type = string
  default = "HTTP"
}
variable "vpc_id" {
  type = string
}
/*-------------------------------------------------------*/
variable "instance_id" {
  type = string
}