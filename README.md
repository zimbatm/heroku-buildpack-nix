heroku-buildpack-nix
====================

Status: broken

A buildpack to install application dependencies using the
[Nix](http://nixos.org/nix) package manager.

NOTE: Because buildpacks don't allow root access /nix cannot be used
End-result it's not possible to benefit from hydra builds, making
the whole experience super slow.

Usage
-----

This buildpack looks for a `default.nix` file in the root of your project
directory. All stated dependencies will be made available during runtime.

TODO
----

Fix nix-heroku-install issue. Nix compilation fails with:
```
      LD     src/boost/format/libnixformat.so
/usr/bin/ld: unrecognized option '--no-copy-dt-needed-entries'
/usr/bin/ld: use the --help option for usage information
```

Publish buildpack https://github.com/heroku/heroku-buildpacks

License
-------

MIT
