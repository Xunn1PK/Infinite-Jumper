// Not specifying anchor point - i.e. using the default (configured as `TOP_LEFT`), relative to the GUI layer
var _panel = new UIPanel("HelloWorld_Panel", 100, 100, 500, 350, green_panel);
_panel.setTitle("Hello world!");

// Not specifying anchor point - i.e. using the default (configured as `TOP_LEFT`), relative to the parent
var _button = new UIButton("HelloWorld_Button", 0, 0, 150, 80, "Hi", green_button00);
// Set the parent of the button to the panel (i.e. "add it")
_panel.add(_button);