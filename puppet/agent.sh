#!/bin/bash

docker run \
--name agent \
--privileged \
-v /bin:/bin \
-v /home:/home \
-v /tmp:/tmp \
-v /etc:/etc \
-v /var:/var \
-v /usr:/usr \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-v /lib64:/lib64 \
--hostname agent \
--net=puppet \
puppet/puppet-agent-ubuntu