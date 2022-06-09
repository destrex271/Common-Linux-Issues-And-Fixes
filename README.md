# Need to login again and again while publishing #

## Problem ##

You are being prompted to login again and again while you are pushing your changes to github.

This problem can be fixed by using `gh` - Github command line tool.

## Solution ##

- First ensure that your username and email id are configured in git, if not follow these steps
    
    1. `git config --global user.name "Your Name"`
    2. `git config --global user.email "email@xyz.com"`
- Lets install `gh` on our system : 
    
    `sudo apt-get install gh`
- Now lets login to github via gh:

    1. `gh auth login` : Select login with HTTPS method for ease of use.
    2. Follow the prompts and select if you want to login via your browser or by using a github generated passcode. (I recommend using the browser)
    3. Follow alongwith the prompts and your problem is fixed now

### Refer to this [document](https://cli.github.com/manual/gh_auth_login) if you face any problem. If the problem still persists you are most welcome to open an issue and we will help you out.