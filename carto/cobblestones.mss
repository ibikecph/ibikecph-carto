// cobblestones
#cobblestones
{
  ::left_16[zoom=16],
  ::left_17[zoom=17],
  ::left_18[zoom>=18],
  ::right_16[zoom=16],
  ::right_17[zoom=17],
  ::right_18[zoom>=18]
  {
    line-color: @cobblestone;
    line-width: 1.5*@cob_scale;
    comp-op: multiply;
  }
  
  ::left_16[zoom=16],
  ::left_17[zoom=17],
  ::left_18[zoom>=18]
  {
    line-dasharray: 1.5*@cob_scale, 4.7*@cob_scale, 1.5*@cob_scale, 2.6*@cob_scale, 1.5*@cob_scale, 5.1*@cob_scale;
  }
  ::right_16[zoom=16],
  ::right_17[zoom=17],
  ::right_18[zoom>=18]
  {
    line-dasharray: 1.5*@cob_scale, 3.1*@cob_scale, 1.5*@cob_scale, 5.3*@cob_scale, 1.5*@cob_scale, 4.2*@cob_scale;
  }
  
  ::left_16[zoom=16] {
    [sizegroup<=3]               { line-offset: @w9 * @cob_placement; }
    [sizegroup=4]                { line-offset: @w8 * @cob_placement; }
    [sizegroup=5]                { line-offset: @w6 * @cob_placement; }
    [sizegroup>=6]               { line-offset: @w5 * @cob_placement; }
  }
  ::left_17[zoom=17] {
    [sizegroup<=3]               { line-offset: @w10 * @cob_placement; }
    [sizegroup=4]                { line-offset: @w9 * @cob_placement; }
    [sizegroup=5]                { line-offset: @w8 * @cob_placement; }
    [sizegroup>=6][sizegroup<=7] { line-offset: @w6 * @cob_placement; }
    [sizegroup>=8]               { line-offset: @w5 * @cob_placement; }
  }
  ::left_18[zoom>=18] {
    [sizegroup<=3]               { line-offset: @w10 * @cob_placement; }
    [sizegroup=4]                { line-offset: @w9 * @cob_placement; }
    [sizegroup=5]                { line-offset: @w8 * @cob_placement; }
    [sizegroup>=6][sizegroup<=7] { line-offset: @w7 * @cob_placement; }
    [sizegroup>=8]               { line-offset: @w5 * @cob_placement; }
  }
  
  ::right_16[zoom=16] {
    [sizegroup<=3]               { line-offset: @w9 * @cob_placement * -1; }
    [sizegroup=4]                { line-offset: @w8 * @cob_placement * -1; }
    [sizegroup=5]                { line-offset: @w6 * @cob_placement * -1; }
    [sizegroup>=6]               { line-offset: @w5 * @cob_placement * -1; }
  }
  ::right_17[zoom=17] {
    [sizegroup<=3]               { line-offset: @w10 * @cob_placement * -1; }
    [sizegroup=4]                { line-offset: @w9 * @cob_placement * -1; }
    [sizegroup=5]                { line-offset: @w8 * @cob_placement * -1; }
    [sizegroup>=6][sizegroup<=7] { line-offset: @w6 * @cob_placement * -1; }
    [sizegroup>=8]               { line-offset: @w5 * @cob_placement * -1; }
  }
  ::right_18[zoom>=18] {
    [sizegroup<=3]               { line-offset: @w10 * @cob_placement * -1; }
    [sizegroup=4]                { line-offset: @w9 * @cob_placement * -1; }
    [sizegroup=5]                { line-offset: @w8 * @cob_placement * -1; }
    [sizegroup>=6][sizegroup<=7] { line-offset: @w7 * @cob_placement * -1; }
    [sizegroup>=8]               { line-offset: @w5 * @cob_placement * -1; }
  }
}
