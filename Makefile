# please change 'hostname' to your hostname
deploy:
	nix build .#darwinConfigurations.darwin.system \
	   --extra-experimental-features 'nix-command flakes'

	./result/sw/bin/darwin-rebuild switch --flake .#darwin
