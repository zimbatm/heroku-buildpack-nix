heroku-buildpack-nix
====================

Status: broken. conceptually it's there but nix doesn't bootstrap properly
yet. Help needed !

A buildpack to install application dependencies using the
[Nix](http://nixos.org/nix) package manager.

NOTE: Because buildpacks don't allow root access /nix cannot be used
End-result it's not possible to benefit from hydra builds, making
the whole experience super slow. Builds are cached between deploys which
should mitigate the issue.

Usage
-----

This buildpack looks for a `default.nix` file in the root of your project
directory. All stated dependencies will be made available during runtime.

```bash
heroku apps:create $NAME -b https://github.com/zimbatm/heroku-buildpack-nix.git
```

Look into the test/ folder for a default.nix example.

TODO
----

Fix nix-heroku-install issue. Nix compilation fails with:
```
      LD     src/boost/format/libnixformat.so
/usr/bin/ld: unrecognized option '--no-copy-dt-needed-entries'
/usr/bin/ld: use the --help option for usage information
```

Publish buildpack https://github.com/heroku/heroku-buildpacks

References
----------

* https://nixos.org/wiki/How_to_install_nix_in_home_(on_another_distribution)


License
-------

MIT
