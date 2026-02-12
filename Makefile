build:
	mvnw  clean package -DskipTests

build-container:
	docker build -t app-k8s-local:1.0 .

run-container:
	docker run -p 8080:8080 app-k8s-local:1.0

kub1:
	kubectl apply -f k8s/deployment.yaml

kub2:
	kubectl apply -f k8s/service.yaml