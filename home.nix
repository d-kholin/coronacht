{ pkgs, ... }:

{
  home.username = "michael";
  home.homeDirectory = "/home/michael";
  home.stateVersion = "25.11";

  programs.ssh = {
    enable = true;
    matchBlocks = {
      "automate" = {
        host = "automate.thegriffiths.ca automate";
        hostname = "172.20.0.221";
        user = "michael";
      };
    };
  };

  programs.git = {
    enable = true;
    userName = "d-kholin";
    userEmail = "michael@thegriffiths.ca";
    extraConfig = {
      gpg.format = "ssh";
      gpg.ssh.allowedSignersFile = "/etc/git/allowed_signers";
      user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB0UuxPDrNThrfQXcdwAIr2ZZ5TcrL6cdDdjW/z5cNYa MG-General";
      commit.gpgsign = true;
    };
  };

  programs.home-manager.enable = true;
}
