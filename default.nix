{ bundlerEnv, ruby, stdenv }:

let env = bundlerEnv {
  name = "polar-env";

  inherit ruby;

  gemfile = ./Gemfile;
  lockfile = ./Gemfile.lock;
  gemset = ./gemset.nix;
};

in stdenv.mkDerivation {
  name = "polar";
  src = /data/code/polar;

  buildInputs = [ env.wrappedRuby ];

  installPhase = ''
    mkdir -p $out/bin

    cp -a $src/lib $out/bin
    cp -a $src/pkg $out/bin
    cp -a $src/vendor $out/bin

    install -m755 $src/polar_activitysamples2csv \
      $out/bin/polar_activitysamples2csv
    install -m755 $src/polar_dailysummary2txt \
      $out/bin/polar_dailysummary2txt
    install -m755 $src/polar_dailytrainingload2txt \
      $out/bin/polar_dailytrainingload2txt
    install -m755 $src/polar_fitnesstest2txt \
      $out/bin/polar_fitnesstest2txt
    install -m755 $src/polar_ftp \
      $out/bin/polar_ftp
    install -m755 $src/polar_physdata2txt \
      $out/bin/polar_physdata2txt
    install -m755 $src/polar_recovery2txt \
      $out/bin/polar_recovery2txt
    install -m755 $src/polar_rrrecord2txt \
      $out/bin/polar_rrrecord2txt
    install -m755 $src/polar_sleepanalysis2txt \
      $out/bin/polar_sleepanalysis2txt
    install -m755 $src/polar_training2rrtxt \
      $out/bin/polar_training2rrtxt
    install -m755 $src/polar_training2test \
      $out/bin/polar_training2test

    patchShebangs $out/bin/polar_activitysamples2csv
    # ...

    patchShebangs $out/bin/polar_ftp
  '';
}

