variable "sample" {
  default = "hellow world" //declairing variables
}

output "sample" {
  
  value = var.sample      // printing variables
}