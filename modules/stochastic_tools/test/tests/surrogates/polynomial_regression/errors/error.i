[StochasticTools]
[]

[Samplers]
  [sample]
    type = CartesianProduct
    linear_space_items = '0 1 10
                          0 1 10'
  []
  [sample_wrong]
    type = CartesianProduct
    linear_space_items = '0 1 10
                          0 1 10
                          0 1 10'
  []
[]

[VectorPostprocessors]
  [values]
    type = GFunction
    sampler = sample_wrong
    q_vector = '0 0 0'
    execute_on = INITIAL
    outputs = none
  []
[]

[Trainers]
  [train]
    type = PolynomialRegressionTrainer
    regression_type = "ols"
    sampler = sample
    results_vpp = values
    results_vector = g_values
    max_degree = 3
  []
[]

[Outputs]
[]
