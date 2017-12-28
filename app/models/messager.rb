class Messager < ApplicationRecord
  belongs_to :user

def datatime
  created_at.strftime('%d/%M/%Y às %H:%M:%S %P')
end




end
