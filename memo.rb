require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
loop do
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
     puts "拡張子を除いたファイルを入力してください"
     file = gets.chomp
     puts "メモしたい内容を入力してください"
     puts "完了したら Ctrl + D をおします"

     data = []
   while line = gets
    data << line.chomp.split(',')
   end

  CSV.open("#{file}.csv", "w") do |csv|
    data.each do |row|
      csv << row
    end
  end

  break

 elsif memo_type == 2
     puts "編集するファイルを入力してください"
     file = gets.chomp
 
     data = []
  while line = gets
    data << line.chomp.split(',')
  end

  CSV.open("#{file}.csv", "a") do |csv|
   data.each do |row|
    csv << row
   end
  end

 break

 else
    puts "1か2を入力してください"
 end
end


  
 
