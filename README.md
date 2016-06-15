# Apple Quiz

I used `ruby-2.3.0` for this assignment. Also note that to run these Ruby scripts, you may have to give the correct file permissions: `chmod +x [filename].rb`.

## Q1 = OOP Basics

### A

Please run `q1/q1_a.rb`. You can find the `Foobar` class in `q1/foobar.rb`. I also implemented a validator class in `q1/validators/foobar_input_validator.rb` to validate inputs.

### B

I used the `minitest` gem as my unit test framework. You must `gem install minitest` and then run `ruby -Ilib:test ./q1/tests/test_foobar.rb` to run the test.

## Q2 = JavaScript

You can find the JS app here: https://jsfiddle.net/dannyyu92/nj8qrz9a/

## Q3 = System Automation

### A

Challenge A: find all .log files within /var/logs folder (including within nested subfolders etc):    

`find . -name "*.log"`

### B

Challenge B: output contents of every log file, using one shell liner:    

`cat *.log`

If nested subfolders are included: `find . -name '*.rb' -exec cat {} \;`

### C

Challenge C: output lines containing timestamps of form 'YYYY-MM-DD HH:MM:SS':    

`grep -r "\d\{4\}-\d\{2\}-\d\{2\} \d\{2\}:\d\{2\}:\d\{2\}" .`

If we want only `.log` files again, we can add an `--include` flag like so...

`grep -r --include \*.log "\d\{4\}-\d\{2\}-\d\{2\} \d\{2\}:\d\{2\}:\d\{2\}" .`

## Q4

### i

To me, deployability means