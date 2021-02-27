#!/bin/bash
set -ex
for i in $(seq 1 10);
    do make apply && break || echo zzz && sleep 30
done
exit $?
