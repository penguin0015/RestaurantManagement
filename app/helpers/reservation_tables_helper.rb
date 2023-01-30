module ReservationTablesHelper
    def times
        times = ["11:00",
                 "12:00",
                 "13:00",
                 "14:00",
                 "17:00",
                 "18:00",
                 "19:00",
                 "20:00",
                 "21:00",
                 "22:00"]
    end

    def tables
        tables = {
                  "テーブルA" => 0,
                  "テーブルB" => 1,
                  "テーブルC" => 2,
                  "テーブルD" => 3,
                  "テーブルE" => 4,
                  "テーブルF" => 5
                 }
    end
end
