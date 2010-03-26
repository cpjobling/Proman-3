require 'yaml'
APP_CONFIG = YAML.load(File.read(RAILS_ROOT + "/config/app_config.yml"))