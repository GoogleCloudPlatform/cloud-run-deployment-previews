# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM gcr.io/google.com/cloudsdktool/cloud-sdk:slim

#  FIX(b/171669848) 
# FROM python:3.8-slim

ENV APP_HOME /app
WORKDIR $APP_HOME
ENV CLOUD_SDK_REPO 315.0.0
COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "/app/check-status.py"]