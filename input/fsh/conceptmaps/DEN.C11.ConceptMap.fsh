Instance: DENC11ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C11 Clinical/Lab Evaluation ConceptMap"
Description: "Mapping between DEN.C11 Clinical/Lab Evaluation Data Elements and standard terminologies (SNOMED CT, LOINC)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C11.ConceptMap"
* version = "0.1.0"
* name = "DEN_C11_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.C11"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C11.DE2
    * display = "Hematocrit below reference range"
    * target[+]
      * code = #165414004
      * display = "Hematocrit below reference range (finding)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C11.DE3
    * display = "Hematocrit above reference range"
    * target[+]
      * code = #165413005
      * display = "Hematocrit above reference range (finding)"
      * equivalence = #equivalent
  // Evaluation 2
  * element[+]
    * code = #DEN.C11.DE6
    * display = "Rising hematocrit"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE7
    * display = "Falling hematocrit"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE8
    * display = "Normal/stable hematocrit"
    * target[+]
      * code = #409683007
      * display = "Stable hematocrit (finding)"
      * equivalence = #equivalent

  // Evaluation 3
  * element[+]
    * code = #DEN.C11.DE10
    * display = "Rising hematocrit (3)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE11
    * display = "Falling hematocrit (3)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE12
    * display = "Normal/stable hematocrit (3)"
    * target[+]
      * code = #409683007
      * display = "Stable hematocrit (finding)"
      * equivalence = #equivalent

  // Evaluation 4
  * element[+]
    * code = #DEN.C11.DE14
    * display = "Rising hematocrit (4)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE15
    * display = "Falling hematocrit (4)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE16
    * display = "Normal/stable hematocrit (4)"
    * target[+]
      * code = #409683007
      * display = "Stable hematocrit (finding)"
      * equivalence = #equivalent

  // Evaluation 5
  * element[+]
    * code = #DEN.C11.DE18
    * display = "Rising hematocrit (5)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE19
    * display = "Falling hematocrit (5)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE20
    * display = "Normal/stable hematocrit (5)"
    * target[+]
      * code = #409683007
      * display = "Stable hematocrit (finding)"
      * equivalence = #equivalent

  // Evaluation 6
  * element[+]
    * code = #DEN.C11.DE22
    * display = "Rising hematocrit (6)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE23
    * display = "Falling hematocrit (6)"
    * target[+]
      * code = #365618006
      * display = "Finding of hematocrit - packed cell volume level (finding)"
      * equivalence = #wider
      * comment = "Best Fit"
  * element[+]
    * code = #DEN.C11.DE24
    * display = "Normal/stable hematocrit (6)"
    * target[+]
      * code = #409683007
      * display = "Stable hematocrit (finding)"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $LNC
  * element[+]
    * code = #DEN.C11.DE6
    * display = "Rising hematocrit"
    * target[+]
      * code = #20570-8
      * display = "Hematocrit [Volume Fraction] of Blood by calculation"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C11.DE7
    * display = "Falling hematocrit"
    * target[+]
      * code = #20570-8
      * display = "Hematocrit [Volume Fraction] of Blood by calculation"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C11.DE8
    * display = "Normal/stable hematocrit"
    * target[+]
      * code = #20570-8
      * display = "Hematocrit [Volume Fraction] of Blood by calculation"
      * equivalence = #equivalent
