def dms(decimal_degree)
  degree = decimal_degree.to_i
  minute = ((decimal_degree - degree) * 60).to_i
  second = (decimal_degree - degree - (minute / 60.0)) * 3600
  sprintf("%01d#{"\xC2\xB0"}%02d'%02d\"", degree, minute, second)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")