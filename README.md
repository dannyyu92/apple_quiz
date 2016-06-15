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

What does the term "deployability" mean to you?    

To me, deployability refers to the ease that an application or system can be pushed to 
another environment (ie: staging or production) while still maintaining the desired state. 
Basically, if it breaks in this process, it is not 'deployable'. Deployability 
also refers to the speed of which this new environment can be built when updated. So, if the application 
takes days to deploy, it is technically 'deployable', but not in a useful/pragmatic way.

### ii

As a developer, what can you do to make your RoR applications "highly deployable"?

There are many things you can do to make a RoR application "highly deployable". To list a few:
- use Docker to ensure dependencies on your VM work the same in staging/production as they do in development
- build a script to automate the installation of these dependencies
- streamline the process of updating your secret keys/env vars by building a script or using an external 
service
- find ways to optimize the speed of the test suite (are we allocating too many objects? can we fine tune the 
garbage collector? do tests depend on any external API calls which cause it to hang?)
- ensure deploying is a one-step process by finding ways to automate certain processes (migrations, seeding, etc)
- set up deployment management tools like Puppet/Chef/Ansible/etc
- ensure there is a system of saved states/snapshots/rollbacks of source code, the VM, your database, etc incase the worst happens

