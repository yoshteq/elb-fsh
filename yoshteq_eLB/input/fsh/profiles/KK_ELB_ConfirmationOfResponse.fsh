Profile: KK_ELB_ConfirmationOfResponse
Parent: Parameters
Id: KK_ELB_ConfirmationOfResponse
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ConfirmationOfResponse"
* ^version = "1.0.0"
* ^status = #draft
* meta 1.. MS
* meta.profile 1..1 MS
* implicitRules ..0
* language ..0
* parameter 1.. MS
* parameter.id ..0
* parameter.name = "confirmationBundleUuid" (exactly)
* parameter.name MS
* parameter.value[x] 1.. MS
* parameter.value[x] only uuid
* parameter.resource ..0
* parameter.part ..0