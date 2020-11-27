class Region < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '千代田区' },
    { id: 3, name: '新宿区' },
    { id: 4, name: '中央区' },
    { id: 5, name: '文京区' },
    { id: 6, name: '港区' },
    { id: 7, name: '渋谷区' },
    { id: 8, name: '台東区' },
    { id: 9, name: '荒川区' },
    { id: 10, name: '江戸川区' },
    { id: 11, name: '墨田区' },
    { id: 12, name: '足立区' },
    { id: 13, name: '江東区' },
    { id: 14, name: '葛飾区' },
    { id: 15, name: '品川区' },
    { id: 16, name: '世田谷区' },
    { id: 17, name: '目黒区' },
    { id: 18, name: '大田区' },
    { id: 19, name: '中野区' },
    { id: 20, name: '杉並区' },
    { id: 21, name: '練馬区' },
    { id: 22, name: '豊島区' },
    { id: 23, name: '北区' },
    { id: 24, name: '板橋区' },
    { id: 25, name: '三鷹市' },
    { id: 26, name: '調布市' },
    { id: 27, name: '小金井市' },
    { id: 28, name: '府中市' },
    { id: 29, name: '武蔵野市' },
    { id: 30, name: '狛江市' },
    { id: 31, name: '東村山市' },
    { id: 32, name: '小平市' },
    { id: 33, name: '国分寺市' },
    { id: 34, name: '国立市' },
    { id: 35, name: '大東和市' },
    { id: 36, name: '清瀬市' },
    { id: 37, name: '東久留米市' },
    { id: 38, name: '武蔵村山市' },
    { id: 39, name: '西東京市' },
    { id: 40, name: '立川市' },
    { id: 41, name: '昭島市' },
    { id: 42, name: '八王子市' },
    { id: 43, name: '日野市' },
    { id: 44, name: '町田市' },
    { id: 45, name: '多摩市' },
    { id: 46, name: '稲城市' },
    { id: 47, name: '青梅市' },
    { id: 48, name: '日の出町' },
    { id: 49, name: '羽村市' },
    { id: 50, name: 'あきる野市' },
    { id: 51, name: '瑞穂市' },
    { id: 52, name: '福生市' },
    { id: 53, name: '檜原村' },
    { id: 54, name: '奥多摩町' },
    { id: 55, name: 'その他' }

  ]
  include ActiveHash::Associations
  has_many :store
  end