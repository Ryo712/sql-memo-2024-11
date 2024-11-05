SELECT countries.name, SUM(goals)
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;

/*SELECT句s：countries.name: countriesテーブルのname列から国名を取得します。
SUM(goals): playersテーブルのgoals列の値を合計します。これにより、各国に所属するすべての選手の得点が集計されます。
GROUP BY句：GROUP BYを使って、国名（countries.name）でグループ化しています。
これにより、各国ごとに選手データがまとめられ、国ごとの得点の合計が計算されます。
*/