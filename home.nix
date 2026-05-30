{ pkgs, ... }:

{
  home.username = "michael";
  home.homeDirectory = "/home/michael";
  home.stateVersion = "25.11";
  home.enableNixpkgsReleaseCheck = false;

  programs.ssh = {
    enable = true;
    settings = {
      "automate.thegriffiths.ca automate" = {
        HostName = "172.20.0.221";
        User = "michael";
      };
      "ns1.thegriffiths.ca ns1" = {
        HostName = "172.20.0.3";
        User = "michael";
      };
      "ns2.thegriffiths.ca ns2" = {
        HostName = "172.20.0.4";
        User = "michael";
      };
      "pve1.thegriffiths.ca pve1" = {
        HostName = "100.115.160.103";
        User = "root";
      };
      "pve3.thegriffiths.ca pve3" = {
        HostName = "100.91.206.2";
        User = "root";
      };
      "pve4.thegriffiths.ca pve4" = {
        HostName = "100.73.204.124";
        User = "root";
      };
    };
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "d-kholin";
      user.email = "michael@thegriffiths.ca";
      gpg.format = "ssh";
      gpg.ssh.allowedSignersFile = "/etc/git/allowed_signers";
      user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB0UuxPDrNThrfQXcdwAIr2ZZ5TcrL6cdDdjW/z5cNYa MG-General";
      commit.gpgsign = true;
    };
  };

  programs.home-manager.enable = true;
}
