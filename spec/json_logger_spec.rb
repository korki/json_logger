require 'spec_helper'

describe JsonLogger do

  it 'Creates and logs into a file with logstash json format' do
    filename = './spec/tmp/log.json'
    log = JsonLogger.new(filename)
    log.debug 'This is a test debug'
    log.info 'This is a test info'

    file = File.open(filename, "r")
    file.readline
    debug_line = JSON.parse(file.readline, symbolize_names: true)
    expect(debug_line[:@fields][:message]).to match 'debug'
    expect(debug_line[:@fields][:level]).to eq 'DEBUG'

    info_line = JSON.parse(file.readline, symbolize_names: true)
    expect(info_line[:@fields][:message]).to match 'info'
    expect(info_line[:@fields][:level]).to eq 'INFO'
    File.delete(filename)
  end
end
