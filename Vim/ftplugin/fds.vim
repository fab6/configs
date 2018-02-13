" https://sites.google.com/site/louiea/vimsyntaxfileforfds
" Vim syntax file generated by fds_make_syn.pl
" Language:     fds v. 4 and 5 input files
" Maintainer:   Andrew Louie <louiea@pbworld.com>
" Last change:  Feb 12, 2018
" fds4 reads files that end in *.data
" fds5 reads files of any ext, but normally used .fds or .fds5
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

"set unusal keywords
setlocal iskeyword+=_

" keywords NAMELIST Parameters
"
" Obselete NAMELIST-Keywords from FDS4
syn keyword FDS4OBS HEAT PIPE PL3D SMOD SPRK THCP GRID PDIM

" BNDE
syn keyword NAMELIST BNDE
syn keyword FDS5PA CELL_CENTERED FYI PART_ID PROP_ID QUANTITY SPEC_ID
" BNDF
syn keyword NAMELIST BNDF
syn keyword FDS5PA CELL_CENTERED FYI PART_ID PROP_ID QUANTITY SPEC_ID STATISTICS
" CLIP
syn keyword NAMELIST CLIP
syn keyword FDS5PA FYI MAXIMUM_DENSITY MAXIMUM_TEMPERATURE MINIMUM_DENSITY MINIMUM_TEMPERATURE
" CSVF
syn keyword NAMELIST CSVF
syn keyword FDS5PA CSVFILE UVWFILE
" CTRL
syn keyword NAMELIST CTRL
syn keyword FDS5PA CONSTANT CYCLES CYCLE_TIME DELAY DIFFERENTIAL_GAIN EVACUATION FUNCTION_TYPE ID INITIAL_STATE INTEGRAL_GAIN &  INPUT_ID LATCH N ON_BOUND PROPORTIONAL_GAIN RAMP_ID &
  SETPOINT TARGET_VALUE TRIP_DIRECTION

" DEVC
syn keyword NAMELIST DEVC
syn keyword FDS5PA BYPASS_FLOWRATE CONVERSION_FACTOR COORD_FACTOR CTRL_ID DELAY DEPTH DEVC_ID DRY DUCT_ID EVACUATION FLOWRATE FYI & GHOST_CELL_IOR HIDE_COORDINATES ID INITIAL_STATE INIT_ID IOR LATCH MATL_ID NODE_ID NO_UPDATE_DEVC_ID NO_UPDATE_CTRL_ID ORIENTATION ORIENTATION_NUMBER OUTPUT PART_ID PIPE_INDEX POINTS &
 PROP_ID QUANTITY QUANTITY2 QUANTITY_RANGE &
 REAC_ID RELATIVE R_ID ROTATION SETPOINT SMOOTHING_FACTOR SPEC_ID STATISTICS STATISTICS_START SURF_ID &
 TIME_AVERAGED TIME_HISTORY TRIP_DIRECTION UNITS VELO_INDEX XB XYZ X_ID Y_ID Z_ID

" DUMP
syn keyword NAMELIST DUMP
syn keyword FDS5PA CLIP_RESTART_FILES COLUMN_DUMP_LIMIT CTRL_COLUMN_LIMIT & DEVC_COLUMN_LIMIT DT_BNDE DT_BNDF DT_CPU DT_CTRL DT_DEVC DT_DEVC_LINE DT_FLUSH & DT_GEOM DT_HRR DT_ISOF DT_MASS DT_PART DT_PL3D DT_PROF DT_RESTART DT_SL3D DT_SLCF EB_PART_FILE &
 FLUSH_FILE_BUFFERS GEOM_DIAG MASS_FILE MAXIMUM_PARTICLES MMS_TIMER NFRAMES PLOT3D_PART_ID PLOT3D_QUANTITY &
 PLOT3D_SPEC_ID PLOT3D_SPEC_ID PLOT3D_VELO_INDEX RENDER_FILE SIG_FIGS SIG_FIGS_EXP SMOKE3D SMOKE3D_QUANTITY &
 SMOKE3D_SPEC_ID STATUS_FILES SUPPRESS_DIAGNOSTICS UVW_TIMER VELOCITY_ERROR_FILE WRITE_XYZ

