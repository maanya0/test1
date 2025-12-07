{
  description = "Garnix server with Docker support";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    garnix-lib.url = "github:garnix-io/garnix-lib";
  };

  outputs = { self, nixpkgs, garnix-lib, ... }: {
    nixosConfigurations.server = nixpkgs.lib.nixosSystem {
      modules = [
        garnix-lib.nixosModules.garnix
        ./hosts/server.nix
      ];
    };
  };
}
