name='test_nginx.v1'

docker build -t $name .
docker run  -d -ti --name $name $name
