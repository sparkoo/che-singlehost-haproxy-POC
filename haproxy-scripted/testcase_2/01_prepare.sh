#!/bin/sh

. "$( dirname "${0}" )/../env.sh"
prepareWorkdir
prepareInfra

prepareService "ws-plus" "${POC_NAMESPACE}"

for I in {001..100}; do
  WS="ws-${I}"
  prepareService "${WS}" "${POC_NAMESPACE}"
  writeServiceToTest "${WS}"
  writeServiceToConfig "${WS}"
done

createPreparedServices

fullReconfig
