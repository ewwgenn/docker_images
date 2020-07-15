name='test_composer.v1'

docker build -t $name .
docker run -ti --name $name $name bash
