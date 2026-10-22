ValueSet: DENC71DE1
Id: DEN.C7.1.DE1
Title: "Starts Hydration ValueSet"
Description: "ValueSet for hydration status corresponding to DEN.C7.1.DE1 in WHO Dengue DAK"
* ^status = #draft
* ^experimental = true
* include DENConcepts#DEN.C7.1.DE2 "Oral hydration"
* include DENConcepts#DEN.C7.1.DE3 "IV hydration"
* include DENConcepts#DEN.C7.1.DE4 "No hydration"

ValueSet: DENC72DE1
Id: DEN.C7.2.DE1
Title: "Define Management ValueSet"
Description: "ValueSet for clinical management category corresponding to DEN.C7.2.DE1 in WHO Dengue DAK"
* ^status = #draft
* ^experimental = true
* include DENConcepts#DEN.C7.2.DE2 "Ambulatory care"
* include DENConcepts#DEN.C7.2.DE3 "In-Hospital care"
* include DENConcepts#DEN.C7.2.DE4 "Hospital care"
* include DENConcepts#DEN.C7.2.DE5 "Intensive care (ICU)"

