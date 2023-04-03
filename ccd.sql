-- to find the patient id
select * from PMPTXFT where VAccNo = 10454         --account number

--Provider table
select * from PMPRVFT

-- get userid from this query
select * from CMUSXHD where VUNAME = 'rmlive'

--put userid to get allergy list of specific user
select * from Allergy_List where iUserID = 15873 and iPatID = 10454

select * from Allergy_List order by dDate desc

--to immunization table 
select * from Imm_Patient 

-- for specific user or patient
select * from Imm_Patient where iUserID = 15873 and iPatID = 10454

-- for updated immunization, table would be
select * from imm_patient_log where iUserID = 15873 and iPatID = 10454

--for latest update in immunization
select dActionDate, * from imm_patient_log where iUserID = 15873 and iPatID = 10454

-- for prescription
select * from PatPrescription where iUserID = 15873 and iPatID = 10454

--as new entry would be appear as we prescribed again
select dPrescribeDate, * from PatPrescription

--care team members
select * from PMPRVFT where iUserID = 15873    --dRegdate (registration) , dLUdate(update)

--MEDICATION
select * from PatMedications where iUserID = 15873 and iPatID = 10454  --dcreatedate (on every new entry or update)

--Smoking Status
select * from PMPSHFT where iUserID = 15873 and iPatID = 10454  --DCreateddate(new entry on update)

--implantable device
select * from Patient_ImplantableDevice_log where UserID = 15873 and PatientID = 10454   -- updateDate

--Goals 
select * from CCPGoal where CreateUserID = 15873
select  CreateUserID , * from CCPGoal where CreateUserID = 15873  -- if new goal is created
select  LastUpdateUserID , * from CCPGoal where CreateUserID = 15873 -- if goal is updated

--Health Concerns
select * from CustomForm where iPatID = 10454 
select  dModifiedDate ,  * from CustomForm where iPatID = 10454

--Patient Diagnosis
select * from Patient_Diagnosis where PatientID = 10454
select UpdatedBy , * from Patient_Diagnosis where PatientID = 10454
select UpdatedOn , * from Patient_Diagnosis where PatientID = 10454

--vital sign
select * from VitalSigns
select intModifiedBy, * from VitalSigns where iPatID = 10454
select * from CMUSXHD where IUSERID=15873 and VUNAME = 'rmlive'  --intModifiedBy = IUSERID

--Patient Demographics
select * from PMPTXFT WHERE VAccNo = 123456789101945
select * from PMPTXFT WHERE VAccNo = 123456789101945
select dLUdate , * from PMPTXFT WHERE VAccNo = 123456789101945

--for lab order and result
select * from OrderResultHeader order by iOrderID desc
select * from OrderResultHeader where iOrderID=13375 
select * from OrderResultDetails where iOrderID = 13375
select * from OrderResultComponents where iOrderDetailID = 21067

--for emessages 
select * from eMessageDeletedLogs
select * from eMessages order by ieMessageID desc
select * from eMessages order by ieMessageID desc
select * from DeleteMessagesStatus
select * from eMessagesActionLog

select * from eMessages_QA














