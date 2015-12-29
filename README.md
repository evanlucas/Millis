# Millis

[![Build Status](https://travis-ci.org/evanlucas/Millis.svg)](https://travis-ci.org/evanlucas/Millis)

Human readable milliseconds. Port of [ms.js](https://github.com/rauchg/ms.js) to swift.

Currently only supports short output.

## Example

```swift
import Millis

ms(1)                     // => "1ms"
ms(1000)                  // => "1s"
ms(1000 * 60)             // => "1m"
ms(1000 * 60 * 60)        // => "1h"
ms(1000 * 60 * 60 * 24)   // => "1d"

// We can also get long output
ms(1, displayType: .Long)         // => "1 ms"
ms(1000, displayType: .Long)      // => "1 second"
ms(2000, displayType: .Long)      // => "2 seconds"
ms(1000 * 60, displayType: .Long) // => "1 minute"
```

## Author

Evan Lucas

## License

MIT (See `LICENSE` for more INFO)
