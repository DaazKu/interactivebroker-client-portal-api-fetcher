# Description

Fetch current version of InteractiveBrokers Client Portal REST API.

Since there's no "version" yet, the downloaded file be prefixed with the Last-Modified date as Y-m-d. 
Keeps the latest 3 versions only.

# Usage

Create a directory that can be read/written/executed by others
```
mkdir /tmp/ibcpaf_download_dir
chmod 0777 /tmp/ibcpaf_download_dir
```
and mount it in the container as `/ibcpaf_download_dir`

```
docker run -it -v /tmp/ibcpaf_download_dir:/ibcpaf_download_dir daazku/interactivebroker-client-portal-api-fetcher:latest
```
