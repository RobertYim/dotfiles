let systemEvents = Application('System Events');

// brightness up: 113 (key: Pause)
// brightness down: 107 (key Scroll Lock)
let key = 113;

const brightnessUp = systemEvents.keyCode(key);

brightnesUp();
