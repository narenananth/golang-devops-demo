# golang-devops-demo

Very simple DevOps demo project.

It shows:
- A tiny Golang web API
- Docker container for the API
- A GitHub Actions workflow that builds the Go code on every push
- A small Terraform example for an AWS EC2 instance

## 1. Run the app with Docker

```bash
docker build -t golang-devops-demo .
docker run -p 8080:8080 golang-devops-demo

curl http://localhost:8080/
curl http://localhost:8080/health
