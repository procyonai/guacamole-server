#!/bin/sh

/opt/guacamole/procyon-agent &

/opt/guacamole/sbin/guacd -b 0.0.0.0 -L ${GUACD_LOG_LEVEL} -f