# Basic example but not great
# begin
#     Authentication
# rescue NameError => e
#    require "./concerns/#{e.message.split.last.downcase}"
# end

# Rudimentary
class Object
  def self.const_missing(name)
    @looked_for ||= {}
    str_name = name.to_s
    file = "./concerns/#{str_name.to_s.downcase}"

    raise "Class not found: #{name} in #{file}.rb" if @looked_for[str_name]

    @looked_for[str_name] = 1
    require file
    klass = const_get(name)

    return klass if klass

    raise "Class not found: #{name} in #{file}.rb"
  end
end

class Module
  def self.const_missing(name)
    @looked_for ||= {}
    str_name = name.to_s
    file = "./concerns/#{str_name.to_s.downcase}"

    raise "Class not found: #{name} in #{file}.rb" if @looked_for[str_name]

    @looked_for[str_name] = 1
    require file
    klass = const_get(name)

    return klass if klass

    raise "Class not found: #{name} in #{file}.rb"
  end
end

Authentication

module User
  p Module.nesting
  Login
end