swaggerDirName="swagger-service"
# baseUrl="./scripts/api.json"
# swagger地址
baseUrl=""


rm -rf $swaggerDirName
mkdir  $swaggerDirName

java -jar ./scripts/openapi-generator-cli.jar generate \
    --additional-properties=enumPropertyNaming=original \
    -i $baseUrl \
    -g typescript-rxjs -o $swaggerDirName --skip-validate-spec


java -jar ./scripts/openapi-generator-cli.jar generate \
    --additional-properties=enumPropertyNaming=original \
    -i $baseUrl2 \
    -g typescript-rxjs -o $swaggerDirName2 --skip-validate-spec
