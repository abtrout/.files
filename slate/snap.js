//
//          SNAP!
// ┌─┬───┐ ╔══╦══╗ ┌───┬─┐
// │S│PAN│ ║SN║AP║ │NAP│!│
// └─┴───┘ ╚══╩══╝ └───┴─┘
//         a slate  config
//

const
  PCTS = [ 0.66, 0.50, 0.33 ],
  DEFAULT_PCT = 0.50,
  PADDING = 10,
  EPS = 5
;;

slate.bindAll({
  "left:ctrl,shift": snapLeft,
  "right:ctrl,shift": snapRight
});

function snapLeft(win) {
  var screen = slate.screen().visibleRect(),
      pct = snappedLeft() ? snapPct(win.rect().width) : DEFAULT_PCT;

  win.doOperation(
    slate.operation("move", { 
      x: PADDING,
      y: screen.y + PADDING,
      width: (screen.width * pct) - (PADDING * 3/2),
      height: screen.height - (PADDING * 2)
    })
  );

  function snappedLeft() {
    return win.rect().x < PADDING + EPS;
  }
}

function snapRight(win) {
  var screen = slate.screen().visibleRect(),
      pct = snappedRight() ? snapPct(win.rect().width) : DEFAULT_PCT;

  win.doOperation(
    slate.operation("move", { 
      x: (screen.width * (1 - pct)) + (PADDING * 1/2),
      y: screen.y + PADDING,
      width: (screen.width * pct) - (PADDING * 3/2),
      height: screen.height - (PADDING * 2)
    })
  );

  function snappedRight() {
    var screen = slate.screen().visibleRect(),
        rect = win.rect();
    return screen.width - (rect.x + rect.width) < PADDING + EPS;
  }
}

function snapPct(winX) {
  var screenX = slate.screen().visibleRect().width;

  for(var i=0; i<PCTS.length; i++) {
    var pctMatch = Math.abs((PCTS[i] * screenX) - winX) < (3/2 * PADDING) + EPS;
    if(pctMatch) return PCTS[(i+1) % PCTS.length];
  }

  return DEFAULT_PCT;
}
