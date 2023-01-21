# MakeHelpers

`MakeHelpers` offers a set of utilities that help building a new version of a project,
be it a package or an application or something in between.

`MakeHelpers` works best with projects managed by Cider.


## User commands

There are two user commands available:

* The `]MakeHelpers.Version` command returns name, version and date 
* The `]MakeHelpers.Help` puts details regarding the usage on view

Both user commands have a side effect: they bring `MakeHelpers` into `⎕SE` if it is not already there anyway. However, this is not the recommended way to do that; see "Installation" for that.

# API

Once `MakeHelpers` was brought into `⎕SE` it's available via `⎕SE.MakeHelpers`.

This is a list of helpers available:

```
 CheckVersionNo                     
 ConvertMarkdownToHtml5             
 CopyBetter                         
 CopyPackageBasics                  
 CopyTo                             
 CreateAPI                          
 CreateStandAloneExeParms           
 CreateTatinPackageFromSingleScript 
 CreateTatinPackageFromNamespace    
 CreateZipFile                      
 CR                                 
 DropBuildNumber                    
 GetMyUCMDsFolder                   
 GetPackageCfg                      
 GetUserHomeFolder                  
 HandleVersionNumber
 IncreaseBuildID                    
 InstallUserCommand                 
 MakeStandAloneRunTimeExe           
 RecreateFolder                     
 RemoveStuffButSetupExe             
 Select                             
 YesOrNo                            
 Version                            
```

Details are available via `]MakeHelpers.Help`.

## Example

This is `MakeHelpers`' own `Make` function, which lives in `MakeHelpers.Admin`:

```
 ∇  {r}←{version}Make batch;M;C;zipFilename;path;res;cfg
 ⍝ Creates a new version of MakeHelpers in the Dist/ folder.\\
 ⍝  * The user is asked whether the better version of the script is copied from either
 ⍝ `MyUCMDs/` or the project (if they differ)
 ⍝  * The user is also asked whether the new version should be installed in `MyUCMDs/`
 ⍝ If `batch` is 1 (default is 0) none of this happens.\\
 ⍝ `version` can be either a full-fledged version number or something like "+0.0.1".
 ⍝ If no left argument is provided the user is questioned.\\
 ⍝ Returns always ⍬
   r←⍬
   M←⎕SE.MakeHelpers ⋄ C←##.CiderConfig
   '⍵ must be a Boolean'M.##.Assert(,⊂batch)∊0 1
   path←C.HOME,'/Dist/'
   cfg←M.GetPackageCfg C.HOME
   :If 0=⎕NC'version'
       version←cfg M.HandleVersionNumber C.HOME
   :EndIf
   :If ~batch
       M.FetchLaterUserCommand'MakeHelpers_UC.dyalog'cfg C('[MyUCMDs]MakeHelpers/')
   :EndIf
   M.CreateAPI ##.MakeHelpers ##.MakeHelpers.Public
   M.RecreateFolder path
   zipFilename←⎕SE.Tatin.BuildPackage C.HOME path version
   ⎕←'*** New version build successfully:',M.CR,'   ',zipFilename
   :If ~batch
   :AndIf 1 M.YesOrNo'Install new version as user command in MyUCMDs?'
       M.RecreateFolder M.GetMyUCMDsFolder'/MakeHelpers'
       res←⎕SE.Tatin.InstallPackages zipFilename'[MyUCMDs]MakeHelpers'
       ⎕←'  New version installed as user command in MyUCMDs/: ',res
   :EndIf
 ⍝Done
 ∇
```

## Installation

Since version 0.5.0 installing `MakeHelpers` can and must be installed as a Tatin package. Assuming that you want to install it into the `MyUCMDs/` folder:

```
]Tatin.InstallPackages group-name-1.2.3 [MyUCMDs]
```

For Tatin to understand `[MyUCMDs]` you need at least version 0.86.0

