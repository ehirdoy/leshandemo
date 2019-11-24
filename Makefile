# https://github.com/eclipse/leshan
all: up

up: get
	docker-compose up

down:
	docker-compose down

get:
	wget https://hudson.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/leshan-server-demo.jar
	wget https://hudson.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/leshan-client-demo.jar

clean:
	rm -f *.jar
