class Blog < ApplicationRecord

    has_one_attached :image

    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
        validates :image
    end

    belongs_to :user
    has_many :comments, dependent: :destroy

    def self.search(search)
        if search != ""
          Blog.where('title LIKE(?)', "%#{search}%")
        else
          Blog.all
        end
    end

end