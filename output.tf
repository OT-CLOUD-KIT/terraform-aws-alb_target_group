output "target_group_arn" {
  description = "The ARN of the created target group"
  value       = aws_lb_target_group.target_group.arn
}

output "target_group_name" {
  description = "The name of the target group"
  value       = aws_lb_target_group.target_group.name
}

output "target_group_attachment_status" {
  description = "Whether target group attachment is created"
  value       = var.instance_id != "" ? "Attached" : "Not Attached"
}

output "listener_rule_id" {
  description = "ID of the ALB listener rule (if created)"
  value       = var.add_listener_rule ? aws_lb_listener_rule.alb_listener_rule[0].id : "No listener rule created"
}
