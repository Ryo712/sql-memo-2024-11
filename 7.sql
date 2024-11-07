SELECT name
FROM players
WHERE goals > (
  -- この下にウィルの得点数を取得するクエリを書いてください
  SELECT goals
  FROM players
  WHERE name = "ウィル"
)
;

/*外側クエリ：この部分は、players テーブルから goals カラムを取得しますが、
name が「ウィル」である行の得点数のみを選択します。
内側クエリ：内側のサブクエリは「ウィル」の得点数を取得するために使われ、外側のクエリの WHERE 条件でその値と比較されます。
*/