" HEAD
syn keyword NAMELIST HEAD
syn keyword FDS5PA CHID FYI STOPFDS TITLE
" HOLE
syn keyword NAMELIST HOLE
syn keyword FDS5PA BLOCK_WIND COLOR CTRL_ID DEVC_ID EVACUATION FYI ID MESH_ID MULT_ID RGB TRANSPARENCY XB
" INIT
syn keyword NAMELIST INIT
syn keyword FDS5PA AUTO_IGNITION_TEMPERATURE CELL_CENTERED CTRL_ID DENSITY DEVC_ID DIAMETER DT_INSERT DX DY DZ & HEIGHT HRRPUV ID MASS_FRACTION & MASS_PER_TIME MASS_PER_VOLUME MULT_ID N_PARTICLES N_PARTICLES_PER_CELL PART_ID PARTICLE_WEIGHT_FACTOR &
 RADIUS SHAPE SPEC_ID TEMPERATURE UVW VOLUME_FRACTION XB XYZ &
 NUMBER_INITIAL_PARTICLES !Backwards compatability

" ISOF
syn keyword NAMELIST ISOF
syn keyword FDS5PA FYI QUANTITY SPEC_ID VALUE VELO_INDEX
" MATL
syn keyword NAMELIST MATL
syn keyword FDS5PA A ABSORPTION_COEFFICIENT ALLOW_SHRINKING ALLOW_SWELLING BETA_CHAR BOILING_TEMPERATURE COLOR CONDUCTIVITY & CONDUCTIVITY_RAMP DENSITY E EMISSIVITY FYI & GAS_DIFFUSION_DEPTH HEATING_RATE HEAT_OF_COMBUSTION HEAT_OF_REACTION ID MATL_ID NU_MATL NU_SPEC N_REACTIONS &
 N_S N_T N_O2 NU_O2 PCR POROSITY PYROLYSIS_RANGE REFERENCE_RATE REFERENCE_TEMPERATURE RGB &
 SPECIFIC_HEAT SPECIFIC_HEAT_RAMP SPEC_ID THRESHOLD_SIGN THRESHOLD_TEMPERATURE VEGETATION

" MESH
syn keyword NAMELIST MESH
syn keyword FDS5PA COLOR CYLINDRICAL EVACUATION EVAC_HUMANS EVAC_Z_OFFSET FYI ID IJK LEVEL MPI_PROCESS MULT_ID PERIODIC_MESH_IDS & RGB XB N_THREADS

