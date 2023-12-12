# add_to_bash

Once software has been downloaded to a binary directory, we can add this
path to our bash profile so that we can use the functions from anywhere
without having to type the path to that directory each time.

To do this, navigate to your home direcotort with `cd`. Not including a
location after `cd` will take you to your home directory.

To know the file name for your bash profile, use `ls -la`. This will
show all directories to in your home directory, including hidden
directories. You’ll want to add the path to your binary directory by
opening your `.bashrc` with a text editor. Options for this include:

`nano .bashrc`

`vi .bashrc`

`vim .bashrc`

Once this file is open, navigate to the line that says
`# User specific aliases and functions`. Under this line is where you
will want to put the path to your binary directory. For example, mine
looks like this:

`export PATH="/lustre/isaac/proj/UTK0171/ccatrett/simmental_fertility/bin:$PATH"`.

Yours should look like this:

`export PATH="path/to/binary/directory/bin:$PATH"`.

Once this line has been added, save your file according to the text
editor you chose to edit the file. If you chose `nano`, control-X will
ask you to save the file. Type Y and then the file will save and close.
If you chose `vi` or `vim`, press the edscape button and then type :wq
to write and quit the file.

Once this file has been saved, use the command `source .bashrc` to
commit these changes to your bash profile. These new functions will then
be available to be run without typing the full file path each time.
