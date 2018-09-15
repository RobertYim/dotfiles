let systemEvents = Application('System Events');

// brightness up: 113 (key: Pause)
// brightness down: 107 (key Scroll Lock)
let key = 107;

const brightnessDown = systemEvents.keyCode(key);

brightnessDown();
