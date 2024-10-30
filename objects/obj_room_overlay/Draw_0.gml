/// @description Insert description here
// You can write your code in this editor
draw_text(194, 10, "Pawson's Halloween")
draw_text(208, 40,  string_concat("      ",rm_name(),"\nGet into the box"));
draw_text(180, 450, "* Match threadballs 3+ in line");
draw_text(500,10, "\\   |   /\n Q W E\n    @\n A  S D\n/   |   \\")
draw_text(180, 420, "* Drink milk");
draw_text(180, 390, "* Beware of the Pumpkins");
draw_text(20, 450, string_concat("THREADS: ", obj_merger.balls))
draw_text(20, 390, string_concat("MOVES: ", obj_player.moves));
draw_text(20, 420, string_concat("MILK: ", obj_player.milk_n));