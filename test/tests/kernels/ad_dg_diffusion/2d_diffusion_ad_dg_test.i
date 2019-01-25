[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 2
  ny = 2
  xmin = 0
  xmax = 1
  ymin = 0
  ymax = 1
  elem_type = QUAD4
[]

[Variables]
  [./u]
    order = FIRST
    family = MONOMIAL

    [./InitialCondition]
      type = ConstantIC
      value = 1
    [../]
  [../]
[]

[Functions]
  [./forcing_fn]
    type = ParsedFunction
    value = 2*pow(e,-x-(y*y))*(1-2*y*y)
  [../]

  [./exact_fn]
    type = ParsedGradFunction

    value = pow(e,-x-(y*y))
    grad_x = -pow(e,-x-(y*y))
    grad_y = -2*y*pow(e,-x-(y*y))
  [../]
[]

[Kernels]
  [./diff]
    type = Diffusion
    variable = u
  [../]

  [./abs]
    type = Reaction
    variable = u
  [../]

  [./forcing]
    type = BodyForce
    variable = u
    function = forcing_fn
  [../]
[]

[ADDGKernels]
  [./dg_diff]
    type = ADDGDiffusion
    variable = u
    epsilon = -1
    sigma = 6
  [../]
[]

[BCs]
  [./all]
    type = DGFunctionDiffusionDirichletBC
    variable = u
    boundary = '0 1 2 3'
    function = exact_fn
    epsilon = -1
    sigma = 6
  [../]
[]

[Executioner]
  type = Steady

  solve_type = 'PJFNK'
#  [./Adaptivity]
#    steps = 2
#    refine_fraction = 1.0
#    coarsen_fraction = 0
#  [../]

  nl_rel_tol = 1e-10
[]

[Postprocessors]
  [./h]
    type = AverageElementSize
  [../]

  [./dofs]
    type = NumDOFs
  [../]

  [./l2_err]
    type = ElementL2Error
    variable = u
    function = exact_fn
  [../]
[]

[Outputs]
  file_base = out
  exodus = true
  csv = true
[]
