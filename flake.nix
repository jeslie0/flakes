{
  description = "A flake containing all of my public flakes.";

  inputs = {
    dotfiles.url = github:jeslie0/.dotfiles;
    templates.url = github:jeslie0/flake-templates;
    spotifyd.url = github:jeslie0/spotifyd;
    fonts.url = github:jeslie0/fonts;
    nix-cow.url = github:jeslie0/nix-cow;
    bemenuFocus.url = github:jeslie0/bemenuFocus;
    passbemenu.url = github:jeslie0/passbemenu;
    swaybgchanger.url = github:jeslie0/swaybgchanger;
    julia-mandel.url = github:jeslie0/julia-mandel;
    texmf.url = github:jeslie0/texmf;
    swaylock-effects.url = github:jeslie0/swaylock-effects-git;
    compdb.url = github:jeslie0/compdb;
    mkElmDerivation.url = github:jeslie0/mkElmDerivation;
  };

  outputs = { self, ... }: {
    templates = self.inputs.templates.templates;
    homeConfigurations = self.inputs.dotfiles.homeConfigurations;
    nixosConfigurations = self.inputs.dotfiles.nixosConfigurations;

    spotifyd = self.inputs.spotifyd;
    fonts = self.inputs.fonts;
    nix-cow = self.inputs.nix-cow;
    bemenuFocus = self.inputs.bemenuFocus;
    passbemenu = self.inputs.passbemenu;
    swaybgchanger = self.inputs.swaybgchanger;
    julia-mandel = self.inputs.julia-mandel;
    texmf = self.inputs.texmf;
    swaylock-effects = self.inputs.swaylock-effects;
    compdb = self.inputs.compdb;
    mkElmDerivation = self.inputs.mkElmDerivation;
  };
}
