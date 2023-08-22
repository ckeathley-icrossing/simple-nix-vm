# Build this VM with nix build  ./#nixosConfigurations.vm.config.system.build.vm
# Then run is with: ./result/bin/run-nixos-vm
# To be able to connect with ssh enable port forwarding with:
# QEMU_NET_OPTS="hostfwd=tcp::2222-:22" ./result/bin/run-nixos-vm
# Then connect with ssh -p 2222 guest@localhost
{ lib, config, pkgs, ... }:
{
  system.stateVersion = "23.11";

  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  users.users.guest = {
    isNormalUser = true;
    home = "/home/guest";
    extraGroups = [ "wheel" ];
    initialPassword = "guest";
  };

  services.getty.autologinUser = "test";
  security.sudo.wheelNeedsPassword = false;

  networking.useDHCP = false;
  networking.interfaces.eth0.useDHCP = true;
}
