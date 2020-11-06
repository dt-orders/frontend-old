
# :rotating_light: This project is still here for reference, but the concept is being now maintained in [frontend](https://github.com/dt-orders/frontend) repo :rotating_light:

# Overview

This repo has code for a static HTML site.

This application will be packaged in a Docker image running Apache.  See ```Dockerfile``` in this repo

There is an apache confif file that will proxy the back end requests how they are expected to be setup in Kubernetes.

Footnotes:
* Demo app credits go to: https://github.com/ewolff/microservice-kubernetes
* css from: https://www.w3schools.com/w3css/tryw3css_templates_clothing_store.htm
* image from: https://www.pexels.com/photo/five-people-standing-against-wall-1345082/

# Developer Notes

## Build and Run Locally

1. Use this utility to build docker image named: keptn-orders-front-end:tag and run docker 

    Just call:

    ```./buildrun.sh <registry> <tag>```

    For example:

    ```./buildrun.sh robjahn 1```

2. access application at ```http://localhost```

## Build and Publish

1. Use this utility to build docker image named: keptn-orders-front-end:tag and publish image 

    Just call:

    ```./buildpush.sh <registry> <tag>```

    For example:

    ```./buildpush.sh robjahn 1```





