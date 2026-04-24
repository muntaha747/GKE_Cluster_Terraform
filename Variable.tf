variable "project_id" {
  type        = string
  description = "Name given to the cluster project ID"
  default     = "project-bb0f4d04-c4ac-41d5-bcd"
}


variable "region" {
  type        = string
  description = "enter your region of google cloud"
  default     = "us-central1"
}

variable "cluster_name" {
  type        = string
  description = "enter your cluster name"
  default     = "pragra"
}

