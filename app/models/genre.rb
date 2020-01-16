class Genre < ActiveHash::Base

  self.data = [
    {id: 1, name: '外国映画'},
    {id: 2, name: '日本映画'},
    {id: 3, name: 'アニメ'},
    {id: 4, name: 'キッズ・ファミリー'},
    {id: 5, name: 'ミュージック'},
    {id: 6, name: 'お笑い・バラエティ'},
    {id: 7, name: 'スポーツ・フィットネス'},
    {id: 8, name: 'ホビー・実用'},
    {id: 9, name: 'ドキュメンタリー'},
    {id: 10, name: 'ステージ'},
    {id: 11, name: 'アイドル'},
    {id: 12, name: 'エロス'}
  ]
  
end