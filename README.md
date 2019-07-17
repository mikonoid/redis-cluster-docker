### Build and start

```
docker-compose up --build -d

```

### View containers

```
docker ps

```

### Debug and logs

```
docker-compose logs redis-1

```

```
docker-compose logs redis-cli

```

### Connect to master Redis

```
docker exec -it redis-1 redis-cli -c -p 7000

```
