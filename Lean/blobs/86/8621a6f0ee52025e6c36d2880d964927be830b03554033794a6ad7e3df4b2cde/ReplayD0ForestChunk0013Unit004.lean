import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1309166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1309166 : String := "4142434440420507054042430744070707074408404208440907084307074243440540414205430544050705054440414205090505404142440843424405404108050544404108050540410705054208440840410843440842084107404305080508084443400941070509434440410742430544050707410742050740070744400941084208094041074243440907090741074243440840070508074244054305414205444043050805404305444108064142084043440841080508084205404305060505054443054140090506434144400A05404205070505414440424341090509094205094042434441420509054142404305440507050742050A444109420609414240090909424043440641090506050A0A4243054441080541404205090505434405410705440941090A44400A0540424305414406420606060A42050A414208444305084340444107050705404408410742080708420544054305404144054205050505434407404107430744070707444009410705404144090744420A0A0A414407074442430505064243404107050540414409424305440907070A41440507054307400A07"
theorem cover_1309166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 22) (count := 427) (hex := hex_1309166)
  decide +kernel
#print axioms cover_1309166

def state_1309595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1309595 : String := "424307074344070A07"
theorem cover_1309595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1309595)
  decide +kernel
#print axioms cover_1309595

def state_1309606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_1309606 : String := "444107424305444041070505050707"
theorem cover_1309606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1309606)
  decide +kernel
#print axioms cover_1309606

def state_1309623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_1309623 : String := "424440430742444107400A0A070743424441074043054244410609070743054205444107050507074244410A4043420A4441070A070A43420A4441080A0A0A4107400A434209070A4441074043074442410540050A0507434442410740074305440807070744424108400A08410740074307094241070A0741074007074007074440070707"
theorem cover_1309623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 133) (hex := hex_1309623)
  decide +kernel
#print axioms cover_1309623

def state_1309759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_1309759 : String := "43414244430940084209444107080707074209084142444043420A08054342440A094441400A0A08410708420A44050A400A43090A44400543440807054007430708424440084308060808"
theorem cover_1309759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 75) (hex := hex_1309759)
  decide +kernel
#print axioms cover_1309759


end Mub6.Numerical.CircleFullD0.Forest
