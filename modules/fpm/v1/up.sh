name='test_fpm.v1'

docker build -t $name .
docker run -ti --name $name $name bash
