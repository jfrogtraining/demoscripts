jfrog rt dl gradle-dev-local/org/jfrog/example/gradle/api/1.1/ --build-name=gradle-example-ci-server --build-number=12

jfrog rt bce gradle-example-ci-server 12

MYPATH="$(pwd)"

tar -czvf sampleCli.tar.gz $MYPATH/org

jfrog rt u sampleCli.tar.gz gradle-dev-local/org/jfrog/example/gradle/api/1.1/ --build-name=gradle-example-ci-server --build-number=12

jfrog rt bp gradle-example-ci-server 12
