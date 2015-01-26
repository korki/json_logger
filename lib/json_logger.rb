require 'logger'

class JsonLogger < Logger

  def initialize(name, shift_age = 7, shift_size = 1_048_576)
    super(name, shift_age, shift_size)
    self.datetime_format = '%FT%T.%LZ'
    self.formatter = proc do |severity, datetime, progname, msg|
      msg = { message: msg } unless msg.is_a?(Hash)
      msg[:level] = severity
      message = {
        '@timestamp' => datetime.strftime(datetime_format),
        '@fields' => msg
      }
      "#{message.to_json}\n"
    end
  end
end
