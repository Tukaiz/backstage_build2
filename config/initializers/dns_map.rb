URLS = YAML.load_file( Rails.root.join('config/dns_map.yml') )[Rails.env]
