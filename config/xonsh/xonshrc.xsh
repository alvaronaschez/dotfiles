$VI_MODE = True
$PROMPT = "{env_name}{BOLD_BLUE} {cwd}{branch_color}{curr_branch: {}}{RESET} {RED}{last_return_code_if_nonzero:[{BOLD_INTENSE_RED}{}{RED}] }{RESET}\n{BOLD_BLUE}{prompt_end}{RESET} "

def confirm(command: str):
    #confirmation = input()
    confirmation = input('y/N?')
    if(confirmation == 'y'):
        @(command.split())

#@aliases.register('tst')
#def test(args):
#    @('echo hola'.split())
#
#@aliases.register('sd')
#def _sd():
#    #@(confirmation = input(f"are you sure you want to run: 'shutdown now'? (y/N)"))
#    if(input('y/N?') == 'y'):
#        shutdown now


custom_aliases = {
	'xsh': 'xonsh',
  'v': 'vim',
  'cdd': 'cd ~/dotfiles',
  'cdw': 'cd ~/Workspace',
	'vxsh': 'vim ~/dotfiles/config/xonsh/xonshrc.xsh',
  'sxsh': 'source ~/dotfiles/config/xonsh/xonshrc.xsh',

  'net': 'nmtui',
  'sound': 'pavucontrol',

  'gss': 'git status --short',
  'gst': 'git status',
  'gd': 'git diff',
  'gp': 'git push',
  'gcmsg': 'git commit -m',
  'glo': 'git log --oneline --decorate',
  'gcan': 'git commit --amend --no-edit',
  'gpf': 'git push --force-with-lease --force-if-includes',
  'ga': 'git add',
  'gaa': 'git add --all',

  'update': 'sudo apt update',
  'upgrade': 'sudo apt upgrade',
  'autoclean': 'sudo apt autoclean && sudo apt autoremove',
  'upgrade': 'sudo apt upgrade',
  'install':'sudo apt-get install',
  'remove': 'sudo apt-get purge --autoremove',

  'la': 'ls -a',
  'll': 'ls -l',
  'lal': 'ls -al',
  'lal': 'ls -al',

  'sd': lambda: confirm("shutdown now"),
  'rb': lambda: confirm("shutdown -r now"),
}

if not aliases.keys().isdisjoint(custom_aliases.keys()):
    print('aliases overridding')

aliases.update(custom_aliases)

