cp /usr/local/bin/jfrog .
cd bintrayrocks
tar -cvf amaze-1.0.tgz exec
cd ..
cp bintrayrocks/amaze-1.0.tgz .
jfrog rt u amaze-1.0.tgz generic-local/jfrog/bintray/bintray-webinar/amaze/
docker build -t gcartifactory-us.jfrog.info:5002/amaze:1.0 .
docker push gcartifactory-us.jfrog.info:5002/amaze:1.0
