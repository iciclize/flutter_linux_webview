`flutter_linux_webview` incorporates materials from third-party software.

# `third_party/` directories

Third-party source code is gathered under several directories named third_party/ in the repository.

On the Git repository, each third-party file is a symlink to a file in //third_party_base/.
In the case of the Pub package, those symlinks are converted to standard files, and //third_party_base/ will not exist.

# `//third_party_base/`

For plugin development, to avoid having third-party source code scattered all
over the repository, we place them centrally under //third_party_base/.

We create symlinks for third-party source files at the location where we use
them. We do not directly reference //third_party_base/ from our source code.

This is due to the following restrictions.

* Dart source code cannot access directories outside of lib/ due to Dart restrictions.
* Due to the restriction of Pub, packages with symlinks to directories cannot be uploaded. (symlinks to files are allowed, but they are converted to standard files on upload)

For consistency, we do the same for native source code as well as Dart. (although files in //linux/ can directly access //third_party_base/ with CMake configuration) 

The creation of symlinks is done by create_symlinks_to_third_party.sh.
