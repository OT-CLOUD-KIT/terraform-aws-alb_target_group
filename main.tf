resource "aws_lb_target_group" "target_group" {
  name        = "${var.applicaton_name}-alb-tg"
  port        = var.applicaton_port
  target_type = var.tg_target_type
  protocol    = var.tg_protocol
  vpc_id      = var.vpc_id
  health_check {
    path = var.applicaton_health_check_target
  }
}
resource "aws_lb_target_group_attachment" "target_group_inctance" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = var.instance_id
  port             = var.applicaton_port
}
