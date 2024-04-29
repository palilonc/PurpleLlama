#!/usr/bin/env bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

set -e
read -p "https://download6.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoiaWxpZmVtMWllcXVqajk2dzM1cGJjbGppIiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQ2LmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3MTQ0NTA5OTF9fX1dfQ__&Signature=nddfVXofcdMPX2qTZPfZ--o%7Ed9NhBPOLlmc64ryYp68qpZ8DpdMlGLq1zTSRRTDDpKfvqgl2myPUAQxfOQRBKtpt6Z1G3E3eV2bT5V7cJASfWwaavZlWk9-i6qOSNhlIWVu0xq5Fm-xbhPUfAfFI6o9IvP5uuOe1WGTXGaNVL59AIiXdC-QWY%7EsNQPu8znBXffZUzUvm17exnpScHKOTeOHavBUjyn3Esl8wDw9L7CifQYMKM4tv1aoRK8uMDa0kgeQhjeqio8oGoJQidJTROP1k2DseI1Lm5CP%7EmLNGJcW3wEZNUWH0T0iAIfeY6D4dfimp-lwGtuvv4lPI6a87yA__&Key-Pair-Id=K15QRJLYKIFSLZ&Download-Request-ID=1105271777425960" PRESIGNED_URL
echo ""
TARGET_FOLDER="C:\Users\palil\Downloads."             # where all files should end up
mkdir -p ${TARGET_FOLDER}

echo "Downloading LICENSE and Acceptable Usage Policy"
wget --continue ${PRESIGNED_URL/'*'/"LICENSE"} -O ${TARGET_FOLDER}"/LICENSE"
wget --continue ${PRESIGNED_URL/'*'/"USE_POLICY.md"} -O ${TARGET_FOLDER}"/USE_POLICY.md"


echo "Downloading tokenizer"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/tokenizer.model"} -O ${TARGET_FOLDER}"/tokenizer.model"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/consolidated.00.pth"} -O ${TARGET_FOLDER}"/consolidated.00.pth"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/params.json"} -O ${TARGET_FOLDER}"/params.json"
