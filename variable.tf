variable "application_name" {
  description = "Application name used in naming TG"
  type        = string
}

variable "application_port" {
  description = "Port on which your app runs"
  type        = number
}

variable "tg_protocol" {
  description = "Protocol for target group (e.g. HTTP)"
  type        = string
  default     = "HTTP"
}

variable "tg_target_type" {
  description = "Target type: instance, ip, lambda"
  type        = string
  default     = "instance"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "health_check_path" {
  description = "Health check path for the TG"
  type        = string
  default     = "/"
}

variable "instance_ids" {
  description = "List of EC2 instance IDs to attach"
  type        = list(string)
  default     = []
}

variable "add_listener_rule" {
  description = "Whether to add a listener rule"
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

variable "listener_rule_host_headers" {
  description = "List of host headers for routing"
  type        = list(string)
  default     = []
}

variable "load_balancer_arn" {
  description = "Optional: Load Balancer ARN for tagging or validation"
  type        = string
  default     = ""
}

variable "enable_attachment" {
  type    = bool
  default = false
}

