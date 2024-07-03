VERSION_NUM=$1

BASE_URL="https://agora.dequecloud.com/artifactory/Attest-iOS/axeDevToolsXCUI"
FRAMEWORK_FILENAME="axeDevToolsXCUI.xcframework-${VERSION_NUM}"
DOCS_FILENAME="axeDevToolsXCUI.doccarchive-${VERSION_NUM}"

FRAMEWORK_URL="${BASE_URL}/frameworks/${FRAMEWORK_FILENAME}.zip"
DOCS_URL="${BASE_URL}/docs/${DOCS_FILENAME}.zip"

OUTPUT_DIR="/tmp/unzipped"
LOCAL_ZIPPED_FRAMEWORK_URL="${OUTPUT_DIR}/${FRAMEWORK_FILENAME}.zip"
LOCAL_ZIPPED_DOCS_URL="${OUTPUT_DIR}/${DOCS_FILENAME}.zip"

mkdir -p $OUTPUT_DIR

# Download framework & docs
curl -H "X-JFrog-Art-Api:${DQ_AGORA_KEY}" -o $LOCAL_ZIPPED_FRAMEWORK_URL $FRAMEWORK_URL
curl -H "X-JFrog-Art-Api:${DQ_AGORA_KEY}" -o $LOCAL_ZIPPED_DOCS_URL $DOCS_URL

# Unzip framework & docs
unzip -o $LOCAL_ZIPPED_FRAMEWORK_URL -d .
unzip -o $LOCAL_ZIPPED_DOCS_URL -d .

ls -al .