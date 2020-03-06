# My worksation settings

Worstation configurations and basic resources.

## Include components

- Playbook to set up applications
- Configuration files
- Many dotfiles
- Support tools (include git-repository)

## Support Operation-systems

(Trying support for my computer OSs)

- Arch Linux

## Pre-operations

- Remain your GitHub username and password.
- Install Git, Python and Ansible.
    - For Archlinux, need `git`, `python`, `python-pip`, `gcc`, `libffi`
    - Install Ansible into user-local space.
- Git clone it.

### For Arch Linux

```
$ sudo pacman -S git python python-pip
$ git clone https://github.com/attakei/workstation.git YOUR_PATH
$ cd YOUR_PATH
$ pip install --user .
```

## CI

In GitHub Actions, check syntax.
