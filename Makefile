build:
	mvnw  clean package -DskipTests

build-container:
	docker build -t app-k8s-local:1.0 .

run-container:
	docker run -p 8080:8080 app-k8s-local:1.0