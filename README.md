## Install

```bash
v install wygsh.chalk
```

## Example

```v
module main

import wygsh.chalk { c8, rgb }

fn main() {
	println(
		c8('Hello ${c8('world', .green, .bg)}!!\n', .blue, .bg) +
		c8('MORE ${rgb('COLORS', 200, 100, 255, .bg)}!!', .red, .bg)
	)
}
```
output:

<img src="https://raw.githubusercontent.com/wygsh/chalk/main/docs/assets/ex_out.png" alt="preview_output" width="165"/>
