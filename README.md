Bash and X configurations
=========================
My bash terminal and X configurations.

Installation
------------
TODO: Write install notes

Notes
-----
**Executed at login**
* *profile* -- for now, nothing important (symlinked)

**Executed on terminal spawn**
* *aliases* -- helpful command aliases (sourced by 
		bashrc)
* *bashrc\_extra* -- configures bash behavior, loads the
		Xdefaults files. (sourced by bashrc)
* *dircolors* -- sets filetype colors for `ls` 
		(sourced by bashrc\_extra)
* *inputrc* -- configures readline (requires symlink)
* *Xdefaults* -- configures X apps, especially URxvt's
		appearance and behavior (xrdb'd and symlink'd)
	* *Xdefaults.$NAME* -- machine-specific configs

**Executed at logout**
* *logout* -- for now, nothing important (symlinked)

My other dotfiles and configs
-----------------------------
* [Bash (and etc.) configurations](https://github.com/echelon/dotfiles-bash)
* [Vim configuration](https://github.com/echelon/dotfiles-vim)
* [AwesomeWM configuration](https://github.com/echelon/dotfiles-awesome)

