var leftHalf = slate.operation("move", {
  "x": "screenOriginX + 20",
  "y": "screenOriginY + 20",
  "width": "screenSizeX/2 - 30",
  "height": "screenSizeY - 40"
});

var rightHalf = slate.operation("move", {
  "x": "screenSizeX/2 + 10",
  "y": "screenOriginY + 20",
  "width": "screenSizeX/2 - 30",
  "height": "screenSizeY - 40"
});

slate.bind("left:cmd,shift", leftHalf);
slate.bind("right:cmd,shift", rightHalf);
