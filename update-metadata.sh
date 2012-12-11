#!/bin/sh -e

# generate metadata.json for all upstream opscode cookbooks (metadata.json should not exist in development repositories)
knife cookbook metadata apache2 -o cookbooks/
knife cookbook metadata build-essential -o cookbooks/
knife cookbook metadata collectd -o cookbooks/			; rm ./cookbooks/collectd/.gitignore 
knife cookbook metadata collectd_plugins -o cookbooks/  ; rm ./cookbooks/collectd_plugins/.gitignore 
knife cookbook metadata cron -o cookbooks/
knife cookbook metadata mysql -o cookbooks/
knife cookbook metadata ntp -o cookbooks/
knife cookbook metadata openssl -o cookbooks/
knife cookbook metadata pecl -o cookbooks/
knife cookbook metadata php -o cookbooks/
knife cookbook metadata postfix -o cookbooks/
knife cookbook metadata resolver -o cookbooks/
knife cookbook metadata rightscale -o cookbooks/
knife cookbook metadata sudo -o cookbooks/
knife cookbook metadata system -o cookbooks/
knife cookbook metadata xml -o cookbooks/