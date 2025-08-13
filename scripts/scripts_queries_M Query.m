let
    = Table.AddColumn(#"Removed Columns", "TimleSlot", each let
    hour = Time.Hour([#"TransactionTime(modified)"])
in
    if hour >= 0 and hour < 6 then "Late Night" 
    else if hour >= 6 and hour < 12 then "Morning"
    else if hour >= 12 and hour < 17 then "Afternoon"
    else if hour >= 17 and hour < 21 then "Evening"
    else "Night")
