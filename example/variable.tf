variable "applicaton_name" {
  description = "Application name for naming resources"
  type        = string
}

variable "applicaton_port" {
  description = "Port on which the application is running"
  type        = number
  default     = 80
}

variable "tg_target_type" {
  description = "Target type for the target group (instance or ip)"
  type        = string
  default     = "instance"
}

variable "tg_protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID where the target group will be created"
  type        = string
}

variable "applicaton_health_check_target" {
  description = "Path for health check"
  type        = string
  default     = "/"
}

variable "instance_id" {
  description = "Instance ID to attach to the target group (leave empty for none)"
  type        = string
  default     = ""
}

variable "add_listener_rule" {
  description = "Boolean to decide whether to create listener rule"
  type        = bool
  default     = false
}

variable "listener_arn" {
  description = "ARN of the ALB listener"
  type        = string
  default     = ""
}

variable "listener_rule_priority" {
  description = "Priority of the listener rule"
  type        = number
  default     = 100
}
