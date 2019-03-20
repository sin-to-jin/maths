### ゴールドバッハ予想
https://github.com/ogasawaraShinnosuke/maths/blob/master/src/goldbachs_conjecture.rb

```rb
pry(main)> require_relative './goldbachs_conjecture'
pry(main)> puts GoldbachsConjecture.new(10).formulas.map(&:vals)
4 = 1 + 3
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5

pry(main)> puts GoldbachsConjecture.new(20).formulas.map(&:vals)
4 = 1 + 3
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5
12 = 9 + 3
12 = 7 + 5
14 = 11 + 3
14 = 9 + 5
14 = 7 + 7
16 = 13 + 3
16 = 11 + 5
16 = 9 + 7
18 = 15 + 3
18 = 13 + 5
18 = 11 + 7
20 = 17 + 3
20 = 15 + 5
20 = 13 + 7

pry(main)> puts GoldbachsConjecture.new(30).formulas.map(&:vals)
4 = 1 + 3
6 = 3 + 3
8 = 5 + 3
10 = 7 + 3
10 = 5 + 5
12 = 9 + 3
12 = 7 + 5
14 = 11 + 3
14 = 9 + 5
14 = 7 + 7
16 = 13 + 3
16 = 11 + 5
16 = 9 + 7
18 = 15 + 3
18 = 13 + 5
18 = 11 + 7
20 = 17 + 3
20 = 15 + 5
20 = 13 + 7
22 = 19 + 3
22 = 17 + 5
22 = 15 + 7
22 = 11 + 11
24 = 21 + 3
24 = 19 + 5
24 = 17 + 7
24 = 13 + 11
26 = 23 + 3
26 = 21 + 5
26 = 19 + 7
26 = 15 + 11
26 = 13 + 13
28 = 25 + 3
28 = 23 + 5
28 = 21 + 7
28 = 17 + 11
28 = 15 + 13
30 = 27 + 3
30 = 25 + 5
30 = 23 + 7
30 = 19 + 11
30 = 17 + 13
```
