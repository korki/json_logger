# JSON Logger

Simple decorator for standard logger to log in Logstash JSON format.

## Usage

In Gemfile add:

```
gem 'json_logger', github: 'korki/json_logger'
```

Log:

```
json_logger = JsonLogger.new('log_path.log')
json_logger.info(
  status: 'DONE',
  log_type: 'test'
)

json_logger.error(
  message: 'NOT GOOD'
)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
