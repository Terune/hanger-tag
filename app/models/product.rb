class Product < ActiveRecord::Base
  # http://stackoverflow.com/questions/11676288/prevent-sti-when-inheriting-from-an-activerecord-model
  self.inheritance_column = :_type_disabled
end
