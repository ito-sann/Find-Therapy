class Animal < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ハリネズミ' },
    { id: 3, name: 'ふくろう' },
    { id: 4, name: 'インコ' },
    { id: 5, name: '亀' },
    { id: 6, name: 'トカゲ' },
    { id: 7, name: 'ヘビ' },
    { id: 8, name: 'ネコ' },
    { id: 9, name: 'イヌ' },
    { id: 10, name: 'ウサギ' },
    { id: 11, name: 'その他（齧歯類）' },
    { id: 12, name: 'その他（鳥類）' },
    { id: 13, name: 'その他（爬虫類）' },
    { id: 14, name: 'その他（哺乳類）' },
    { id: 15, name: 'その他(上記に該当しない)' }

  ]
  include ActiveHash::Associations
  has_many :store
  end