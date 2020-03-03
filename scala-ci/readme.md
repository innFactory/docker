# build 
cd aws
docker build -t innfactory/aws-scala-ci:11.0.6
cd ..
cd gcloud
docker build -t innfactory/gcloud-scala-ci:11.0.6
cd ..
cd cloud
docker build -t innfactory/cloud-scala-ci:11.0.6

