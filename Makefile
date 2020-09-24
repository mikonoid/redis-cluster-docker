start-cluster:
	docker-compose -f cluster/docker-compose.yaml up --build -d
	echo -e "For connection to redis use the command 'docker exec -it redis-1 redis-cli -c -p 7000'"

stop-cluster:
	docker-compose -f cluster/docker-compose.yaml stop

start-redisnode:
	docker run --name one-node-redis -d redis
	echo "For connection to redis-node 'docker run --link one-node-redis:redis redis redis-cli -h redis -p 6379'"

stop-redisnode:
	docker stop one-node-redis