" MISC
syn keyword NAMELIST MISC
syn keyword FDS5PA AGGLOMERATION AEROSOL_AL2O3 ALLOW_SURFACE_PARTICLES ALLOW_UNDERSIDE_PARTICLES ASSUMED_GAS_TEMPERATURE & ASSUMED_GAS_TEMPERATURE_RAMP & BAROCLINIC BNDF_DEFAULT CC_IBM CC_RADIATION CCVOL_LINK CC_ZEROIBM_VELO CHECK_MASS_CONSERVE 
 CNF_CUTOFF CFL_MAX CFL_MIN CFL_VELOCITY_NORM &
 CHECK_HT CHECK_REALIZABILITY CHECK_VN CLIP_MASS_FRACTION COMPUTE_CUTCELLS_ONLY &
 COMPUTE_VISCOSITY_TWICE COMPUTE_ZETA_SOURCE_TERM CONSTANT_H_SOLID CONSTANT_SPECIFIC_HEAT_RATIO &
 CORRECT_SUBGRID_TEMPERATURE COUPLED_1D3D_HEAT_TRANSFER C_DEARDORFF C_RNG C_RNG_CUTOFF C_SMAGORINSKY C_VREMAN &
 C_WALE DNS DO_IMPLICIT_CCREGION DRAG_CFL_MAX ENTHALPY_TRANSPORT &
 EVACUATION_DRILL EVACUATION_MC_MODE EVAC_PRESSURE_ITERATIONS EVAC_SURF_DEFAULT EVAC_TIME_ITERATIONS &
 EVAPORATION EXTERNAL_BOUNDARY_CORRECTION EXTINCTION_MODEL HVAC_PRES_RELAX HT3D_TEST &
 FDS5_OPTIONS FLUX_LIMITER FREEZE_VELOCITY FYI GAMMA GRAVITATIONAL_DEPOSITION &
 GRAVITATIONAL_SETTLING GVEC DT_HVAC H_F_REFERENCE_TEMPERATURE &
 HRRPUV_MAX_SMV HUMIDITY HVAC_MASS_TRANSPORT &
 IBLANK_SMV IMMERSED_BOUNDARY_METHOD INITIAL_UNMIXED_FRACTION &
 LES_FILTER_WIDTH MAX_CHEMISTRY_ITERATIONS &
 MAX_LEAK_PATHS MAXIMUM_VISIBILITY MPI_TIMEOUT &
 N_FIXED_CHEMISTRY_SUBSTEPS N_INITIAL_PARTICLE_SUBSTEPS NEAR_WALL_TURBULENCE_MODEL &
 NOISE NOISE_VELOCITY NO_EVACUATION NO_RAMPS &
 OVERWRITE PARTICLE_CFL_MAX PARTICLE_CFL_MIN PARTICLE_CFL PERIODIC_TEST PROFILING POROUS_FLOOR &
 PR PROJECTION P_INF PROCESS_ALL_MESHES RAMP_GX RAMP_GY RAMP_GZ &
 RADIATION RESEARCH_MODE RESTART RESTART_CHID RICHARDSON_ERROR_TOLERANCE &
 SC SHARED_FILE_SYSTEM SLIP_CONDITION SMOKE_ALBEDO SOLID_PHASE_ONLY SOOT_OXIDATION &
 STRATIFICATION SUPPRESSION SURF_DEFAULT TEMPERATURE_DEPENDENT_REACTION &
 TENSOR_DIFFUSIVITY TERRAIN_CASE TERRAIN_IMAGE TEST_FILTER_QUADRATURE TEXTURE_ORIGIN &
 THERMOPHORETIC_DEPOSITION THICKEN_OBSTRUCTIONS TRANSPORT_UNMIXED_FRACTION TRANSPORT_ZETA_SCHEME &
 TMPA TURBULENCE_MODEL TURBULENT_DEPOSITION TURB_INIT_CLOCK UVW_FILE &
 VEG_LEVEL_SET_COUPLED VEG_LEVEL_SET_UNCOUPLED VERBOSE VISIBILITY_FACTOR VN_MAX VN_MIN Y_CO2_INFTY Y_O2_INFTY &
 WD_PROPS WIND_ONLY

" MULT
syn keyword NAMELIST MULT
syn keyword FDS5PA DX DXB DX0 DY DY0 DZ DZ0 FYI ID I_LOWER I_UPPER J_LOWER J_UPPER K_LOWER K_UPPER N_LOWER N_UPPER
" OBST
syn keyword NAMELIST OBST
syn keyword FDS5PA ALLOW_VENT BNDF_FACE BNDF_OBST BULK_DENSITY & COLOR CTRL_ID DEVC_ID EVACUATION FYI HT3D ID INTERNAL_HEAT_SOURCE MATL_ID MESH_ID MULT_ID NOTERRAIN & OUTLINE OVERLAY PERMIT_HOLE PROP_ID REMOVABLE RGB SURF_ID SURF_ID6 SURF_IDS TEXTURE_ORIGIN THICKEN &
 TRANSPARENCY XB

" PART
syn keyword NAMELIST PART
syn keyword FDS5PA AGE BREAKUP BREAKUP_CNF_RAMP_ID BREAKUP_DISTRIBUTION BREAKUP_GAMMA_D BREAKUP_RATIO & BREAKUP_SIGMA_D CHECK_DISTRIBUTION CNF_RAMP_ID COLOR COMPLEX_REFRACTIVE_INDEX & CTRL_ID DENSE_VOLUME_FRACTION &
 DEVC_ID DIAMETER DISTRIBUTION DRAG_COEFFICIENT DRAG_LAW FREE_AREA_FRACTION FYI GAMMA_D HEAT_OF_COMBUSTION &
 HORIZONTAL_VELOCITY ID INITIAL_TEMPERATURE MASSLESS MAXIMUM_DIAMETER MINIMUM_DIAMETER MONODISPERSE &
 N_STRATA ORIENTATION PERMEABILITY PERIODIC_X PERIODIC_Y PERIODIC_Z POROUS_VOLUME_FRACTION PROP_ID QUANTITIES &
 QUANTITIES_SPEC_ID RADIATIVE_PROPERTY_TABLE REAL_REFRACTIVE_INDEX RGB RUNNING_AVERAGE_FACTOR &
 SAMPLING_FACTOR SECOND_ORDER_PARTICLE_TRANSPORT SIGMA_D SPEC_ID STATIC &
 SURFACE_TENSION SURF_ID TARGET_ONLY TURBULENT_DISPERSION VERTICAL_VELOCITY

