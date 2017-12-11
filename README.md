Docker image which provides an Nginx server based on OpenResty (alpine) with vts, sts, sts-stream and Prometheus lua metrics included.

- https://nginx.org
- https://openresty.org
- https://github.com/knyar/nginx-lua-prometheus
- https://github.com/vozlt/nginx-module-stream-sts
- https://github.com/vozlt/nginx-module-sts
- https://github.com/vozlt/nginx-module-vts

Adds a server instance listening on port 9527 with the following endpoints.

- http://localhost:9527/metrics
- http://localhost:9527/status/format/json
- http://localhost:9527/status/format/html
- http://localhost:9527/status/format/jsonp

The /metrics can be scraped directly with Prometheus. The /status requires an extra feature provided by https://github.com/hnlq715/nginx-vts-exporter.