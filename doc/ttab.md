# ttab(1) - open a new Terminal.app tab or window

## SYNOPSIS
 Opens a new terminal tab or window in OS X's Terminal.app application.

    ttab [-w] [-s <settings>] [-t <title>] [-g|-G] [-d <dir>] [<cmd> [<arg>...]]

    -w                  open new tab in new terminal window
    -s <settings>       assign a Terminal.app settings set (profile)
    -t <title>          specify title for new tab
    -g                  create tab in background (do not activate Terminal.app)
    -G                  create tab in background and do not activate new tab
    -d <dir>            specify working directory
    <cmd> [<arg>...]    command to execute in the new tab

 Standard options: `--help`, `--man`, `--version`, `--home`

## DESCRIPTION
 `ttab` opens a new Terminal.app tab with a variety of options, including  
 executing a command in the new tab, assigning a title and working directory,  
 and opening the tab in a new window.

 IMPORTANT: **Terminal.app must be allowed assistive access** in order for this  
 utility to work, which requires one-time authorization with administrative  
 privileges. If you get error messages instead of being prompted, authorize  
 Terminal.app via System Preferences > Security & Privacy > Privacy >  
 Accessibility.

 The new tab will run a login shell (i.e., load the user's shell profile)  
 and by default inherit the working directory from the parent shell.

 When specifying a command to execute in the new tab, quoted parameters are  
 handled properly and there's no need to quote the command as a whole,  
 provided it is a *single* command.  
 Prefix such a single command with `exec` to exit the shell after the command  
 terminates. If the tab's settings are configured to close tabs on termination  
 of the shell, the tab will close automatically.

 To specify *multiple* commands, use `eval` followed by a single, quoted  
 string containing the entire shell command line to execute; in the simplest  
 case, enclose the string in single-quotes and use ';' to separate commands.  
 Use `exit` as the last command to automatically close the tab when the  
 command terminates, assuming the tab's settings are configured to close the  
 tab on termination of the shell.  
 Precede `exit` with `read -rsn 1` to wait for a keystroke first.

## OPTIONS
 * `-w`  
    creates the new tab in a new window rather than in Terminal's front  
    window.

 * `-s <settings>`  
    specifies the settings (profiles) to apply to the new tab, as  
    defined in Terminal.app's Preferences > Profiles, such as 'Grass';  
    settings determine the appearance and behavior of the new tab; name  
    matching is case-insensitive.

 * `-t <title>`   
    specifies a custom title to assign to the new tab; otherwise, if a   
    command is specified, its first token will become the new tab's title.

 * `-d <dir>`  
    explicitly specifies a working directory for the new tab; by default, the  
    invoking shell's working directory is inherited (even if `-w` is also  
    specified).

 * `-g`  
    (back*g*round) causes Terminal not to activate, if it isn't the frontmost  
    application); within Terminal, however, the new tab will become active  
    active tab; useful in scripts that launch other applications and  
    don't want Terminal to steal focus later.

 * `-G`  
    causes Terminal not to activate *and* the active element within Terminal  
    not to change; i.e., the active window and tab stay the same. If Terminal  
    happens to be frontmost, the new tab will effectively open in the  
    background.


 NOTE: With `-g` or `-G` specified, for technical reasons, Terminal / the new  
       tab will still activate *briefly, temporarily* in most scenarios.

## STANDARD OPTIONS
 All standard options provide information only.

 * `-h, --help`  
    Prints the contents of the synopsis chapter to stdout for quick reference.

 * `--man`  
    Displays this manual page, which is a helpful alternative to using `man`, 
    if the manual page isn't installed.

 * `--version`  
    Prints version information.
    
 * `--home`  
    Opens this utility's home page in the system's default web browser.

## LICENSE
 For license information and more, visit this utility's home page by running  
 `ttab --home`.

## EXAMPLES
    # Open new tab in current terminal window:
    ttab

    # Open new tab in new terminal window:
    ttab -w

    # Open new tab with title 'Green' using settings 'Grass':
    ttab -t Green -s Grass  

    # Open new tab and execute a command in it:
    ttab ls -l "$HOME/Library/Application Support"

    # Open new tab with specified working dir. and execute a command in it:
    ttab -d "$HOME/Library/Application Support" ls -l
    
    # Execute a command and exit.
    # If configured via settings, also close the tab.
    ttab exec /path/to/someprogram arg1 arg2
    
    # Pass a multi-command string via 'eval', wait for a keystroke, then exit.
    ttab eval 'ls "$HOME/Library/Application Support";
                                echo Press any key to exit; read -rsn 1; exit'
