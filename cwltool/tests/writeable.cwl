class: CommandLineTool
cwlVersion: v1.0
baseCommand: [ls, -l]
requirements:
  InitialWorkDirRequirement:
    listing:
      - entry: $(inputs.blah)
        writable: true
inputs:
  blah: Directory
outputs: []