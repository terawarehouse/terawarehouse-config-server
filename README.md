[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S0YXPX)

# Configuration Server

Is a microservice that is a part of the Catalog and Sellout Management System.

The properties are loaded from a Git repository https://github.com/terawarehouse/terawarehouse-config-repo.

## Features

 - It provides the remote configuration use by the rest of the services.
 - It is powered by Spring Cloud.
 
## Dockerized

```
docker build -t com.terawarehouse/config-server .
docker run -d -p 8000:8000 com.terawarehouse/config-server
```

Configuration should be available at http://192.168.1.101:8000/<propertyFile>/default

For example: http://192.168.1.101:8000/catalog/default
 
## Repositories

 - https://github.com/terawarehouse
 
## Authors

 * **Edward P. Legaspi** - *Java Architect* - [czetsuya](https://github.com/czetsuya)