module "iam" {
  source    = "./modules/iam"
  role_name = "lambda_exec_role"
}

module "lambda" {
  source        = "./modules/lambda"
  function_name = "Hello_World"
  image_uri     = "${var.account_id}.dkr.ecr.${var.region}.amazonaws.com/first:latest"
  role_arn      = module.iam.role_arn
}

module "apigateway" {
  source            = "./modules/api_gateway"
  api_name          = "Hello_World_test"
  route_key         = "GET /hello"
  lambda_invoke_arn = module.lambda.invoke_arn
  lambda_arn        = module.lambda.arn
}