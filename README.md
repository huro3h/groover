#### groover

##### rails new

```shell
bundle exec rails new groover -B -d mysql --skip-turbolinks --skip-test --skip-webpack-install --skip-action-cable --skip-sprockets --skip-spring -T
```

#### .bundle/config

```shell
$ cat .bundle/config
---
BUNDLE_PATH: "vendor/bundle"
BUNDLE_JOBS: "8"
BUNDLE_BUILD__MYSQL2: "--with-cppflags=-I/opt/homebrew/opt/openssl@3/include --with-ldflags=-L/opt/homebrew/opt/openssl@3/lib"
```

#### migration
```
bundle exec ridgepole -c config/database.yml -E development -f db/Schemafile --apply
```

#### DB  
Postgres by Fly.io  
see https://fly.io/blog/free-postgres/

##### Connecting to Postgres from outside Fly
https://fly.io/docs/reference/postgres/#connecting-to-postgres-from-outside-fly

##### via VPN with WireGuard
https://fly.io/docs/reference/private-networking/#private-network-vpn
