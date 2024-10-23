/// @description Insert description here
// You can write your code in this editor
//seed = 0b01001101010110011101101000111010
seed = 0b01101101010110011101101000111001;
seed2 =0b01010101110010111010110101000101;
seed3= 0b11110111011010010100101000101001;
seed4= 0b01110101000101001010010001001111;
steps = 17;
mt = new MersenneTwister();
rand = function() {
	if (argument_count>0) {
		tmp = (seed ^ (seed << 15));seed=seed2;seed2=seed3;seed3=seed4;seed4=(seed3^(seed3>>21))^(tmp^(tmp>>4));
		return seed4;
		}
	return mt.make_integer(2147483646);
	}
mt.set_seed(rand(true));