" PRES
syn keyword NAMELIST PRES
syn keyword FDS5PA CHECK_POISSON FISHPAK_BC ITERATION_SUSPEND_FACTOR LAPLACE_PRESSURE_CORRECTION MAX_PRESSURE_ITERATIONS PRESSURE_RELAX_TIME PRESSURE_TOLERANCE RELAXATION_FACTOR 
 SCARC_METHOD   SCARC_KRYLOV   SCARC_MULTIGRID  SCARC_SMOOTH    SCARC_PRECON 
 SCARC_COARSE   SCARC_INITIAL  SCARC_ACCURACY   SCARC_DEBUG  
 SCARC_MULTIGRID_CYCLE       SCARC_MULTIGRID_LEVEL     SCARC_MULTIGRID_COARSENING   
 SCARC_MULTIGRID_ITERATIONS  SCARC_MULTIGRID_ACCURACY  SCARC_MULTIGRID_INTERPOL 
 SCARC_KRYLOV_ITERATIONS  SCARC_KRYLOV_ACCURACY 
 SCARC_SMOOTH_ITERATIONS  SCARC_SMOOTH_ACCURACY  SCARC_SMOOTH_OMEGA 
 SCARC_PRECON_ITERATIONS  SCARC_PRECON_ACCURACY  SCARC_PRECON_OMEGA 
 SCARC_COARSE_ITERATIONS  SCARC_COARSE_ACCURACY 
 SOLVER SUSPEND_PRESSURE_ITERATIONS VELOCITY_TOLERANCE

" PROF
syn keyword NAMELIST PROF
syn keyword FDS5PA FORMAT_INDEX FYI ID IOR QUANTITY XYZ
" PROP
syn keyword NAMELIST PROP
syn keyword FDS5PA ACTIVATION_OBSCURATION ACTIVATION_TEMPERATURE ALPHA_C ALPHA_E BETA_C BETA_E FED_ACTIVITY & CHARACTERISTIC_VELOCITY C_FACTOR DENSITY DIAMETER EMISSIVITY FLOW_RAMP FLOW_RATE FLOW_TAU & GAUGE_EMISSIVITY GAUGE_TEMPERATURE HEAT_TRANSFER_COEFFICIENT ID &
 INITIAL_TEMPERATURE K_FACTOR LENGTH MASS_FLOW_RATE OFFSET OPERATING_PRESSURE ORIFICE_DIAMETER P0 &
 PARTICLES_PER_SECOND &
 PARTICLE_VELOCITY PART_ID PDPA_END PDPA_HISTOGRAM  PDPA_HISTOGRAM_LIMITS PDPA_HISTOGRAM_NBINS &
 PDPA_HISTOGRAM_CUMULATIVE PDPA_INTEGRATE PDPA_M PDPA_N PDPA_NORMALIZE PDPA_RADIUS &
 PDPA_START PRESSURE_RAMP PX PXX QUANTITY RTI SMOKEVIEW_ID SMOKEVIEW_PARAMETERS SPEC_ID SPECIFIC_HEAT SPRAY_ANGLE &
 SPRAY_PATTERN_BETA SPRAY_PATTERN_MU SPRAY_PATTERN_SHAPE SPRAY_PATTERN_TABLE VELOCITY_COMPONENT &
 BEAD_EMISSIVITY BEAD_HEAT_TRANSFER_COEFFICIENT DROPLET_VELOCITY & ! Backward compatability
 BEAD_DENSITY BEAD_DIAMETER BEAD_SPECIFIC_HEAT                     ! Backward compatability

