#!/bin/bash
if [[ "$OSTYPE" == "darwin"* || "$OSTYPE" == "linux-gnu" ]]; then
    java -cp "server-standalone/wiremock-standalone-2.27.2.jar:server-standalone/wiremock-body-transformer-1.1.6.jar" com.github.tomakehurst.wiremock.standalone.WireMockServerRunner --verbose --local-response-templating --extensions com.opentable.extension.BodyTransformer
elif [[ "$OSTYPE" == "win32" || "$OSTYPE" == "msys" ]]; then
	java -cp "server-standalone/wiremock-standalone-2.11.0.jar;server-standalone/wiremock-body-transformer-1.1.6.jar" com.github.tomakehurst.wiremock.standalone.WireMockServerRunner --verbose --extensions com.opentable.extension.BodyTransformer
else
    echo "Yo no lo coñosco señor..."
fi
