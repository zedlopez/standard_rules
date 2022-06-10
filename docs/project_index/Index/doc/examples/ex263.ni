"Widget Enterprises"

Widget Stand is a room.

A monetary value is a kind of value. $1.99 specifies a monetary value with parts dollars and cents.

Equation - Profit Equation
	P = nV - (F   nC)
where P is a monetary value, F is the fixed cost, C is the unit cost, V is a monetary value, and n is a number.

The fixed cost is a monetary value that varies. The fixed cost is $5.00.
The unit cost is a monetary value that varies. The unit cost is $10.66.

Table of Customers
base	maximum value
2	$26.00
5	$20.00
8 	$15.00
2	$13.50
1	$9.00

To decide what number is the units sold at (V - a monetary value):
	let total units be 0;
	repeat through the Table of Customers:
		if V is less than the maximum value entry:
			increase total units by the base entry;
	decide on total units.

Understand "set price to [monetary value]" as setting price to. Setting price to is an action applying to one monetary value.

Carry out setting price to:
	let V be the monetary value understood;
	let n be the units sold at the monetary value understood;
	let P be given by the Profit Equation;
	say "You set the price of your widgets to [V], resulting in sales of [n] unit[s] and ";
	if P is less than $0.00:
		let L be $0.00 - P;
		say "a loss of [L].";
	otherwise if P is $0.00:
		say "break even.";
	otherwise:
		say "a profit of [P].".

Test me with "set price to $0.00 / set price to $100.00 / set price to $15.00 / set price to $8.00 / set price to $25.00 / set price to $14.99".


