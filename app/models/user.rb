class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :gorups
    has_many :posts

    has_many :group_relationships
    has_many :patricipated_group, :through => :gtoup_relationships, :source => :group
    
end
