:Class My_UC

    ∇ r←List;⎕IO;⎕ML
      :Access Shared Public
      ⎕IO←⎕ML←1
      r←⎕NS''
      r.Name←'Hello'
      r.Desc←'Greets'
      r.Group←''
      r.Parse←'0'
    ∇

    ∇ r←Run(Cmd Args)
      :Access Shared Public
      r←'World'
    ∇   

    ∇ r←Help Cmd;⎕IO;⎕ML
      :Access Shared Public
      r←''
      r,←⊂'Demo user command that comes with a function "Hello" that does what you would expect.'
    ∇

:EndClass
