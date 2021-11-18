#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp login.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/application/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/application/templates/" >> tempdir/Dockerfile
echo "COPY  login.py /home/application/" >> tempdir/Dockerfile
echo "EXPOSE 4040" >> tempdir/Dockerfile
echo "CMD python /home/application/login.py" >> tempdir/Dockerfile

cd tempdir
docker build -t testapp .
docker run -t -d -p 4040:4040 --name designrun testapp
docker ps -a