" RADI
syn keyword NAMELIST RADI
syn keyword FDS5PA ANGLE_INCREMENT BAND_LIMITS C_MAX C_MIN INITIAL_RADIATION_ITERATIONS KAPPA0 NMIEANG NUMBER_RADIATION_ANGLES & PATH_LENGTH & QR_CLIP RADIATION RADIATION_ITERATIONS RADIATIVE_FRACTION RADTMP RTE_SOURCE_CORRECTION TIME_STEP_INCREMENT &
 WIDE_BAND_MODEL MIE_MINIMUM_DIAMETER MIE_MAXIMUM_DIAMETER MIE_NDG 
 NUMBER_INITIAL_ITERATIONS ! Backward compatibility

" RAMP
syn keyword NAMELIST RAMP
syn keyword FDS5PA CTRL_ID DEVC_ID F FYI ID NUMBER_INTERPOLATION_POINTS T X Z
" REAC
syn keyword NAMELIST REAC
syn keyword FDS5PA A AUTO_IGNITION_TEMPERATURE C CHECK_ATOM_BALANCE CO_YIELD CRITICAL_FLAME_TEMPERATURE & E EPUMO2 K EQUATION FIXED_MIX_TIME FLAME_SPEED FLAME_SPEED_EXPONENT FLAME_SPEED_TEMPERATURE FORMULA FUEL & FUEL_RADCAL_ID FWD_ID FYI H HEAT_OF_COMBUSTION &
 ID IDEAL N NU N_S N_T O ODE_SOLVER RADIATIVE_FRACTION RAMP_CHI_R RAMP_FS REAC_ATOM_ERROR &
 REAC_MASS_ERROR REVERSE SOOT_H_FRACTION SOOT_YIELD &
 SPEC_ID_N_S SPEC_ID_NU TABLE_FS TAU_CHEM TAU_FLAME &
 THIRD_BODY TURBULENT_FLAME_SPEED_ALPHA TURBULENT_FLAME_SPEED_EXPONENT Y_P_MIN_EDC

" SLCF
syn keyword NAMELIST SLCF
syn keyword FDS5PA AGL_SLICE CELL_CENTERED EVACUATION FACE_CENTERED FIRE_LINE FYI ID IOR LEVEL_SET_FIRE_LINE MAXIMUM_VALUE & MESH_NUMBER MINIMUM_VALUE PART_ID PBX PBY PBZ PROP_ID QUANTITY QUANTITY2 REAC_ID SLICETYPE SMV_OFFSET SPEC_ID & VECTOR VELO_INDEX XB

" SPEC
syn keyword NAMELIST SPEC
syn keyword FDS5PA AEROSOL BACKGROUND BETA_LIQUID CONDUCTIVITY CONDUCTIVITY_LIQUID CONDUCTIVITY_SOLID COPY_LUMPED DENSITY_LIQUID DENSITY_SOLID DIFFUSIVITY ENTHALPY_OF_FORMATION EPSILONKLJ FIC_CONCENTRATION FLD_LETHAL_DOSE 
 FORMULA FYI HEAT_OF_VAPORIZATION H_V_REFERENCE_TEMPERATURE ID LUMPED_COMPONENT_ONLY &
 MASS_EXTINCTION_COEFFICIENT MASS_FRACTION MASS_FRACTION_0 MAX_DIAMETER MEAN_DIAMETER MELTING_TEMPERATURE &
 MIN_DIAMETER MW N_BINS PR_GAS PRIMITIVE RADCAL_ID &
 RAMP_CP RAMP_CP_L RAMP_D RAMP_G_F RAMP_K RAMP_MU REFERENCE_ENTHALPY REFERENCE_TEMPERATURE SIGMALJ SPEC_ID &
 SPECIFIC_HEAT SPECIFIC_HEAT_LIQUID VAPORIZATION_TEMPERATURE VISCOSITY VISCOSITY_LIQUID VOLUME_FRACTION

