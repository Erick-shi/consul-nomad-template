consul {
  address = "localhost:8500"

  retry {
    enabled  = true
    attempts = 12
    backoff  = "250ms"
  }
}
template {
  source      = "/tmp/nginx.conf-2.ctmpl"
  destination = "/etc/nginx/conf.d/default.conf"
  perms       = 0600
  command     = "service nginx reload"
}

