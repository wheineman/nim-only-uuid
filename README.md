# nim-only-uuid
Nim UUID generator - Nim source only

A loose translation of this Javascript function (http://www.broofa.com/Tools/Math.uuid.js)

```Javascript
  Math.uuidCompact = function() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
      var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
      return v.toString(16);
    });
  };
```

To create a shared library:
```
nim c --app:lib uuid.nim
```

Usage:
```Nim
import nuuid

echo generateUUID()
```


