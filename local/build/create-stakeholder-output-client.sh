#!/bin/bash

# This is a demo script for the DSR-Pipeline-Server
# This script creates PDF output from markdown input


############################################
#Edit this file to reflect your information
############################################

source "./StakeholderProductVariables.env"

####################################################
####################################################
####################################################
#DO NOT CHANGE ANYTHING BELOW THIS LINE
####################################################
####################################################
####################################################

######################################################################################
# Setup key variables that will be used by the build-pipeline-server-markdown.sh script
######################################################################################

export MO_PATH="bash ../../vendor/git.knownelement.com/ExternalVendorCode/mo/mo"

export BUILD_TEMP_DIR="$PipelineClientWorkingDir/build-temp"
export BUILD_OUTPUT_DIR="$PipelineClientWorkingDir/build-output"

export BUILDYAML_STAKEHOLDER_OUTPUT="$BUILD_TEMP_DIR/StakeholderOutput.yml"
export StakeholderOutputMarkdownOutputFile="$BUILD_OUTPUT_DIR/StakeholderOutput.md"
export StakeholderOutputPDFOutputFile="$BUILD_OUTPUT_DIR/StakeholderOutput.pdf"


echo "Cleaning up from previous runs..."

rm $BUILDYAML_STAKEHOLDER_OUTPUT
rm $StakeholderOutputMarkdownOutputFile
rm $StakeholderOutputPDFOutputFile

bash ../../vendor/git.knownelement.com/reachableceo/DSR-Pipeline-Server/build/build-stakeholder-output-server.sh
