widgets = []
for i in [1..1]
  widgets.push
    type: 'rect'
    attrs:
      x: 100
      y: 100
      w: 200
      h: 200
      strokeStyle: 'black'
      fillStyle: 'white'
      lineWidth: 7
      rotate: 30
      draggable: true

  widgets.push
    type: 'line'
    attrs:
      x1: 500
      y1: 100
      x2: 600
      y2: 300
      lineWidth: 10
      strokeStyle: 'gray'
      draggable: true

  widgets.push
    type: 'circle'
    attrs:
      cx: 350
      cy: 150
      r: 100
      strokeStyle: 'yellow'
      fillStyle: 'green'
      lineWidth: 5
      draggable: true

  widgets.push
    type: 'ellipse'
    attrs:
      x: 400
      y: 250
      w: 200
      h: 100
      draggable: true
      strokeStyle: 'green'
      fillStyle: 'lightgray'
      lineWidth: 1
      rotate: 15
      draggable: true

  widgets.push
    type: 'image'
    attrs:
      x: 400
      y: 100
      # w: 400
      # h: 400
      strokeStyle: 'yellow'
      fillStyle: 'green'
      lineWidth: 5
      src: 'http://www.html5canvastutorials.com/demos/assets/darth-vader.jpg'
      draggable: true

  widgets.push
    type: 'barcode'
    attrs:
      x: 100
      y: 350
      # w: 400
      # h: 400
      strokeStyle: 'navy'
      fillStyle: 'green'
      lineWidth: 5
      symbol: 'qrcode'
      text: 'http://www.html5canvastutorials.com/demos/assets/darth-vader.jpg'
      'scale-w': 4
      'scale-h': 4
      draggable: true

  widgets.push
    type: 'ruler'
    attrs:
      x: 600
      y: 100
      w: 400
      h: 30
      strokeStyle: 'navy'
      # fillStyle: 'yellow'
      lineWidth: 1
      margin: [10, 10]
      zeropos: 0
      # rotate: 30x
      draggable: true

  widgets.push
    type: 'ruler'
    attrs:
      x: 600
      y: 100
      w: 30
      h: 400
      strokeStyle: 'blue'
      # fillStyle: 'yellow'
      lineWidth: 1
      margin: [10, 10]
      zeropos: 0
      direction: 'vertical'
      # rotate: 30
      draggable: true

  widgets.push
    type: 'path'
    attrs:
      path: [[100, 400], [200, 300], [300, 500], [350, 350]]
      strokeStyle: 'blue'
      # fillStyle: 'yellow'
      lineWidth: 10
      margin: [10, 10]
      # rotate: 30
      draggable: true

widgets.push
  type: 'group'
  attrs:
    x: 100
    y: 100
    w: 300
    h: 300
    rotate: 30
    draggable: true
    fillStyle: 'lightgray'
    strokeStyle: 'blue'
    lineWidth: 6
  components: [{
    type: 'rect'
    attrs:
      x: 50
      y: 50
      w: 100
      h: 100
      strokeStyle: 'black'
      fillStyle: 'orange'
      draggable: true
  }, {
    type: 'circle'
    attrs:
      cx: 200
      cy: 200
      r: 50
      strokeStyle: 'black'
      fillStyle: 'orange'
      draggable: true
  }, {
    type: 'line'
    attrs:
      x1: 280
      y1: 50
      x2: 280
      y2: 250
      strokeStyle: 'black'
      fillStyle: 'orange'
      draggable: true
  }]

thing = things.create
  dependencies:
    'widget-box': things.stage.WidgetBox
    'group': things.group.Group
    'rect': things.shape.Rect
    'line': things.shape.Line
    'path': things.shape.Path
    'circle': things.shape.Circle
    'ellipse': things.shape.Ellipse
    'ruler': things.shape.Ruler
    'image': things.shape.ImageBox
    'barcode': things.shape.Barcode
  type: 'widget-box'
  attrs:
    container: 'things'
    w: 800
    h: 500
  widgets: widgets
