from os.path import isfile, basename, realpath, join


vim_template = """if !exists('g:colors_name') || g:colors_name != 'base16-{theme}'
  colorscheme base16-{theme}
endif"""


# Helpers
def s(cmd):
    return cmd.strip('\n') if type(cmd) is str else cmd


def l(cmd):
    return cmd.split("\n")[:-1] if type(cmd) is str else cmd


def base16(args):

    def all_themes():
        for theme in l(s($(ls -1 $BASE16_SHELL/scripts))):
            yield theme[7:-3]

    # Declaration of variables
    if not args:
        return "Don't select theme. Write \033[0;32mlist\033[0;0m to list the themes."
    theme = args[0]
    if (theme == 'list'):
        themes = [theme for theme in all_themes()]
        return '\n'.join(themes)
    script = join($BASE16_SHELL, "scripts", "base16-" + theme + ".sh")

    # Checking if exist theme
    if (isfile(script)):
        bash @(script)
        ln -fs @(script) ~/.base16_theme
        $BASE16_THEME = theme
        template = vim_template.format(theme=theme)
        echo -e @(template) > ~/.vimrc_background
        return True
    else:
        print("Theme does not exist.")
        return False
    # TODO: Terminate Hooks
    # code ...


if __name__ == "xontrib.base16_shell":
    if (isfile($HOME + '/.base16_theme')):
        bash $HOME/.base16_theme
        $BASE16_THEME = basename(realpath($HOME + '/.base16_theme'))[7:][:-3]
    aliases['base16'] = base16
