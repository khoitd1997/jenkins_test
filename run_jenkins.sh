#!/bin/bash

curr_script_dir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
jenkins_home="${curr_script_dir}/jenkins_home"

set -e

mkdir -p "${jenkins_home}"
export JENKINS_HOME="${jenkins_home}"

cd "${curr_script_dir}"

java -jar "${curr_script_dir}/jenkins.war" --httpPort=8000 --httpListenAddress=127.0.0.1