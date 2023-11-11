import json

music_list = []  # JSONデータを格納するリスト

while True:
    try:
        # 曲名を入力
        song_name = input("曲名を入力してください: ")

        # 音階をキー入力で受け取り、intの配列を作成
        melody = input("音階を入力してください (スペースで区切って): ")
        melody = [int(x) for x in me