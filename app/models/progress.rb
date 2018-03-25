class Progress < ApplicationRecord

  belongs_to :user
  belongs_to :content

  enum status: {active: 0, archived: 1}

end
