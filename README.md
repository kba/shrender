# shrender

Render code to documentation.

<!-- BEGIN-BANNER -w '<pre>' '  markdown from source code</pre>' shrender -->
<pre>
     _                        _
 ___| |__  _ __ ___ _ __   __| | ___ _ __
/ __| '_ \| '__/ _ \ '_ \ / _` |/ _ \ '__|
\__ \ | | | | |  __/ | | | (_| |  __/ |
|___/_| |_|_|  \___|_| |_|\__,_|\___|_|
  markdown from source code</pre>

<!-- END-BANNER -->

`shrender` takes source code as input and runs it through text filters
to extract **active** comments that can be used as the project's
README or the Markdown base for a man page.

<!-- BEGIN-MARKDOWN-TOC -->
* [INSTALL](#install)
* [USAGE](#usage)
* [COPYRIGHT](#copyright)

<!-- END-MARKDOWN-TOC -->

## INSTALL

```
git clone https://github.com/kba/shrender
cd shrender
make install
```

or using [bpgk](https://github.com/bpkg/bpkg):

```
bpgk install kba/shrender [-g]
```

## USAGE

<!-- BEGIN-EVAL ./shrender --help |sed 's,^,    ,' -->

    Usage: shrender [opts...] [render-opts] <file-to-render>...

        Options:

    	-f  --function FUNC         Show help
    	-f  --function FUNC         Render function
    	-p  --path PATH             Add path to shrenders search path
    	-c  --column CHAR           Columnize at this char.
    	-ip --input-prefix PREFIX   The pattern to filter input lines with.
    	-is --input-suffix SUFFIX   Optional suffix in input lines to be removed
    	-op --output-prefix PREFIX  Prepend output lines with this string.
    	-os --output-suffix SUFFIX  Append this string to output lines.

<!-- END-EVAL -->

## COPYRIGHT

<!-- BEGIN-INCLUDE LICENSE -->
The MIT License (MIT)

Copyright (c) 2016 Konstantin Baierer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<!-- END-INCLUDE -->
