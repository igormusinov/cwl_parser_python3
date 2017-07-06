cwlVersion: v1.0
class: CommandLineTool
inputs:
  - id: inp
    type: Directory
    inputBinding:
      valueFrom: $(self.listing[0].path)
outputs: []
baseCommand: cat
