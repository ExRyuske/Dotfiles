{ inputs, pkgs, ... }: {
  services.home-assistant = {
    enable = true;
    extraComponents = [
      "analytics"
      "google_translate"
      "met"
      "radio_browser"
      "shopping_list"
      "isal"
    ];

    config = {
      default_config = {};
    };
  };

  # Firewall
  networking.firewall.allowedTCPPorts = [ 8123 ];
}