[![patreon](https://c5.patreon.com/external/logo/become_a_patron_button.png)](https://www.patreon.com/bePatron?u=12280211)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Configuration Server

Is a microservice that is a part of the Catalog and Sellout Management System.

The properties are loaded from a Git repository https://github.com/terawarehouse/terawarehouse-config-repo.

## Features

 - It provides the remote configuration use by the rest of the services.
 - It is powered by Spring Cloud.
 
## Dockerized

```
docker build -t czetsuya/terawarehouse-config-server .
docker run -d -p 8000:8000 czetsuya/terawarehouse-config-server
```

Configuration should be available at http://localhost:8000/<propertyFile>/default

For example: http://localhost:8000/catalog/default
 
## Repositories

 - https://github.com/terawarehouse
 
## Authors

 * **Edward P. Legaspi** - *Java Architect* - [czetsuya](https://github.com/czetsuya)
