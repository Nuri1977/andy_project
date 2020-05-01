class Project < ApplicationRecord

  belongs_to :team
  belongs_to :user

  accept_nested_attributes_for :team

end
