cwlVersion: v1.0
class: Workflow
inputs:
  a: int
outputs: []
steps:
  step1:
    in:
      a: a
    out: [out]
    while: $(inputs.a > 1)
    run: blah.cwl
    update:
      - source: out
        dest: a
  step2:
    in:
      a: a
    out: [out]
    while: $(inputs.a > 1)
    run: blah.cwl
    update:
      a: out
  step3:
    in:
      a: a
    out:
      out:
        default: "foo"
    scatter: a
    while: $(inputs.a < 3)
    cond:
      "$(inputs.a < 1)": inc.cwl
      else: default.cwl
    update:
      a: out
