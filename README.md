# LAMIS3 - LAMISPlus ETL

This is an ETL tool built to migrate data from LAMIS3 to LAMISPlus v1.0. This tool was built using [Talend Open Studio for Big Data v7.3.1](https://www.talend.com/products/talend-open-studio/).

## Features

- Migrate data with a click
- Built for Windows and Unix
- Export summary after migration

## Components
There are various migration components available here. For a new migration, it is advisable to start with the patient_person migration before running the other migration components.
- Patient_Person Migration: This component can be found at ./A_Patient_Person/Patient_Person/Patient_Person_run[.bat/.sh]
- Patient_Visit Migration: This component can be found at ./B_Patient_Visit/Patient_Visit/Patient_Visit_run[.bat/.sh]. 
- HIV_Enrollment: This component can be found at ./C_HIV_Enrollment/HIV_Enrollment/HIV_Enrollment_run[.bat/.sh].
- Triage_Vital_Signs Migration: This component can be found at ./D_Triage_Vital_Signs/Triage_Vital_Signs/Triage_Vital_Signs_run[.bat/.sh]. 
- HIV_ART_Clinical Migration: This component can be found at ./E_HIV_ART_Clinical/HIV_ART_Clinical/HIV_ART_Clinical_run[.bat/.sh].
- HIV_ART_Pharmacy Migration: This component can be found at ./F_HIV_ART_Pharmacy/HIV_ART_Pharmacy/HIV_ART_Pharmacy_run[.bat/.sh].
- Laboratory Migration: This component can be found at ./G_Laboratory/Laboratory/Laboratory_run[.bat/.sh].
- Biometric Migration: This component can be found at ./H_Biometric/Biometric/Biometric_run[.bat/.sh].
- EAC Migration: This component can be found at ./I_EAC/EAC/EAC_run[.bat/.sh]
- HTS Migration: This component can be found at ./J_HTS/HTS/HTS_run[.bat/.sh]
- HIV_Status_Tracker Migration: This component can be found at ./K_HIV_Status_Tracker/HIV_Status_Tracker/HIV_Status_Tracker_run[.bat/.sh]


## Installation

To install, run the .bat/.sh file.

## How to change context parameters
If you want to change individual parameters in the context selection, edit the .bat/.sh file and add the following setting according to your need:

```sh
--context_param LAMISPlus_Login=postgres  
--context_param LAMISPlus_Password=postgres  
--context_param LAMISPlus_Database=lamisplus  
--context_param LAMIS3_Login=postgres  
--context_param LAMIS3_Password=postgres  
--context_param LAMIS3_Database=lamis3
```

## License

MIT