" SURF
syn keyword NAMELIST SURF
syn keyword FDS5PA ADIABATIC AUTO_IGNITION_TEMPERATURE & BACKING BURN_AWAY CELL_SIZE_FACTOR C_FORCED_CONSTANT C_FORCED_PR_EXP C_FORCED_RE C_FORCED_RE_EXP & C_HORIZONTAL C_VERTICAL COLOR &
 CONVECTION_LENGTH_SCALE CONVECTIVE_HEAT_FLUX CONVERT_VOLUME_TO_MASS DEFAULT &
 DT_INSERT EMISSIVITY EMISSIVITY_BACK EVAC_DEFAULT EXTERNAL_FLUX E_COEFFICIENT FIRELINE_MLR_MAX &
 FREE_SLIP FYI GEOMETRY HEAT_OF_VAPORIZATION HEAT_TRANSFER_COEFFICIENT HEAT_TRANSFER_COEFFICIENT_BACK &
 HEAT_TRANSFER_MODEL HRRPUA HT3D ID IGNITION_TEMPERATURE INNER_RADIUS INTERNAL_HEAT_SOURCE LAYER_DIVIDE &
 LEAK_PATH LENGTH MASS_FLUX MASS_FLUX_TOTAL MASS_FLUX_VAR MASS_FRACTION MASS_TRANSFER_COEFFICIENT MATL_ID 
 MATL_MASS_FRACTION MINIMUM_LAYER_THICKNESS MLRPUA N_CELLS_MAX N_LAYER_CELLS_MAX NET_HEAT_FLUX &
 NO_SLIP NPPC PARTICLE_MASS_FLUX PART_ID PLE PROFILE RADIUS RAMP_EF RAMP_MF RAMP_PART RAMP_Q RAMP_T RAMP_T_I 
 RAMP_V RAMP_V_X RAMP_V_Y RAMP_V_Z &
 RGB ROUGHNESS SPEC_ID SPREAD_RATE STRETCH_FACTOR &
 TAU_EF TAU_MF TAU_PART TAU_Q TAU_T TAU_V TEXTURE_HEIGHT TEXTURE_MAP TEXTURE_WIDTH &
 TGA_ANALYSIS TGA_FINAL_TEMPERATURE TGA_HEATING_RATE THICKNESS &
 TMP_BACK TMP_FRONT TMP_INNER TRANSPARENCY VEGETATION VEGETATION_ARRHENIUS_DEGRAD VEGETATION_CDRAG &
 VEGETATION_CHAR_FRACTION VEGETATION_ELEMENT_DENSITY VEGETATION_GROUND_TEMP VEGETATION_HEIGHT &
 VEGETATION_INITIAL_TEMP VEGETATION_LAYERS VEGETATION_LINEAR_DEGRAD VEGETATION_LOAD VEGETATION_LSET_IGNITE_TIME &
 VEG_LSET_QCON VEGETATION_MOISTURE VEGETATION_NO_BURN VEGETATION_SVRATIO VEG_LEVEL_SET_SPREAD &
 VEG_LSET_ROS_BACK VEG_LSET_ROS_FLANK VEG_LSET_ROS_HEAD VEG_LSET_WIND_EXP &
 VEG_LSET_SIGMA VEG_LSET_HT VEG_LSET_BETA VEG_LSET_ELLIPSE VEG_LSET_TAN2 VEG_LSET_ELLIPSE_HEAD &
 VEL VEL_BULK VEL_GRAD VEL_T VOLUME_FLOW WIDTH XYZ Z0 ZETA_FRONT &
 EXTERNAL_FLUX_RAMP TAU_EXTERNAL_FLUX VOLUME_FLUX ! Backwards compatability??

" TABL
syn keyword NAMELIST TABL
syn keyword FDS5PA FYI ID TABLE_DATA
" TIME
syn keyword NAMELIST TIME
syn keyword FDS5PA DT EVAC_DT_FLOWFIELD EVAC_DT_STEADY_STATE FYI LIMITING_DT_RATIO LOCK_TIME_STEP RESTRICT_TIME_STEP T_BEGIN T_END T_END_GEOM TIME_SHRINK_FACTOR WALL_INCREMENT WALL_INCREMENT_HT3D 
 TWFIN ! Backward compatibility

