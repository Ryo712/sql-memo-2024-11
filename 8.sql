SELECT name,goals
FROM players
WHERE goals > (
  SELECT AVG(goals)
  FROM players
  );

  /*内側クエリ：players テーブル内の goals カラムの平均値を計算します。この値が外側の WHERE 条件で比較に使用されます。
「players」テーブルにある全プレイヤーの中で、得点数が平均得点数を上回っているプレイヤーの name と goals を取得します。
つまり、平均以上の得点を持つプレイヤーのリストを返します。
  */