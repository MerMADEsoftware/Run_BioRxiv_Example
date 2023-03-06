This repository contains all source code material for the MerMADE 1.0 modelling software.
"MerMADE 1.0: Coupled biophysical, eco-evolutionary modelling for predicting population dynamics, movement and dispersal evolution in aquatic environments"

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


All tests include 20 replicates and simulations run for 50 years. Individuals are released from Patch 14 in all cases to explore recovery dynamics
Examples here do not include dynamic seascapes, hydrodynamic information is takes from 2004 data of the North Sea 

For any further details or explanations on parameter values, see the user manual or Descriptions.xlsx 
