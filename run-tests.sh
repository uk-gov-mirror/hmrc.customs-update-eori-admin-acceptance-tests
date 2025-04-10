#!/bin/bash -e

BROWSER=${1:-chrome}
ENVIRONMENT=${2:-local}
HEADLESS=$3

sbt clean -Dbrowser="${BROWSER}" -Denvironment="${ENVIRONMENT}" -Dbrowser.option.headless="${HEADLESS:=true}" "testOnly uk.gov.hmrc.test.ui.specs.*" testReport
