ui = true
disable_mlock = true

storage "raft" {
 path    = "/srv/workspace/vault"
 node_id = "node2"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable = "true"
}

telemetry {
prometheus_retention_time = "5m"
disable_hostname = true
}

api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"

