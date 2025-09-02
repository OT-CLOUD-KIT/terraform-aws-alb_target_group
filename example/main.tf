module "alb_target_group" {
  source = "../"

  applicaton_name                 = var.applicaton_name
  applicaton_port                 = var.applicaton_port
  tg_target_type                  = var.tg_target_type
  tg_protocol                      = var.tg_protocol
  vpc_id                           = var.vpc_id
  applicaton_health_check_target  = var.applicaton_health_check_target
  instance_id                      = var.instance_id
  add_listener_rule                = var.add_listener_rule
  listener_arn                     = var.listener_arn
  listener_rule_priority           = var.listener_rule_priority
}
