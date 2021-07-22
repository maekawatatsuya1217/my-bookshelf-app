class Memo < ApplicationRecord

    with_options presence: true do
      validates :name
      validates :point
      validates :text
    end

    belongs_to :user
end
