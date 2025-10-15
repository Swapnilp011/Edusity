{ pkgs, ... }: {
  # The list of packages to be installed
  # in your environment's dev shell.
  packages = [
    pkgs.nodejs_22
  ];

  # The list of Nixpkgs channels to be used
  # in your environment's dev shell.
  #
  # You can use `nix-channel --list` to view a list of
  # the channels available in your environment.
  #
  # You can use `nix-channel --add <channel-url> <channel-name>`
  # to add a new channel to your environment.
  #
  # You can use `nix-channel --remove <channel-name>`
  # to remove a channel from your environment.
  #
  # You can use `nix-channel --update` to update
  # all channels in your environment.
  channels.nixpkgs = "unstable";

  # The command to run when your environment starts.
  #
  # This is a good place to run any services that
  # your application needs, such as a database.
  #
  # You can use `&` to run a command in the background.
  #
  # You can use `&&` to run multiple commands in sequence.
  #
  # You can use `||` to run a command only if the
  # previous command fails.
  #
  # You can use `|` to pipe the output of one command
  # to another.
  #
  # You can use `>` to redirect the output of a command
  # to a file.
  #
  # You can use `<` to redirect the input of a command
  # from a file.
  #
  # You can use `export` to set environment variables.
  #
  # You can use `source` to run a script in the
  # current shell.
  #
  # You can use `nix-shell` to start a new shell
  # with the packages and channels defined in
  # your environment.
  #
  # You can use `nix-build` to build a Nix
  # expression.
  #
  # You can use `nix-env` to manage the
  # packages in your environment.
  #
  # You can use `nix-collect-garbage` to
  # remove unused packages from your
  # environment.
  #
  # You can use `nix-store` to manage the
  # Nix store.
  #
  # You can use `nix-channel` to manage
  # the channels in your environment.
  #
  # You can use `nix-help` to get help
  # with any of the Nix commands.
  #
  start = "npm install && npm run dev";
  previews = [
    {
      command = "npm run preview -- --port $PORT";
      manager = "web";
    }
  ];
}
