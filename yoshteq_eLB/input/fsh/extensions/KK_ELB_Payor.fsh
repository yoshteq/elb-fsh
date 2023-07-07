Extension: KK_ELB_Payor
Id: KK_ELB_Payor
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Payor"
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "ChargeItem"
* value[x] 1.. MS
* value[x] only IdentifierIknr
* value[x].system MS
* value[x].value MS