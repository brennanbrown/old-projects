def capture_puts
  begin
    old_stdout = $stdout
    $stdout = StringIO.new('','w')
    yield
    $stdout.string
  ensure
    $stdout = old_stdout
  end
end

RSpec.configure do |config|
  config.order = :default
end