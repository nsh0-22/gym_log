categories = [
    "胸",
    "肩",
    "背中",
    "脚",
    "腕"
]

categories.each do |name|
    Category.find_or_create_by!(name: name)
end

exercises = [
  { name: "ベンチプレス", category: "胸" },
  { name: "チェストプレス", category: "胸" },
  { name: "ダンベルベンチプレス", category: "胸" },
  { name: "ダンベルフライ", category: "胸" },
  { name: "ペックフライ", category: "胸" },
  { name: "マシンショルダープレス", category: "肩" },
  { name: "ダンベルショルダープレス", category: "肩" },
  { name: "フェイスプル", category: "肩" },
  { name: "サイドレイズ", category: "肩" },
  { name: "ミリタリープレス", category: "肩" },
  { name: "ラットプルダウン", category: "背中" },
  { name: "ケーブルプルオーバー", category: "背中" },
  { name: "DYロウ",  category: "背中" },
  { name: "Tバーロウ", category: "背中" },
  { name: "ダンベルローイング", category: "背中" },
  { name: "スクワット", category: "脚" },
  { name: "シーテッドレッグプレス", category: "脚" },
  { name: "デッドリフト", category: "脚" },
  { name: "レッグエクステンション", category: "脚" },
  { name: "レッグカール", category: "脚" },
  { name: "ケーブルカール", category: "腕" },
  { name: "オーバーヘッドエクステンション", category: "腕" },
  { name: "インクラインアームカール", category: "腕" },
  { name: "インクラインハンマーカール", category: "腕" },
  { name: "プリチャーカール", category: "腕" }
]

exercises.each do |exercise|
  category = Category.find_by!(name: exercise[:category])

  Exercise.find_or_create_by!(name: exercise[:name]) do |record|
    record.category = category
  end
end