# frozen_string_literal: true

class User
  @@attributes = [:id, :email, :name]

  @@attributes.each do |name|
    define_method(name) do
      @attributes[name]
    end
  end

  define_method(:"#{name}=") do |value|
    @attributes[name] = value
  end

  def initialize
    @attributes = {}
  end
end
