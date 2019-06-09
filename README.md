# SaveDyalogEXEs

This needs to be installed as a Dyalog user command.

It takes a copy of all files that are listed in the `base\` folder from its parent folder (`base\..`) for all versions of Dyalog installed on the current machine and saves them in `{targetPath}\Dyalog\{Versions}\{yyyy-mm-dd}\`

It returns a log of all actions taken.

This user command is useful only when you want to take a backup of the current version(s) of Dyalog before patching it.

