#!/bin/bash
CACTUS_LIB=/opt/cactus/lib
SWATCH_CORE_LIB=/opt/swatch/core/lib
SWATCH_SYSTEM_LIB=/opt/swatch/system/lib
PYSWATCH_LIB=/opt/swatch/pyswatch/lib
SWATCH_PROCESSOR_LIB=/opt/swatch/processor/lib
SWATCH_LOG_LIB=/opt/swatch/logger/lib
SWATCH_XML_LIB=/opt/swatch/xml/lib
SWATCH_TEST_LIB=/opt/swatch/test/lib:/opt/swatch/core/test/lib:/opt/swatch/system/test/lib
SWATCH_TEST_LIB=$SWATCH_TEST_LIB:/opt/swatch/processor/test/lib:/opt/swatch/logger/test/lib:/opt/swatch/logger/lib
SWATCH_TEST_LIB=$SWATCH_TEST_LIB:/opt/swatch/xml/test/lib
XDAQ_LIB=/opt/xdaq/lib
export LD_LIBRARY_PATH=$CACTUS_LIB:/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$SWATCH_CORE_LIB:$SWATCH_SYSTEM_LIB:$PYSWATCH_LIB:$SWATCH_PROCESSOR_LIB:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$SWATCH_TEST_LIB:$SWATCH_LOG_LIB:$SWATCH_XML_LIB:$XDAQ_LIB:$LD_LIBRARY_PATH
