alias yareps = yay -Ss
alias pacin = sudo pacman -S
alias pacinsd = sudo pacman -S --asdeps
alias yain = sudo yay -S
alias yarem = yay -Rns
def upgrade [] {
  print ":: Checking Arch Linux PGP Keyring...";
    let installedver = (pacman -Qi archlinux-keyring | find "Version" | split column ":" | get column2.0);
    let currentver = (pacman -Si archlinux-keyring | find "Version" | split column ":" | get column2.0);
    if ($installedver != $currentver) {
      print ":: Arch Linux PGP Keyring is out of date."
        print ":: Updating before full system upgrade."
        sudo pacman -Sy --needed --noconfirm archlinux-keyring
    } else {
      print " Arch Linux PGP Keyring is up to date."
        print " Proceeding with full system upgrade."
    }
    yay -Syu
}
