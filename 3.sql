SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id;

/*LEFT JOIN句：結合条件は、playersテーブルのprevious_team_id列とteamsテーブルのid列が一致することです。
LEFT JOINなので、選手が前年に所属していたチームがない場合（previous_team_idがNULLの場合）でも、
playersテーブルの行は結果に含まれます。この場合、teamsテーブルのカラムにはNULLが表示されます。

結果：このクエリは、選手の基本情報（playersテーブル）、国籍情報（countriesテーブル）、
および前年に所属していたチーム情報（teamsテーブル）を含むデータを取得します。
選手が前年に所属していたチームが存在しない場合、そのチーム情報はNULLになります。
*/