export BUILD_NUM=1

jfrog rt dl gradle-dev-local/org/jfrog/example/gradle/api/1.1/ --build-name=cli-example --build-number=$BUILD_NUM
jfrog rt dl --spec=spec.json --build-name=cli-example --build-number=$BUILD_NUM

jfrog rt bce cli-example $BUILD_NUM

tar -czvf "sampleCli-$BUILD_NUM.tar.gz" ./org

jfrog rt u "sampleCli-$BUILD_NUM.tar.gz" generic-local/cli-example/sampleCli/ --build-name=cli-example --build-number=$BUILD_NUM

jfrog rt bp cli-example $BUILD_NUM

jfrog rt del --spec=specAQL.json
