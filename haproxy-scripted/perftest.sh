#!/bin/sh

set -e



JMETER_BIN=jmeter-cli
REPORT_DIR=perfReport_$( date +%s )

mkdir ${REPORT_DIR}
cp perftest.jmx ${REPORT_DIR}

${JMETER_BIN} -n -t ${REPORT_DIR}/perftest.jmx -l ${REPORT_DIR}/perftest.log -e  -o ${REPORT_DIR}/dashboard
