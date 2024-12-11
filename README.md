# MakeHelpers

`MakeHelpers` offers a set of utilities that help building a new version of a project,
be it a package or an application or something in between.

`MakeHelpers` works best with projects managed by Cider.


## User commands

There are two user commands available:

* The `]MakeHelpers.Version` command returns name, version and date 
* The `]MakeHelpers.Help` puts details regarding the usage on view

Both user commands have a side effect: they bring `MakeHelpers` into `⎕SE` if it is not already there anyway. See "Installation" for more information.

The real stuff is available via the API, see there.

## Installation

Since version 0.5.0 installing `MakeHelpers` can and must be installed as a Tatin package. Assuming that you want to install it into the `MyUCMDs/` folder:

```
]Tatin.InstallPackages [tatin]makehelpers [myucmds]
```

For Tatin to be able to "understand" `[MyUCMDs]` you need at least version 0.86.0

After installing `MakeHelpers` this way, any new instance of Dyalog APL will know the user command `]MakeHelpers`. However, the API is not available until the user command is invoked once.

This can be overcome by different means depending on the version of Dyalog you are using:

* For version 18.2, introduce or modify a script `setup.dyalog` in the `MyUCMDs/` folder. 

  Details are available at <https://aplwiki.com/wiki/Dyalog_User_Commands>

* For 19.0 you can either use the same approach as for 18.2 or you use the newly introduced mechanism via `SessionExtenions`.

  Refer to the Dyalog documentation for details.


## API

Once `MakeHelpers` was brought into `⎕SE` it's available via `⎕SE.MakeHelpers`.

This statement produces a list with all public methods:

```
      ⍪⎕se.MakeHelpers.⎕nl -3                       
```

Details are available via `]MakeHelpers.Help`.

Note that `Select`, `YesOrNo` and `Pause` are inherited from `CommTools`.

## Example

This is `MakeHelpers`' own `Make` function, which lives in `MakeHelpers.Admin`:

```
 Make flag;M;C;path;zipFilename;res;version;cfg;parms;msg
⍝ "Make" a new version of this project
 :If flag
     :If 0=⎕SE.⎕NC'MakeHelpers'
         msg←'Could not load "MakeHelpers" into ⎕SE?!'
         msg Assert ⎕SE.Tatin.LoadPackages'[tatin]MakeHelpers'⎕SE
     :EndIf
     M←⎕SE.MakeHelpers
     C←##.CiderConfig
     path←C.HOME,'/',C.CIDER.distributionFolder
     cfg←⎕JSON⍠('Dialect' 'JSON5')⊢⊃⎕NGET C.HOME,'/apl-package.json'
     version←M.CompileVersionNumberPattern cfg
     M.FetchLaterUserCommand cfg C'[MyUCMDs]'
     M.RecreateFolder path
     ⎕SE.Tatin.CreateAPIfromCFG ##.MakeHelpers cfg
     parms←⎕SE.Tatin.CreateBuildParms C.HOME
     parms.targetPath←path
     parms.version←version
     zipFilename←⎕SE.Tatin.BuildPackage parms
     ⎕←'*** New version build successfully:',M.CR,'   ',zipFilename
     :If 1 M.YesOrNo'Install new version as user command in MyUCMDs?'
         M.RecreateFolder M.GetMyUCMDsFolder'/MakeHelpers'
         res←⎕SE.Tatin.InstallPackages zipFilename'[MyUCMDs]'
         ⎕←'  New version installed as user command in MyUCMDs/: ',res
     :EndIf
 :EndIf
```
