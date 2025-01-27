# Define a provider to use local resources
provider "local" {}

# Example of creating a local file
resource "local_file" "example" {
  content  = "Hello from Spacelift!"
  filename = "${path.module}/example.txt"
}

# Output the file path
output "file_path" {
  value = local_file.example.filename
}
