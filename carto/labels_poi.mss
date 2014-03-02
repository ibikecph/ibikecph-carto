   
#poi[place='university'][zoom>=15],
#poi[place='hospital'][zoom>=16],
#poi[place='school'][zoom>=17],
#poi[place='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size: @label_scale * 10;
  text-wrap-width: 30;
  text-fill: @label;
}
