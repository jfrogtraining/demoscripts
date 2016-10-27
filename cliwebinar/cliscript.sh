export BUILD_NUM=1

jfrog rt dl gradle-dev-local/org/jfrog/example/gradle/api/1.1/ --build-name=cli-example --build-number=$BUILD_NUM
jfrog rt dl --spec=spec.json --build-name=cli-example --build-number=$BUILD_NUM

jfrog rt bce gradle-example-ci-server 12

MYPATH="$(pwd)"

tar -czvf sampleCli.tar.gz $MYPATH/org

jfrog rt u sampleCli.tar.gz gradle-dev-local/org/jfrog/example/gradle/api/1.1/ --build-name=gradle-example-ci-server --build-number=12

jfrog rt bp gradle-example-ci-server 12
