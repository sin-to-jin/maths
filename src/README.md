### ゴールドバッハ予想
https://github.com/ogasawaraShinnosuke/maths/blob/master/src/goldbachs_conjecture.rb

```rb
pry(main)> require_relative './goldbachs_conjecture'
pry(main)> puts GoldbachsConjecture.new(10).formulas.map(&:to_s)
4 = 1 + 3
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5

pry(main)> puts GoldbachsConjecture.new(20).formulas.map(&:to_s)
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5
12 = 7 + 5
14 = 11 + 3
14 = 7 + 7
16 = 13 + 3
16 = 11 + 5
18 = 13 + 5
18 = 11 + 7
20 = 17 + 3
20 = 13 + 7

pry(main)> puts GoldbachsConjecture.new(30).formulas.map(&:to_s)
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5
12 = 7 + 5
14 = 11 + 3
14 = 7 + 7
16 = 13 + 3
16 = 11 + 5
18 = 13 + 5
18 = 11 + 7
20 = 17 + 3
20 = 13 + 7
22 = 19 + 3
22 = 17 + 5
22 = 11 + 11
24 = 19 + 5
24 = 17 + 7
24 = 13 + 11
26 = 23 + 3
26 = 19 + 7
26 = 13 + 13
28 = 23 + 5
28 = 17 + 11
30 = 23 + 7
30 = 19 + 11
30 = 17 + 13
```

