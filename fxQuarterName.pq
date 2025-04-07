(FirstDate as date, SecondDate as date) =>
  let
    QuarterMinFour  = Date.AddQuarters(SecondDate, -4),
    QuarterMinThree = Date.AddQuarters(SecondDate, -3),
    QuarterMinTwo   = Date.AddQuarters(SecondDate, -2),
    QuarterMinOne   = Date.AddQuarters(SecondDate, -1),
    QuarterZero     = Date.AddQuarters(SecondDate, 0),
    QuarterOne      = Date.AddQuarters(SecondDate, 1),
    QuarterTwo      = Date.AddQuarters(SecondDate, 2),
    QuarterThree    = Date.AddQuarters(SecondDate, 3),
    QuarterFour     = Date.AddQuarters(SecondDate, 4)
  in
    if FirstDate is null then null
    else 
      if FirstDate >= QuarterMinFour and FirstDate <= QuarterMinThree then "Q1(PY)"
      else if FirstDate > QuarterMinThree and FirstDate <= QuarterMinTwo then "Q2(PY)"
      else if FirstDate > QuarterMinTwo and FirstDate <= QuarterMinOne then "Q3(PY)"
      else if FirstDate > QuarterMinOne and FirstDate < SecondDate then "Q4(PY)"
      else if FirstDate >= SecondDate and FirstDate <= QuarterOne then "Q1"
      else if FirstDate > QuarterOne and FirstDate <= QuarterTwo then "Q2"
      else if FirstDate > QuarterTwo and FirstDate <= QuarterThree then "Q3"
      else if FirstDate > QuarterThree and FirstDate <= QuarterFour then "Q4"
      else null
