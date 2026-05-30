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
