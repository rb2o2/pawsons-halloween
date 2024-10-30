/// @description Insert description here
// You can write your code in this editor
if (vis) {
	draw_text(xshift(Room1, -3, -3),yshift(Room1, -3,-3), "GAME COMPLETE !")
	draw_text(xshift(Room1, -3, -1),yshift(Room1, -3,-1), string_concat("MILK : ", global.progress.milk_n, " / 14" , ));
	draw_text(xshift(Room1, -3, 1),yshift(Room1, -3,1), string_concat("BALLS : ", global.progress.balls, " / 28", ));
	draw_text(xshift(Room1, -3, 3),yshift(Room1, -3,3), string_concat("MOVES : ", global.progress.moves));	
	
}