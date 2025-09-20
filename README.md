# MakeHelpers

`MakeHelpers` offers a set of utilities that help building a new version of a project,
be it a package or an application or something in between (or both).

`MakeHelpers` works best with projects managed by [Cider](https://github.com/aplteam/Cider"Link to Cider on GitHub")


## User commands

There is  one user command available: `]MakeHelpers` views the documentation in the default browser.

The user command has a side effect: it brings `MakeHelpers` into `⎕SE` if it is not already there anyway. See "Installation" for more information.

The real stuff is available via the API, see there.

## Installation

Since version 0.5.0 `MakeHelpers` can and must be installed as a Tatin package. Assuming that you want to install it into the `MyUCMDs/` folder:

```
]Tatin.InstallPackages [tatin]makehelpers [myucmds]
```

After installing `MakeHelpers` this way, any new instance of Dyalog APL will know the user command `]MakeHelpers`. However, the API is not available until the user command is invoked once.

This can be overcome by different means depending on the version of Dyalog you are using:

* For version 18.2, introduce or modify a script `setup.dyalog` in the `MyUCMDs/` folder. 

  Details are available at <https://aplwiki.com/wiki/Dyalog_User_Commands>

* For 19.0 you can either use the same approach as for 18.2 or you use the newly introduced mechanism via `SessionExtenions`.

  Refer to the Dyalog documentation for details.


## API

Once `MakeHelpers` was brought into `⎕SE` it's available via `⎕SE.MakeHelpers`.

This statement prints the version number to the session:

```
      ⎕se.MakeHelpers.Version
```

This statement produces a list with all public methods:

```
      ⍪⎕se.MakeHelpers.⎕nl -3                       
```

Details are available via `]MakeHelpers.Help`.

Note that `Select`, `YesOrNo` and `Pause` are inherited from `CommTools`.

## Example

This is `MakeHelpers`' own `Make` function, which lives in `MakeHelpers.Admin`:

```
Make flag;M;C;path;zipFilename;res;version;parms;cfg
 :If flag
     M←##.MakeHelpers
     C←##.CiderConfig
     M.CommTools.Pause'>>> Note that this fn uses #.MakeHelpers.MakeHelpers, NOT ⎕se.MakeHelpers!'
     path←C.HOME,'/',C.CIDER.distributionFolder
     parms←⎕SE.Tatin.CreateBuildParms C.HOME
     parms.targetPath←path
     :If ⎕NULL≡cfg←M.EditPackageConfigFile ##.MakeHelpers.TatinVars
         ⍞←'Cancelled by user' ⋄ →0
     :Else
         parms.version←cfg.version
         M.RecreateFolder path
         {}⎕SE.Tatin.CreateAPIfromCFG ##.MakeHelpers cfg
         zipFilename←⎕SE.Tatin.BuildPackage parms
         ⎕←'*** New version built successfully:',M.CR,'   ',zipFilename
     :EndIf
 :EndIf
⍝Done
```