After installing `MakeHelpers` this way any new instance of Dyalog APL will know the user command `]MakeHelpers`. However, the API is not available until the user command is invoked once.

This can be overcome by introducing or modifying a script `setup.dyalog` in the `MyUCMDs/` folder. Details are available at <https://aplwiki.com/wiki/Dyalog_User_Commands>


### How does `setup.dyalog` work?

The magic behind this is that whenever an instance of Dyalog is fired up it checks whether such a script exists. If that is the case it checks whether there is a function `Setup`. 

If that is the case it is expected to be a monadic function which will be executed automatically as part of the instantiating process of Dyalog APL.

This can be used for many things like...

* making changes to the session
* specifying function keys 
* loading stuff into `⎕SE`

### There is no such script yet

Create one that looks like this:

```
:Namespace SetItUp

    ∇ {r}←Setup arg;⎕IO;⎕ML;dmx
      r←⍬
      ⎕IO←1 ⋄ ⎕ML←1
      :Trap ⎕SE.SALTUtils.DEBUG↓0
          AutoloadMakeHelpers ⍬
      :Else
          dmx←⎕DMX
          ⎕←'Setup.dyalog has a problem and was not executed successfully:'
          ⎕←↑'  '∘,¨dmx.DM
      :EndTrap
    ∇

    ∇  {r}←AutoLoadMakeHelpers dummy;wspath;path2Config;home;name;res
      r←⍬
      ⎕SE.⎕EX¨'_MakeHelpers' 'MakeHelpers'
      home←GetMyUCMDsFolder,'MakeHelpers/'
      :If 0=⎕SE.⎕NC'_MakeHelpers'
          name←'⎕SE._MakeHelpers'
          ⎕EX name
          name ⎕SE.⎕NS''
          r←1
          res←⎕SE.Link.Import name(home,'/APLSource')
          ⎕SE._MakeHelpers.CreatedAt←⊃(//)⎕VFI⊃⎕NGET home,'/CreatedAt.txt'
          ⎕SE.Tatin.LoadDependencies(home,'packages')(name)
          ⎕SE.MakeHelpers←⎕SE._MakeHelpers.API
      :EndIf
    ∇

      IfAtLeastVersion←{
      ⍝ ⍵ is supposed to be a number like 15 or 17.1, representing a version of Dyalog APL.
      ⍝ Returns a Boolean that is 1 only if the current version is at least as good.
          ⍵≤{⊃(//)⎕VFI ⍵/⍨2>+\'.'=⍵}2⊃# ⎕WG'APLVersion'
      }

    ∇ r←{OS}GetMyUCMDsFolder add
     ⍝ Returns standard path for Dyalog's MyUCMDs\ folder.
     ⍝ Works on all platforms but returns different results.\\
     ⍝ Under Windows typically:\\
     ⍝ `C:\Users\{⎕AN}\Documents\MyUCMDs'  ←→ GetMyUCMDsFolder ''
     ⍝ `C:\Users\{⎕AN}\Documents\MyUCMDs\aaa'  ←→ GetMyUCMDsFolder 'aaa'
     ⍝ ⍺ is optional and only specified by test cases: simulating different versions of the operating system.
       :If 0=⎕NC'OS'
           OS←3↑⊃'.'⎕WG'APLVersion'
       :EndIf
       add←{(((~'/\'∊⍨⊃⍵)∧0≠≢⍵)/'/'),⍵}add
       :If 'Win'≡OS
           r←⊃,/1 ⎕NPARTS (2⊃4070⌶0),'\..\MyUCMDs',add
       :Else
           r←(2 ⎕NQ'.' 'GetEnvironment' 'Home'),'/MyUCMDs',add
       :EndIf
    ∇

:EndNamespace
```

### There is already such a script

Copy the functions `IfAtLeastVersion`, `GetMyUCMDsPath` and `AutoLoadMakeHelpers` from above into your own `setup.dyalog` script and then make sure that `AutoLoadMakeHelpers` is called from your `Setup` function.