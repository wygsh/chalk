## Install

```bash
v install wygsh.chalk
```

## Example

```v
module main

import wygsh.chalk

const c8 = chalk.color8
const rgb = chalk.rgb

fn main() {
	str1 := c8('Hello ${c8('world', .green, .bg)}!!', .blue, .bg)
	str2 := c8('MORE ${rgb('COLORS', [u8(200), 100, 255], .bg)!}!!', .red, .bg)

	println('${str1}\n${str2}')
}
```
output:

<img src="https://raw.githubusercontent.com/wygsh/chalk/main/docs/assets/ex_out.png" alt="preview_output" width="165"/>
