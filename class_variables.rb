class ApplicationRecord
  @@validations = {}
  @validations = {}

  def self.validates(name, **options)
    # @@validations[name] = options
    # Instancer varianle
    @validations[name] = options

  end

  def self.validations
    @@validations
    @validations

  end
end

class User < ApplicationRecord
  validates :name, presence: true

end

class Project < ApplicationRecord

end

p ApplicationRecord.validations
p User.validations
p Project.validations

