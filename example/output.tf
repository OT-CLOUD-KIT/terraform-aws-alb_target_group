output "target_group_arn" {
  description = "The ARN of the created target group"
  value       = module.alb_target_group.target_group_arn
}

output "target_group_name" {
  description = "The name of the target group"
  value       = module.alb_target_group.target_group_name
}

output "target_group_attachment_status" {
  description = "Attachment status of the target group"
  value       = module.alb_target_group.target_group_attachment_status
}

output "listener_rule_id" {
  description = "ID of the ALB listener rule (if created)"
  value       = module.alb_target_group.listener_rule_id
}
