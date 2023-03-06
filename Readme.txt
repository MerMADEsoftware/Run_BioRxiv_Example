This repository contains:
- all input files to reproduce the example presented in: "MerMADE 1.0: Coupled biophysical, eco-evolutionary modelling for predicting population dynamics, movement and dispersal evolution in aquatic environments"
- The executable version of the MerMADE 1.0 software to run the inputs
- R code to reproduce the figure presented in the above software note
- Instructions on how to run the example inputs and reproduce the figure

Example input files are included.

Behaviour only:
- Test1: passive, time-dependent, always competent, rho=0.9 (because always passive) with 4.5km passive buffer capture around patches
- Test2: hybrid disperser, time-dependent, always competent, rho =0.6, SL= 26 cm/s, min dvm time=20, minimum active time = 45 days
- Test3: active disperser, time-dependent, always competent, rho =0.6, SL= 26 cm/s
With Growth:
- Test4: passive disperser, size-dependent, always competent (competency at size of release 5.33mm)
- Test5: hybrid disperser, size-dependent, passive until 10mm, dvm until 26mm, always competent, rho=-0.008, SL= 1 BL/s (size dependent rho and SL)
- Test6: active disperser, size-dependent, always competent, rho=-0.008, SL= 1 BL/s (size dependent rho and SL)
Growth & Delayed competency:
- Test7: passive disperser, size-dependent, competent at 26mm, rho=0.9
- Test8: hybrid disperser, size-dependent, passive until 10mm, dvm until 26mm, competent at 26mm, rho=-0.008, SL= 1BL/s (size dependent rho and SL)
- Test9: active disperser, size-dependent, competent at 26mm, rho=-0.008, SL= 1BL/s (size dependent rho and SL)


All tests include 5 replicates and simulations run for 50 years. NOTE that in the paper, we ran 20 replicates, but in the interest of time, these input files
only run 5. You may change this if you wish.

Individuals are released from Patch 14 in all cases to explore recovery dynamics

NOTE that here, input files do not output the individual movement tracks, as these are very large files. If you wish to plot them, you can find the relevant directions
in the user manual. Be aware that these can be over 1GB files with this many individuals

Example hydrodynamic information is takes from 2004 data of the North Sea  

For any further details or explanations on parameter values, see the user manual or Descriptions.xlsx 
