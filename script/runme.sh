#!/bin/bash
exit 0
# Working!!!! NOT YET

NIST_MIRROR_VERSION="1.1.0"
OWASP_DC_VERSION="3.0.1"
NIST_URL="https://github.com/stevespringett/nist-data-mirror/releases/download/${NIST_MIRROR_VERSION}/nist-data-mirror.jar"
DC_URL="http://dl.bintray.com/jeremy-long/owasp/dependency-check-${OWASP_DC_VERSION}-release.zip"

mkdir -p /opt/
wget -O /tmp/OWASP.zip "${DC_URL}"
wget -O /opt/nist-data-mirror.jar "${NIST_URL}"

cd /opt/
unzip /tmp/OWASP.zip
java -jar /opt/nist-data-mirror.jar .

    --updateonly \
    --cveUrl20Base $NVD/nvdcve-2.0-%d.xml.gz \
    --cveUrl12Base $NVD/nvdcve-%d.xml.gz \
    --cveUrl20Modified $NVD/nvdcve-2.0-Modified.xml.gz \
    --cveUrl12Modified $NVD/nvdcve-Modified.xml.gz \
