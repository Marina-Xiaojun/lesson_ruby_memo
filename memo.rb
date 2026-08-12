require "csv"   # CSVライブラリを読み込み

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i   # ユーザーの入力値を整数に変換

# ここから先を実装していきましょう
# memo_type が 1 のときは新規作成、2 のときは既存編集、それ以外は再入力
# それぞれの分岐の中で、入力された文字列を CSV ファイルに書き出します

loop do
  
if memo_type == 1
  #新規作成
puts "拡張子を除いたファイルを入力してください"
file_name = gets.chomp

puts "メモしたい内容を記入してください"
puts "完了したらCtrl+Dを押します"
memo=gets.chomp

CSV.open("#{file_name}.csv", "w")  { |csv| csv << [memo] }
break

elsif memo_type ==2
  #既存のメモ編集
puts "拡張子を除いたファイルを入力してください"
file_name = gets.chomp

puts "メモ入力してください"
memo=gets.chomp

CSV.open("#{file_name}.csv", "a")  { |csv| csv << [memo] }
break

else 
  # 1でも2でもない
puts "1か2を入力してください"
memo_type = gets.to_i
end

end