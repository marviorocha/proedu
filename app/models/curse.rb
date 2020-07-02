class Curse < ApplicationRecord

# Associetion for Curse

has_many :enrollments
has_many :users, through: :enrollments
has_many :contents

end
