CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      *   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_elem_var      num_info  �         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         analytical_indicator_fv_out.e      maximum_name_length                 !   
time_whole                            ��   	eb_status                             	@   eb_prop1               name      ID              	D   	ns_status         	                    	H   ns_prop1      	         name      ID              	X   	ss_status         
                    	h   ss_prop1      
         name      ID              	x   coordx                     P      	�   coordy                     P      
�   eb_names                       $      (   ns_names      	                 �      L   ss_names      
                 �      �   
coor_names                         D      T   node_num_map                    �      �   connect1                  	elem_type         QUAD4        @      @   elem_num_map                    P      �   elem_ss1                    P      �   side_ss1                    P          elem_ss2                    P      p   side_ss2                    P      �   elem_ss3                             side_ss3                             elem_ss4                             side_ss4                             node_ns1                    T          node_ns2                          t   node_ns3                    T      |   node_ns4                          �   name_elem_var                          D      �   vals_elem_var1eb1                          �      ��   vals_elem_var2eb1                          �      �(   elem_var_tab                                info_records                      |\      $                                                                 ?�������?�������        ?�������?�������?�333333?�333333?ə�����?ə�����?�      ?�      ?�333333?�333333?�ffffff?�ffffff?ٙ�����?ٙ�����?�������?�������?�      ?�      ?ᙙ����?ᙙ����?�333333?�333333?�������?�������?�ffffff?�ffffff?�      ?�      ?陙����?陙����?�333333?�333333?�������?�������?�ffffff?�ffffff?�      ?�                      ?�      ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�                                          bottom                           right                            top                              left                             bottom                           top                              left                             right                                                                                                                           	   
                                                                      !   "   #   $   %   &   '   (   )   *                                          	   
      	         
                                                                                                                               !   "       !   #   $   "   #   %   &   $   %   '   (   &   '   )   *   (                           	   
                                                         	   
                                                                                                                     	   
                                                                                                                     	                                    !   #   %   '   )   )   *               
                                     "   $   &   (   *      error                            u                                        ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                    ../../../moose_test-devel -i analytical_indicator_fv.i### Version Info ###                                                                                       Framework Information:                                                           MOOSE Version:           git commit 8a08845a97 on 2020-11-03                     LibMesh Version:         00ff9c5eee7ab9f3c883aeffe29032afcae99dd5                PETSc Version:           3.13.3                                                  SLEPc Version:           3.13.3                                                  Current Time:            Thu Nov  5 13:09:44 2020                                Executable Timestamp:    Thu Nov  5 08:23:25 2020                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 inactive                       = (no_default)                                    initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         custom_blocks                  = (no_default)                                    custom_orders                  = (no_default)                                    element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [Adaptivity]                                                                       cycles_per_step                = 1                                               inactive                       = (no_default)                                    initial_marker                 = INVALID                                         initial_steps                  = 0                                               interval                       = 1                                               marker                         = INVALID                                         max_h_level                    = 0                                               recompute_markers_during_cycles = 0                                              start_time                     = -1.79769e+308                                   steps                          = 0                                               stop_time                      = 1.79769e+308                                                                                                                     [./Indicators]                                                                                                                                                      [./error]                                                                          family                     = LAGRANGE                                            inactive                   = (no_default)                                        isObjectAction             = 1                                                   order                      = FIRST                                               scaling                    = INVALID                                             type                       = AnalyticalIndicator                                 block                      = INVALID                                             components                 = 1                                                   control_tags               = Adaptivity/Indicators                               eigen                      = 0                                                   enable                     = 1                                                   fv                         = 0                                                   initial_condition          = INVALID                                             outputs                    = INVALID                                             use_dual                   = 0                                                 [../]                                                                                                                                                             [./error]                                                                          function                   = solution                                            implicit                   = 1                                                   use_displaced_mesh         = 0                                                   variable                   = u                                                 [../]                                                                          [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      auto_preconditioning           = 1                                               inactive                       = (no_default)                                    isObjectAction                 = 1                                               type                           = Steady                                          accept_on_max_picard_iteration = 0                                               auto_advance                   = INVALID                                         automatic_scaling              = INVALID                                         compute_initial_residual_before_preset_bcs = 0                                   compute_scaling_once           = 1                                               contact_line_search_allowed_lambda_cuts = 2                                      contact_line_search_ltol       = INVALID                                         control_tags                   = (no_default)                                    custom_abs_tol                 = 1e-50                                           custom_rel_tol                 = 1e-08                                           direct_pp_value                = 0                                               disable_picard_residual_norm_check = 0                                           enable                         = 1                                               l_abs_tol                      = 1e-50                                           l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         line_search_package            = petsc                                           max_xfem_update                = 4294967295                                      mffd_type                      = wp                                              nl_abs_step_tol                = 0                                               nl_abs_tol                     = 1e-50                                           nl_div_tol                     = 1e+10                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 0                                               nl_rel_tol                     = 1e-08                                           num_grids                      = 1                                               outputs                        = INVALID                                         petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         picard_abs_tol                 = 1e-50                                           picard_custom_pp               = INVALID                                         picard_force_norms             = 0                                               picard_max_its                 = 1                                               picard_rel_tol                 = 1e-08                                           relaxation_factor              = 1                                               relaxed_variables              = (no_default)                                    resid_vs_jac_scaling_param     = 0                                               restart_file_base              = (no_default)                                    scaling_group_variables        = INVALID                                         skip_exception_check           = 0                                               snesmf_reuse_base              = 1                                               solve_type                     = NEWTON                                          splitting                      = INVALID                                         time                           = 0                                               update_xfem_at_timestep_begin  = 0                                               verbose                        = 0                                             []                                                                                                                                                                [FVBCs]                                                                            inactive                       = (no_default)                                                                                                                     [./left]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDirichletBC                                     boundary                     = left                                              control_tags                 = FVBCs                                             displacements                = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 value                        = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                         [../]                                                                                                                                                             [./right]                                                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDirichletBC                                     boundary                     = right                                             control_tags                 = FVBCs                                             displacements                = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 value                        = 1                                                 variable                     = u                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [FVKernels]                                                                                                                                                         [./conv]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVAdvection                                       advected_interp_method       = upwind                                            block                        = INVALID                                           control_tags                 = FVKernels                                         enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           force_boundary_execution     = 0                                                 ghost_layers                 = 1                                                 implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 use_point_neighbors          = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                           velocity                     = '(x,y,z)=(       1,        0,        0)'        [../]                                                                                                                                                             [./diff]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDiffusion                                       block                        = INVALID                                           coeff                        = coeff                                             control_tags                 = FVKernels                                         enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           force_boundary_execution     = 0                                                 ghost_layers                 = 2                                                 implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 use_point_neighbors          = 0                                                 variable                     = u                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [Functions]                                                                                                                                                         [./solution]                                                                       inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ParsedFunction                                    control_tags                 = Functions                                         enable                       = 1                                                 vals                         = INVALID                                           value                        = (exp(x)-1)/(exp(1)-1)                             vars                         = INVALID                                         [../]                                                                          []                                                                                                                                                                [Materials]                                                                                                                                                         [./diff]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ADGenericConstantMaterial                         block                        = INVALID                                           boundary                     = INVALID                                           compute                      = 1                                                 constant_on                  = SUBDOMAIN                                         control_tags                 = Materials                                         enable                       = 1                                                 implicit                     = 1                                                 output_properties            = INVALID                                           outputs                      = none                                              prop_names                   = coeff                                             prop_values                  = 1                                                 seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         inactive                       = (no_default)                                    use_displaced_mesh             = 1                                               include_local_in_ghosting      = 0                                               output_ghosting                = 0                                               block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         isObjectAction                 = 1                                               second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               allow_renumbering              = 1                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   = (no_default)                                    dim                            = 2                                               elem_type                      = INVALID                                         enable                         = 1                                               gauss_lobatto_grid             = 0                                               ghosting_patch_size            = INVALID                                         max_leaf_size                  = 10                                              nemesis                        = 0                                               nx                             = 20                                              ny                             = 1                                               nz                             = 1                                               parallel_type                  = DEFAULT                                         partitioner                    = default                                         patch_size                     = 40                                              patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         inactive                       = (no_default)                                    interval                       = 1                                               json                           = 0                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         perf_graph                     = 0                                               print_linear_converged_reason  = 1                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_nonlinear_converged_reason = 1                                             print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     = (no_default)                                    tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                               xml                            = 0                                             []                                                                                                                                                                [Problem]                                                                          inactive                       = (no_default)                                    isObjectAction                 = 1                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       library_name                   = (no_default)                                    library_path                   = (no_default)                                    object_names                   = INVALID                                         register_objects_from          = INVALID                                         block                          = INVALID                                         control_tags                   = (no_default)                                    coord_type                     = XYZ                                             default_ghosting               = 0                                               enable                         = 1                                               error_on_jacobian_nonzero_reallocation = INVALID                                 extra_tag_matrices             = INVALID                                         extra_tag_vectors              = INVALID                                         force_restart                  = 0                                               fv_bcs_integrity_check         = 1                                               ignore_zeros_in_jacobian       = 0                                               kernel_coverage_check          = 0                                               material_coverage_check        = 1                                               material_dependency_check      = 1                                               near_null_space_dimension      = 0                                               null_space_dimension           = 0                                               parallel_barrier_messaging     = 0                                               restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               skip_additional_restart_data   = 0                                               skip_nl_system_check           = 0                                               solve                          = 1                                               transpose_null_space_dimension = 0                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./u]                                                                              family                       = MONOMIAL                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 order                        = CONSTANT                                          scaling                      = INVALID                                           type                         = MooseVariableBase                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                           block                        = INVALID                                           components                   = 1                                                 control_tags                 = Variables                                         eigen                        = 0                                                 enable                       = 1                                                 fv                           = 1                                                 initial_condition            = INVALID                                           outputs                      = INVALID                                           use_dual                     = 0                                               [../]                                                                          []                                                                                                                                                                                                                                                                                                                                                                                                                          ?�      =�E�?�>�>A�q�q
>`#̹�>p�#��E>{��z\�>��~~h�>�Q%�%]>�:�/�}�>���uUW>��nc��>�v!G�^(>���q?�>�'\ǮAN>�L���GX>�X!��ٷ>��Sy�>�W>r�q�>Sխ���a=� я���?�6���Ι?�jF�P?���BH?��fQP�?��߹���?��΅1T?��o��g�?�llb<�?�ࣦ"�z?�ΐ����?�����?��W0o�?�@uG���?�:r��?���xˤ�?��F3��?���s�'�?��F��?�\�1r4�?�W�H��