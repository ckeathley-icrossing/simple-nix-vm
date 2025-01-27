# Simple nix VM for just anything

As described in this [post](https://jeancharles.quillet.org/posts/2023-01-16-Basic-nix-vm-for-just-anything.html)

Build with:

```bash
$ nix build  ./#nixosConfigurations.vm.config.system.build.vm
```

Then run with:

```bash
$ ./result/bin/run-nixos-vm
```

or

```bash
nix-build '<nixpkgs/nixos>' -A vm -I nixos-config=vm.nix
```

or 

- https://nixos.org/manual/nixpkgs/unstable/#sec-darwin-builder
- https://www.haskellforall.com/2022/12/nixpkgs-support-for-linux-builders.html
- https://github.com/NixOS/nix/issues/2286
