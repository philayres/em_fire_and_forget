if ARGV[0]
  if ARGV[0].index('--port=')==0
    $force_port = ARGV[0].gsub('--port=','').to_i
  elsif ARGV[0]=='script'
    $configuration = true
  end
end

KB_BASE_DIR = File.expand_path('.')
BIND_IP = '127.0.0.1'

REQ = File.expand_path('./lib')
require "#{REQ}/environment"
