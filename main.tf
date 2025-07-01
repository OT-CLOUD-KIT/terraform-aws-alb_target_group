resource "aws_lb_target_group" "this" {
  name        = "${var.application_name}-tg"
  port        = var.application_port
  protocol    = var.tg_protocol
  target_type = var.tg_target_type
  vpc_id      = var.vpc_id

  health_check {
    path = var.health_check_path
  }

  tags = {
    Name             = "${var.application_name}-tg"
    LoadBalancerARN  = var.load_balancer_arn != "" ? var.load_balancer_arn : "null"
  }
}

resource "aws_lb_target_group_attachment" "attachment" {
  count            = var.enable_attachment ? length(var.instance_ids) : 0
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.instance_ids[count.index]
  port             = var.application_port
}

resource "aws_lb_listener_rule" "this" {
  count        = var.add_listener_rule ? 1 : 0
  listener_arn = var.listener_arn
  priority     = var.listener_rule_priority

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }

  condition {
    host_header {
      values = var.listener_rule_host_headers
    }
  }
}
