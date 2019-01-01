:Class GitBash
⍝ Kai Jaeger
⍝ Version 1.0.0 from 2018-12-21
⍝ Use this to take copies from all files of all installed Dyalog APL versions that will get changed when patching.
⍝ This script takes the copy to C:\ProgramData\Dyalog\{Version}\{filename)-yyyy-mm-dd.[exe|dll]

    ∇ r←List;⎕IO;⎕ML ⍝ this function usually returns 1 or more namespaces (here only 1)
      :Access Shared Public
      ⎕IO←⎕ML←1
      r←⎕NS''
      r.Name←'SaveDyalogEXEs'
      r.Desc←'Take copies of all files potentially affected by a Dyalog Patch for all installed versions'
      r.Group←'APLTeam'                                     ⍝
      r.Parse←''
    ∇

    ∇ r←Run(Cmd Args);⎕IO;⎕ML;A;folder;temp
      :Access Shared Public
      r←''
      ⎕IO←⎕ML←1
      folder←GetParentDir ##.SourceFile
      temp←⎕NS''
      temp.⎕CY folder,'SaveDyalogEXEs'
      temp.SaveDyalogEXEs.Run ⍬
    ∇

    ∇ r←Help Cmd;⎕IO;⎕ML;sep
      :Access Shared Public
      ⎕IO←⎕ML←1
      sep←⎕UCS 13
      r←''
      r,←⊂'For all installations of Dyalog on the current machine all files found in Base\'
      r,←⊂'are copied over to %ProgramData%\Dyalog\{dyalogVersion}\{TimeStamp}\'
    ∇

      GetParentDir←{
          path←⍵
          (('\'=path)/path)←'/'
          ({⍵↓⍨-(⌽⍵)⍳'/'}path),'/'
      }

:EndClass
