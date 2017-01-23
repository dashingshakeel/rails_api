class User < ApplicationRecord
  require 'digest/sha1'
  before_save {self.password = Digest::SHA1.hexdigest(password)}
  
end
