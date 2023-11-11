import json

music_list = []  # JSONデータを格納するリスト

while True:
    try:
        # 曲名を入力
        song_name = input("曲名を入力してください: ")

        # 音階をキー入力で受け取り、intの配列を作成
        melody = input("音階を入力してください (スペースで区切って): ")
        melody = [int(x) for x in melody.split()]
        
        # JSON形式のデータを作成
        music_data = {
            "song": song_name,
            "melody": melody
        }
        
        music_list.append(music_data)  # リストにデータを追加

        print("データを追加しました。")
        
    except ValueError:
        print("正しい音階を入力してください。")
    
    # 続けるかどうかの確認
    another = input("続けますか？ (y/n): ")
    if another.lower() != 'y':
        break

# リストに格納されたデータをJSONファイルに書き込む
with open('music_data.json', 'w', encoding='utf-8') as json_file:
    json.dump(music_list, json_file, ensure_ascii=False, indent=4)
