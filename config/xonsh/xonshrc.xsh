$VI_MODE = True
$PROMPT = "{env_name}{BOLD_BLUE} {cwd}{branch_color}{curr_branch: {}}{RESET} {RED}{last_return_code_if_nonzero:[{BOLD_INTENSE_RED}{}{RED}] }{RESET}\n{BOLD_BLUE}{prompt_end}{RESET} "

aliases.update({
	'xsh': 'xonsh',
  'cdd': 'cd ~/dotfiles',
	'vxsh': 'vim ~/dotfiles/config/xonsh/xonshrc.xsh',
  'gss': 'git status --short',
  'gst': 'git status',
  'gd': 'git diff',
})
