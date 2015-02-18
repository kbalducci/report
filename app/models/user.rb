require 'csv'
class User < ActiveRecord::Base
  has_many :meals
  has_many :pets

  def full_name
    "#{first_name} #{last_name}"
  end

  def last_first
    "#{last_name}, #{first_name}"
  end

#use self b/c calling the whole user class not an instance of the class
  def self.to_csv
    CSV.generate do |csv|
      csv << User.new.attributes.keys
      User.all.each do |user|
        csv << user.attributes.values
      end
    end
  end
end
