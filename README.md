# TheFatRat-MinGW-fix
A bash script that fixes the MinGW installation problems with TheFatRat.

Give the file executable permissions.
```zsh
sudo chmod +x MinGW.sh
```
Then run it.
```zsh
sudo ./MinGW.sh
```
After it's done, run TheFatRat's `setup.sh` file again, and it should work for the MinGW part.

Any problems with the script please let me know.

This problem with TheFatRat was actually fixed by [Peterpt](https://GitHub.com/Peterpt) thanks to BRILLIANT [Repokey](https://GitHub.com/Peterpt/Repokey) creation.

However I still see a lot of people posting issues about MinGW32 & MinGW-w64 not being installed, or having the wrong version being installed,
so this script will hopefully solve that.
