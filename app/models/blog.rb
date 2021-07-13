class Blog < ApplicationRecord

    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
    end

    belongs_to :user

end