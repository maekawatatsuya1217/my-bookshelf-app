class Blog < ApplicationRecord

    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category

    with_options presence: true do
        validates :title
        validates :catch_copy
        validates :article
        validates :category_id
        validates :image
    end

    validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 

    belongs_to :user
    has_many :comments, dependent: :destroy

end