# Copyright 2025 IBM Corp. All Rights Reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy
# of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

FROM icr.io/appcafe/websphere-liberty:kernel-java17-openj9-ubi

ARG VERBOSE=true

COPY --chown=default:root target/liberty/wlp/usr/servers/helloworldjspServer/* /config/

RUN features.sh

COPY --chown=default:root target/helloworldjsp.war /config/apps

# This script will create an image that's fit-for-purpose and apply interim fixes (if any)
RUN configure.sh

RUN checkpoint.sh beforeAppStart
