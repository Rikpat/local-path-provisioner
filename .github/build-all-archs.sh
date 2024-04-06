#!/usr/bin/env bash
for platform in $BUILD_ARCHS; do
    platform_split=(${platform//\// })
    GOOS=${platform_split[0]}
    GOARCH=${platform_split[1]}
    output_name=$DIST_PREFIX'-'$GOOS'-'$GOARCH
    if [ $GOOS = "windows" ]; then
        output_name+='.exe'
    fi
    echo "Building for $GOOS-$GOARCH..."
    env GOOS=$GOOS GOARCH=$GOARCH CGO_ENABLED=0 go build -o $output_name $MODULE_NAME
    if [ $? -ne 0 ]; then
        echo 'An error has occurred! Aborting the script execution...'
        exit 1
    fi
done