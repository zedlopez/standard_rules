"Corner of No and Where"

No is a room. Where is west of No.

Rule for constructing the status line:
	print the location in the center of the status line;
	rule succeeds.

To print the location in the center of the status line:
	(- PrintCenteredStatus(); -).

Include (-

Array printed_text --> 64;

[ PrintCenteredStatus i j;
	@set_cursor 1 0;
	i = 0->33;
	spaces(i);
	@output_stream 3 printed_text;
	print (name) location;
	@output_stream -3;
	j = (i - (printed_text-->0))/2;
	@set_cursor 1 j;
	print (name) location;
	spaces j-1;
];

-)

Test me with "w / e".


