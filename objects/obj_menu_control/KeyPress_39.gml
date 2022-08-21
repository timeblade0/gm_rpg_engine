//move selector right
if(global.menu_visible==1){//if menu is up
if(global.menu_area==4){//if ability select area
global.menu_mode=10;//set to right ability column
}
if(global.menu_area==2||global.menu_area==3||global.menu_area==5){//if item/ability user select
global.menu_mode+=1;}//move right 1 column
if(global.menu_area==1||global.menu_area==6){//if item/key item select
global.menu_mode+=10;}//move right 1 column
}

