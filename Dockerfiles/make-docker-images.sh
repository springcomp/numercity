#!/bin/bash

cd referential && docker build -t numercity-referential --file Dockerfile context/ && cd ..
cd request && docker build -t numercity-request --file Dockerfile context/ && cd ..
cd user && docker build -t numercity-user --file Dockerfile context/ && cd ..
cd auth && docker build -t numercity-auth --file Dockerfile context/ && cd ..
cd view && docker build -t numercity-view --file Dockerfile context/ && cd ..
cd vote && docker build -t numercity-vote --file Dockerfile context/ && cd ..
cd admin && docker build -t numercity-admin --file Dockerfile context/ && cd ..
