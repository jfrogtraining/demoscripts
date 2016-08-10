cp /usr/local/bin/jfrog .
cd bintrayrocks
tar -cvf bintrayrocks-1.0.tgz exec
cd ..
cp bintrayrocks/bintrayrocks.tgz .
jfrog rt u bintrayrocks-1.0.tgz generic-local/jfrog/bintray/bintray-webinar/bintrayrocks/
docker build -t gcartifactory-us.jfrog.info:5002/bintray-demo:1.0 .
docker push gcartifactory-us.jfrog.info:5002/bintray-demo:1.0
jfrog bt acc-keys --org=jfrog-int create webinar-test
