# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{pkgs}: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.php82
    pkgs.php82Packages.composer
    pkgs.php82Extensions.pdo_sqlite
    pkgs.php82Extensions.sqlite3
    pkgs.sqlite
    pkgs.nodejs_20
    # pkgs.wkhtmltopdf
    pkgs.mysql
  ];
  services.mysql = {
    enable = true;
    package = pkgs.mysql80; # For MySQL 8.0
  };
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
    ];
  };
}
