$VI_MODE = True
$PROMPT = "{env_name}{BOLD_BLUE} {cwd}{branch_color}{curr_branch: {}}{RESET} {RED}{last_return_code_if_nonzero:[{BOLD_INTENSE_RED}{}{RED}] }{RESET}\n{BOLD_BLUE}{prompt_end}{RESET} "

def confirm(command: str):
    confirmation = input(f"are you sure you want to run: '{command}'? (y/N)")
    if(confirmation in {'y', 'Y'}):
        @(command.split())
    return

custom_aliases = {
	'xsh': 'xonsh',
  'cdd': 'cd ~/dotfiles',
	'vxsh': 'vim ~/dotfiles/config/xonsh/xonshrc.xsh',

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

  'sd': '@(confirm("shutdown now"))',
  'rb': '@(confirm("shutdown -r now"))',
}

if not aliases.keys().isdisjoint(custom_aliases.keys()):
    aliases['vxsh'] = custom_aliases['vxsh'] # useful alias for fixing the problem
    raise Exception('aliases overridding')

aliases.update(custom_aliases)

