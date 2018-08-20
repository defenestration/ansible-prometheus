# Prometheus testing
## Useful when debugging:

Setup GO build environmental variables. Useful on machines where a build failed:

    export GOROOT=/opt/prometheus/go/$(ls /opt/prometheus/go) ; export GOPATH="/opt/prometheus/tmp/$(ls /opt/prometheus/tmp)"; export PATH="$PATH:/opt/prometheus/go/$(ls /opt/prometheus/go)/bin"

Rerun INSPEC tests against a single docker container:

    inspec exec tests/inspec/all -t docker://DOCKER_ID

Test yaml syntax:

    yamllint --config-file=tests/yamllint.yml .