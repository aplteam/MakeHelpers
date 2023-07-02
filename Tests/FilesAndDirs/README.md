# Dealing with Files and Directories


`FileAndDirs` is a member of the APLTree library. The library is a collection of Tatin packages designed to help the Dyalog APL programmer. Search GitHub for "apltree" and you will find solutions to many everyday problems that Dyalog APL programmers may face.

**Note:** `FilesAndDirs` releases are published as [Tatin](https://tatin.dev "Link to the principal Tatin Registry") packages, see there.

## Overview

With version 15.0 Dyalog has introduced several new system functions that make it much easier to write platform independent code when it comes to dealing with files and directories.

However, there are still some gaps left: copying and moving files for example, or a recursive directory listing.

`FilesAndDirs` aims to fill these gaps: it provides the same functionality for Windows, Linux and Mac OS.

## Slashes and backslashes

On Windows the backslash character `\` is used as separator. On Linux and Mac OS it is the `/` character. However, Windows is willing to accept the `/` instead of the `\` in most cases. So the easiest way seems to be to use `/` everywhere.

Almost. As it turns out, there are a few occasions when you still have to use the `\`: 

 * Calls to third party software
 * Calls to .NET assemblies
 * Setting properties like `Directory` in the `FileBox` GUI object
 * ... (there are probably more!)

For this reason since version 1.3 all `FilesAndDirs` functions accept both the `/` and the `\` characters as directory separators, but when returning a result that is a path name, they will always make sure that the correct separator for the given operating system is used.

This is the reason why `FilesAndDirs` comes with functions like `Exists`, `CreateFile`, `DeleteFile` and even `NNAMES` and `NCREATE`: they don't do much more than their system function equivalents except to normalize any filename and directory name.

Of course this means that on Linux and Mac OS, `FilesAndDirs` cannot handle names containing a `\`, but if you are trying to write platform independent code, you are not allowed to do this anyway, and probably shouldn't even if you don't have to.

## Consuming `FilesAndDirs`

`FilesAndDirs` is a Tatin package. You can load it (for investigation) or install it (for permanent use):

```
]Tatin.LoadPackage [Tatin]FilesAndDirs #
]Tatin.InstallPackage [Tatin]FilesAndDirs /path/to/installFolder
```

## Methods 

```
  AddTrailingSep
  Cd
  CheckPath
  CurrentSep
  DateToReal
  DeleteFile
  Dir
  EnforceBackslash
  EnforceSlash
  ExecNfunction
  Exists
  ExpandPath
  GetModifiedDate
  GetNewLineCharsFor
  GetTempFilename
  GetTempFilename2
  GetTempPath
  GetTempSubDir
  IsDir
  IsFile
  IsSymbolicLink
  ListDirs
  ListFiles
  MkDir
  NCREATE
  NGET
  NNAMES
  NPUT
  NormalizePath
  PWD
  PolishCurrentDir
  RmDir
  RmDirByForce       
  Version
  YoungerThan        
```

`FilesAndDirs` needs version 18.0 Unicode of Dyalog APL, or better.