" TRNX
syn keyword NAMELIST TRNX
syn keyword FDS5PA CC FYI IDERIV MESH_NUMBER PC
" TRNY
syn keyword NAMELIST TRNY
syn keyword FDS5PA CC FYI IDERIV MESH_NUMBER PC
" TRNZ
syn keyword NAMELIST TRNZ
syn keyword FDS5PA CC FYI IDERIV MESH_NUMBER PC
" VENT
syn keyword NAMELIST VENT
syn keyword FDS5PA COLOR CTRL_ID DEVC_ID DYNAMIC_PRESSURE EVACUATION FYI ID IOR L_EDDY L_EDDY_IJ MB MESH_ID MULT_ID N_EDDY OUTLINE & PBX PBY PBZ PRESSURE_RAMP RADIUS REYNOLDS_STRESS RGB SPREAD_RATE SURF_ID TEXTURE_ORIGIN TMP_EXTERIOR & TMP_EXTERIOR_RAMP TRANSPARENCY UVW VEL_RMS WIND XB XYZ

" WIND
syn keyword NAMELIST WIND
syn keyword FDS5PA CORIOLIS_VECTOR DIRECTION DT_MEAN_FORCING FORCE_VECTOR FYI GROUND_LEVEL INITIALIZATION_ONLY L & LAPSE_RATE MEAN_FORCING OBUKHOV_LENGTH & POTENTIAL_TEMPERATURE_CORRECTION RAMP_DIRECTION RAMP_SPEED RAMP_FVX_T RAMP_FVY_T RAMP_FVZ_T &
 RAMP_TMP0_Z RAMP_U0_T RAMP_V0_T RAMP_W0_T RAMP_U0_Z RAMP_V0_Z RAMP_W0_Z REFERENCE_HEIGHT REFERENCE_TEMPERATURE &
 SPEED SPONGE_CELLS STRATIFICATION THETA_STAR TMP_REF U_STAR U0 V0 W0 Z_0 Z_REF

" ZONE
syn keyword NAMELIST ZONE
syn keyword FDS5PA ID LEAK_AREA LEAK_PRESSURE_EXPONENT LEAK_REFERENCE_PRESSURE XB PERIODIC
syn match hBool /\(\.TRUE\.\)\|\(\.FALSE\.\)/ contained

"Numbers of various sorts, Copied the Fortran syntax file

" Integers
syn match FDSInterger    display "\<\d\+\(_\a\w*\)\=\>"
" floating point number, without a decimal point
syn match FDSFloat    display    "\<\d\+[deq][-+]\=\d\+\(_\a\w*\)\=\>"
" floating point number, starting with a decimal point
syn match FDSNumber     display "\<\.\d\+\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
" floating point number, no digits after decimal
syn match FDSNumber    display "\<\d\+\.\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
" floating point number, D or Q exponents
syn match FDSNumber    display    "\<\d\+\.\d\+\([dq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
" floating point number
syn match FDSNumber    display    "\<\d\+\.\d\+\(e[-+]\=\d\+\)\=\(_\a\w*\)\=\>"

syn match FDSOperator    "\(\(>\|<\)=\=\|==\|/=\|=\)"

" strings, enclosed in single or double quotes
syntax region hString start=/"\|'/ end=/"\|'/ contained

" instructions - Anything that begins with & and end with /
syn region instructions start=/^\s*&/ end=/[/]/ contains=FDS4OBS,hstring,FDS5PA,NAMELIST,FDSNumber,FDSFloat,FDSInterger,FDSOperator,hBool contained

" comments: everything is a comment, unless it is an instruction, see above
syn match  comment /.*/ contains=instructions

" syntax sync
syntax sync minlines=150
syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_blank_syntax_inits")
  if version < 508
    let did_blank_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink FDS4OBS        Error
  HiLink instructions        Statement
  HiLink FDSNumber         Number
  HiLink FDSInterger        Number
  HiLink FDSFloat        Number
  HiLink hBool            Boolean
  HiLink comment        Comment
  HiLink hString        String
  HiLink FDS5PA            Identifier
  HiLink NAMELIST        PreProc
  HiLink FDSOperator            Operator

  delcommand HiLink
endif
:highlight FDSNumber ctermfg=111
let b:current_syntax = "fds"
" vim: ts=8
