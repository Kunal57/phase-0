# Numbers, Letters, and Variable Assignment

## What does puts do?

Puts returns nil and prints the output on a new line.

## What is an integer? What is a float?

Integer = numbers without decimal points (7342, -30, 0)
Float = Numbers with decimal points (76.93, .0001, -54.876)

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between float and integer division is the value returned. When dividing a float, the value can be a whole number or a fraction depending on what is being divided. For example, dividing a 9.0/2.0 would give us 4.5. When dividing a integer, the value is rounded down to the nearest whole number is a fraction is the answer. For example, dividing 9.0/2.0 would give us 4. Although the correct answer is 4.5, since integers only display whole numbers, 4 is returned instead of 4.5. This can be useful in many ways. When buying something that costs $2 with only $9 in your pocket, integers will notify you that you can only buy 4. It wouldn't be possible to buy 4.5 of the product because you don't have enough money.

## 2.5 Mini-Exercises
Hours in a Year

```ruby
	puts 24*365
```

Minutes in a Decade

```ruby
	puts (60*24)*365*10
```
