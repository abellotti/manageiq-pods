#!/bin/bash

[[ -s /container.env.vars ]] && source /container.env.vars

appliance-initialize.sh

[[ -s /etc/default/evm ]] && source /etc/default/evm

ruby /var/www/miq/vmdb/lib/workers/bin/evm_server.rb
