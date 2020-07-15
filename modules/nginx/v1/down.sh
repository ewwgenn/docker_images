name='test_nginx.v1'

docker stop $name
docker rm $name
docker image rm $name