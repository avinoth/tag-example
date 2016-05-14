class Tag < ActiveRecord::Base

  def self.it content
    Tag.where(content).first_or_create! rescue nil
  end

end
