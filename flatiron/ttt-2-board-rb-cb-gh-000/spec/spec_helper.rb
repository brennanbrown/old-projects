RSpec.configure do |config|
  config.order = :default
end

# Ignore this.
def get_variable_from_file(file, variable)
  file_scope = binding
  file_scope.eval(File.read(file))
  
  begin
    return file_scope.local_variable_get(variable)
  rescue NameError
    raise NameError, "local variable `#{variable}' not defined in #{file}."
  end    
end
