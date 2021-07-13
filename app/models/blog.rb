class Blog < ApplicationRecord

    has_one_attached :image

    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
        validates :image
    end

    belongs_to :user

end