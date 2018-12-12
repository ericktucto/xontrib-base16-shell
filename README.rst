********************
Xontrib Base16 Shell
********************

Version number: 0.1.0

Author: `Erick Tucto`_

Overview
########

Support to `base16 shell`_. Allow change base16 shell themes.

Installation / Usage
####################

1. To install use pip

.. code-block:: bash

    python3 -m pip install xontrib-base16-shell

2. Add on ``~/.xonshrc``

.. code:: python
    :number-lines:

    $BASE16_SHELL = $HOME + "/.config/base16-shell/"
    xontrib load base16_shell

Tip: Please see my `wiki`_

See image

|Terminal|

Contributing
############

1. `Erick Tucto`_

Credits
#######

This package was created with Cookiecutter_ and the xontrib_ template

.. |Terminal| image:: https://raw.githubusercontent.com/ErickTucto/xontrib-base16-shell/master/docs/terminal.png
    :width: 600px
    :alt: terminal.png

.. _Erick Tucto: https://github.com/ErickTucto
.. _Cookiecutter: https://github.com/audreyr/cookiecutter
.. _xontrib: https://github.com/laerus/cookiecutter-xontrib
.. _base16 shell: https://github.com/chriskempson/base16-shell
.. _wiki: https://github.com/ErickTucto/xontrib-add-variable/wiki