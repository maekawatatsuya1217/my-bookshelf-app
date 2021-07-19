class Category < ActiveHash::Base
    self.data = [
        { id: 1, name: '--' },
        { id: 2, name: '小説' },
        { id: 3, name: '児童書' },
        { id: 4, name: '女性雑誌' },
        { id: 5, name: '男性雑誌' },
        { id: 6, name: '学習参考書' },
        { id: 7, name: '専門書' },
        { id: 8, name: 'ビジネス書' },
        { id: 9, name: '経済・経営' },
        { id: 10, name: 'その他' }
    ]

    include ActiveHash::Associations
    has_many :blogs
end