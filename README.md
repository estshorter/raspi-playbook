run ansible
``` sh
 ansible-playbook -i localhost, -c local setup.yml
```

git setting
``` bash
ssh-keygen -t ed25519 -C ""
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519.pub 
cat << EOF >> ~/.ssh/config
Host github.com
    User git
    IdentityFile ~/.ssh/id_ed25519
    PreferredAuthentications publickey
EOF
git config --global user.name estshorter
git config --global user.email 1430311+estshorter@users.noreply.github.com
git config --global pull.rebase false
git config --global credential.helper cache
```

## note
fish config

- [jorgebucaran/fisher](https://github.com/jorgebucaran/fisher)
- [PatrickF1/fzf.fish](https://github.com/PatrickF1/fzf.fish)
- [jethrokuan/z](https://github.com/jethrokuan/z)
- [oh-my-fish/theme-bobthefish](https://github.com/oh-my-fish/theme-bobthefish)

``` fish
fish_config 
set fish_greeting
```

other tools
- [pueue](https://github.com/Nukesor/pueue)

https://qiita.com/eduidl/items/dc2f29cac7232a9a97d8
