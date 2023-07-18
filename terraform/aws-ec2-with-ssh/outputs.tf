output "Webserver-Public" {
  value = aws_instance.webserver.public_ip
}

output "Server-Instance" {
    value = aws_instance.webserver.key_name
}

output "Server-Instance-Id" {
    value = aws_instance.webserver.id
}

output "Server-Instance-HostName" {
    value = aws_instance.webserver.public_dns
}


output "Server-Instance-Tags" {
    value = aws_instance.webserver.tags_all
}