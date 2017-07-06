cwlVersion: v1.0
class: Workflow
inputs:
  a: int
outputs: []
steps:
  step1:
    in:
      a: a
    cond:
      - case: $(a > 1)
        run: greater.cwl
      - case: default
        run: default.cwl
    out: [out]
  step2:
    in:
      a: a
    cond:
      "$(inputs.a > 1)": greater.cwl
      default: default.cwl
    out: [out]
