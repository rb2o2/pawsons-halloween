/*	This implementation of the Mersenne Twister is a port of the JavaScript version by Y. Okada.
	The JavaScript version was itself a port of a C implementation, by Takuji Nishimura and Makoto Matsumoto.
	CoffeeScript port by: Jamis Buck <jamisjamisbuck.org>

	License: Public domain, baby. Knock yourself out.
	The original CoffeeScript sources are always available on GitHub: http://github.com/jamis/csmazes
*/

/// @function MersenneTwister([seed])
function MersenneTwister() constructor {	
	/// @function bitpush_tri_right(value, times)
	static bitpush_tri_right = function(Value, Times) {
		repeat Times {
			Value = 1 >> Value
			Value = abs(Value)
		}
		return Value
	}

	/// @function set_seed(value)
	static set_seed = function(Seed) {
		table[0] = make_acceptible(Seed & 0xffffffff)
		table_index = 1

		while table_index < TABLE_SIZE {
		    table[table_index] = add_stuff(multiply_stuff(1812433253, make_acceptible(table[table_index-1] ^ (abs(table[table_index-1]) >> 30))), table_index) /// >>>
		    table[table_index] = make_acceptible(table[table_index] & 0xffffffff)
		    table_index++
		}
	}

	/// @function make_acceptible(number)
	/// @description makes the argument into an unsigned integer, if it is not already one
	static make_acceptible = function(Number) {
		if Number < 0
			return (Number ^ UPPER_MASK) + UPPER_MASK
		else
			return Number
	}

	/// @function add_stuff(number_1, number_2)
	/// @description emulates overflow of adding two 32-bit integers. both arguments must be non-negative 32-bit integers.
	static add_stuff = function(First, Second) { return make_acceptible((First + Second) & 0xffffffff) }

	/// @function sub_stuff(number_1, number_2)
	/// @description emulates underflow of subtracting two 32-bit unsigned integers. both arguments must be non-negative 32-bit integers.
	static sub_stuff = function(First, Second) {
		if First < Second
		    return abs((0x100000000 - (Second - First)) % 0xffffffff)
		else
		    return First - Second
	}

	/// @function multiply_stuff(number_1, number_2)
	/// @description emulates overflow of multiplying two 32-bit integers. both arguments must be non-negative 32-bit integers.
	static multiply_stuff = function(First, Second) {
		var Result = 0
		for (var i = 0; i < 32; ++i) {
		    if (abs(First) >> i) & 0x1 // >>>, negative
			// if bitpush_tri_right(i, First) & 0x1
				Result = add_stuff(Result, make_acceptible(Second << i))
		}
		return Result
	}

	/// @function make_integer(max)
	static make_integer = function(Upper) {
		if is_undefined(Upper)
			Upper = 1
		else if !is_numeric(Upper)
			return 0
		else if Upper <= 0
			Upper = 1

		var mag01 = [0, MATRIX_A]
		var Result = 0

		if TABLE_SIZE <= table_index {
		    var kk = 0

		    while kk < TABLE_SIZE - TABLE_INDEX_MIN {
			    Result = make_acceptible((table[kk] & UPPER_MASK) | (table[kk + 1] & LOWER_MASK))
			    table[kk] = make_acceptible(table[kk + TABLE_INDEX_MIN] ^ (abs(Result) >> 1) ^ mag01[Result & 0x1]) // >>>
				//table[kk] = make_acceptible(table[kk + TABLE_INDEX_MIN] ^ bitpush_tri_right(1, Result) ^ mag01[Result & 0x1])
			    kk++
			}

		    while kk < TABLE_SIZE - 1 {
			    Result = make_acceptible((table[kk] & UPPER_MASK) | (table[kk + 1] & LOWER_MASK))
			    table[kk] = make_acceptible(table[kk + TABLE_INDEX_MIN - TABLE_SIZE] ^ (abs(Result) >> 1) ^ mag01[Result & 0x1]) // >>>
				//table[kk] = make_acceptible(table[kk + TABLE_INDEX_MIN - TABLE_SIZE] ^ bitpush_tri_right(1, Result) ^ mag01[Result & 0x1])
			    kk++
			}

		    Result = make_acceptible((table[TABLE_SIZE - 1] & UPPER_MASK) | (table[0] & LOWER_MASK))
		    table[TABLE_SIZE - 1] = make_acceptible(table[TABLE_INDEX_MIN - 1] ^ (abs(Result) >> 1) ^ mag01[Result & 0x1]) // >>>
			//table[TABLE_SIZE - 1] = make_acceptible(table[TABLE_INDEX_MIN - 1] ^ bitpush_tri_right(1, Result) ^ mag01[Result & 0x1])
		    table_index = 0
		}

		Result = table[table_index++]

		Result = make_acceptible(Result ^ (abs(Result) >> 11)) // >>>
		Result = make_acceptible(Result ^ ((Result << 7) & 0x9d2c5680))
		Result = make_acceptible(Result ^ ((Result << 15) & 0xefc60000))

		return make_acceptible(Result ^ (abs(Result) >> 18)) % (Upper & ~0x100000000) // >>>
	}

	/// @function make_float(max)
	static make_float = function(Upper) { return real(make_integer(2147483647) / 2147483647 % Upper) } // 0xffffffff (== max of unsinged int)

	/// @function make_boolean()
	static make_boolean = function() { return bool(make_integer(2) % 2 == 0) }

	static TABLE_SIZE = 624
	static TABLE_INDEX_MIN = 397
	static UPPER_MASK = 0x80000000
	static LOWER_MASK = 0x7fffffff
	static MATRIX_A = 0x9908b0df

	table = array_create(TABLE_SIZE, 0)
	table_index = 0

	if argument_count == 0 or !is_numeric(argument[0]) {
		set_seed(random_get_seed())
	} else {
		set_seed(argument[0])
	}
}
