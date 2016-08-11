cp /usr/local/bin/jfrog .
cd bintrayrocks
tar -cvf bintrayrocks-1.0.tgz exec
cd ..
cp bintrayrocks/bintrayrocks.tgz .
jfrog rt u bintrayrocks-1.0.tgz generic-local/jfrog/bintray/bintray-webinar/bintrayrocks/
