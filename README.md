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

For Tatin to understand `[MyUCMDs]` you need at least version 0.86.0

After installing `MakeHelpers` this way any new instance of Dyalog APL will know the user command `]MakeHelpers`. However, the API is not available until the user command is invoked once.

This can be overcome by introducing or modifying a script `setup.dyalog` in the `MyUCMDs/` folder. Details are available at <https://aplwiki.com/wiki/Dyalog_User_Commands>


## API

Once `MakeHelpers` was brought into `⎕SE` it's available via `⎕SE.MakeHelpers`.

This is a list of helpers available:

```
 CompileVersionNumberPattern
 ConvertMarkdownToHtml5      
 CopyBetter                  
 CopyTo                      
 CreateAPI                   
 CreateStandAloneExeParms    
 CreateZipFile               
 CR                          
 DropBuildNumber             
 FetchLaterUserCommand       
 GetMyUCMDsFolder            
 GetPackageCfg               
 GetUserHomeFolder           
 IncreaseBuildIDInFunction   
 MakeStandAloneRunTimeExe    
 RecreateFolder              
 RemoveStuffButSetupExe      
 Select 
 SplitVersionFromBuildNumber                      
 YesOrNo                     
 Version                                    
```

Details are available via `]MakeHelpers.Help`.

Note that `Select`, `YesOrNo` and `Pause` are inherited from `CommTools`.

## Example

This is `MakeHelpers`' own `Make` function, which lives in `MakeHelpers.Admin`:

```
 Make flag;M;C;path;zipFilename;res;version;cfg;parms
⍝ "Make" a new version of this project
 :If flag
     M←⎕SE.MakeHelpers
     C←##.CiderConfig
     path←C.HOME,'/',C.CIDER.distributionFolder
     cfg←⎕JSON⍠('Dialect' 'JSON5')⊢⊃⎕NGET C.HOME,'/apl-package.json'
     M.FetchLaterUserCommand cfg C'[MyUCMDs]'
     version←M.CompileVersionNumberPattern cfg
     M.RecreateFolder path
     {}M.CreateAPIfromCFG(⍎'##.',cfg.name)cfg ⍝ Only if a user command
     parms←⎕SE.Tatin.CreateBuildParms C.HOME
     parms.targetPath←path
     parms.version←version
     zipFilename←⎕SE.Tatin.BuildPackage parms
     ⎕←'*** New version build successfully:',M.CR,'   ',zipFilename
     :If 0<≢cfg.userCommandScript
     :AndIf 1 M.YesOrNo'Install new version in MyUCMDs?'
         {}M.##.FilesAndDirs.RmDirByForce M.GetMyUCMDsFolder cfg.name
         res←⎕SE.Tatin.InstallPackages zipFilename'[MyUCMDs]'
         ⎕←'  New version installed as user command in MyUCMDs/: ',res
     :EndIf
 :EndIf
```