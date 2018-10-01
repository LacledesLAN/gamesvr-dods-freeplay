# LL Day of Defeat Dedicated Freeplay Server in Docker

## Linux Container

[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-dods-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-dods-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-dods-freeplay "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-dods-freeplay;
```

### Run Self Tests
The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-dods-freeplay ./ll-tests/gamesvr-dods-freeplay.sh;
```

### Run Interactive Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-dods-freeplay ./srcds_run -game dod +map dod_avalanche +sv_lan 1
```
