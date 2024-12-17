resource "aws_db_instance" "rds_mysql" {
  depends_on                  = [aws_instance.this]
  allocated_storage           = 10
  db_name                     = var.database_name
  engine                      = "mysql"
  engine_version              = "8.0"
  instance_class              = "db.t3.micro"
  username                    = "admin"
  manage_master_user_password = true
  parameter_group_name        = "default.mysql8.0"
  skip_final_snapshot         = true

  tags = {
    Env = var.environment
  }
}