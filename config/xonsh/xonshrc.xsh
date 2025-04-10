$VI_MODE = True
$PROMPT = "{env_name}{BOLD_BLUE} {cwd}{branch_color}{curr_branch: {}}{RESET} {RED}{last_return_code_if_nonzero:[{BOLD_INTENSE_RED}{}{RED}] }{RESET}\n{BOLD_BLUE}{prompt_end}{RESET} "

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
}

if not aliases.keys().isdisjoint(custom_aliases.keys()):
    aliases['vxsh'] = custom_aliases['vxsh'] # useful alias for fixing the problem
    raise Exception('aliases overridding')

aliases.update(custom_aliases)

