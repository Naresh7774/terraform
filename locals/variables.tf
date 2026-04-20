variable "project" {
    default = "roboshop"
}

variable "environment"{
    default = "dev"
}

# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# }

variable "ami_id" {
    type = string
    default     = "ami-09c813fb71547fc4f"
}
