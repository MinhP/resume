#!/bin/bash

sudo docker run -v ./artifacts:/app/artifacts --mount type=bind,source=$(pwd)/resume.md,target=/app/resume.md resume ./build.sh

