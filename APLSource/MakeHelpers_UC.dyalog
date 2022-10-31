:Class MakeHelpers_UC
⍝ Offers just a ]MakeHelpers.Help command. All Helpers are available via the API but not as user commands.

    ⎕IO←⎕ML←1


    ∇ r←List;c
      :Access Shared Public
      r←⍬
     
      c←⎕NS''
      c.Name←'Version'
      c.Desc←'Prints MakeHelpers''s version information to the session'
      c.Group←'MakeHelpers'
      c.Parse←''
      r,←c
     
      c←⎕NS''
      c.Name←'Help'
      c.Desc←'MakeHelpers offers helpers for creating a new version of a package or an application or something in between via its API'
      c.Group←'MakeHelpers'
      c.Parse←''
      r,←c
    ∇

    ∇ r←Run(Cmd Args)
      :Access Shared Public
      r←''
      LoadCode ⍬
      :Select ⎕C Cmd
      :Case ⎕C'Version'
          r←⎕SE.MakeHelpers.Version
      :Case ⎕C'help'
          ⎕SE.UCMD'ADOC ⎕SE._MakeHelpers -title=MakeHelpers'
      :EndSelect
    ∇

    ∇ r←level Help Cmd;⎕IO;⎕ML
      ⎕IO←⎕ML←1
      :Access Shared Public
      r←''
      :Select level
      :Case 0
          :Select ⎕C Cmd
          :Case ⎕C'Help'
              r,←⊂']MakeHelpers.Help'
          :Case ⎕C'Version'
              r,←⊂']MakeHelpers.Version'
          :EndSelect
      :Case 1
          :Select ⎕C Cmd
          :Case ⎕C'Help'
              r,←⊂'There are just two user commands available, ]MakeHelpers.Help and ]MakeHelpers.Version.'
              r,←⊂'MakeHelpers offers helpers for creating a new version of a package or an application'
              r,←⊂'or something in between.'
              r,←⊂''
              r,←⊂'However, all the helpers are available via the API: ⎕SE.MakeHelpers'
              r,←⊂''
              r,←⊂'For detailed help execute:'
              r,←⊂'      ]MakeHelpers.Help'
          :Case ⎕C'Version'
              r←LoadVersionNumber
          :EndSelect
      :EndSelect
    ∇

    ∇ {r}←LoadCode dummy;home;name;res;A_;F_
      r←0
      home←GetHomeFolder
      :If 0=⎕SE.⎕NC'_MakeHelpers'
      :OrIf ⎕SE._MakeHelpers.CreatedAt≢⊃(//)⎕VFI⊃⎕NGET home,'/CreatedAt.txt'
          name←'⎕SE._MakeHelpers'
          ⎕EX name
          name ⎕SE.⎕NS''
          r←1
          res←⎕SE.Link.Import name(home,'/APLSource')
          ⎕SE._MakeHelpers.CreatedAt←⊃(//)⎕VFI⊃⎕NGET home,'/CreatedAt.txt'
          ⎕SE.Tatin.LoadDependencies(home,'packages')(name,'.##')
          ⎕SE.MakeHelpers←⎕SE._MakeHelpers.API
      :EndIf
    ∇

    ∇ r←GetHomeFolder
      r←1⊃⎕NPARTS ##.SourceFile
    ∇

    ∇ r←AtLeastVersion min;currentVersion
      :Access Public Shared
      ⍝ Returns 1 if the currently running version is at least `min`.\\
      ⍝ If the current version is 17.1 then:\\
      ⍝ `1 1 1 0 ←→ AtLeastVersion¨16 17 17.1 18`\\
      ⍝ You may specify a version different from the currently running one via `⍺`:\\
      ⍝ `1 1 0 0 ←→ 17 AtLeastVersion¨16 17 17.1 18`
      currentVersion←{⊃⊃(//)⎕VFI ⍵/⍨2>+\⍵='.'}2⊃'.'⎕WG'aplversion'
      'Right argument must be length 1'⎕SIGNAL 11/⍨1≠≢min
      r←⊃min≤currentVersion
    ∇

:EndClass
