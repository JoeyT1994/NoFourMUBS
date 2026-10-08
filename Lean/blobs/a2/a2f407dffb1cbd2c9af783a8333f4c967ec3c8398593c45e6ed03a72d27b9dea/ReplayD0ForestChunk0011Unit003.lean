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
def state_1037699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_1037699 : String := "44400A410A0A4041420A43440A05050A41424344400A41060A4041090A4109420943440A400909090A434440410A0A4142434406400A06064344064041440A050A41060606420A0A40410542050541424344400541050605054344400541054205050505424344400A41060640054105420505054344400A41420643070542060A4005410542050505440A054243440A400A420A410A0A0A4344400A410A0A40410A0A414243440A400A41420A0A0A0A43440A400741420505420A070A4243440840084208080A4344084008090A0A"
theorem cover_1037699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 207) (hex := hex_1037699)
  decide +kernel
#print axioms cover_1037699

def state_1037906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1037906 : String := "434440410A090940074142434409074440074142430744090707090743070742430944094007090944400A41430A0A0A40414342440A07070A0A4143424440410A0A414342440A4007414244060607420607440907420A0A43420A090A40410707414307420507430742050744400A4143070A090742440A05440A400A414307050A4342440A4041070A4143070A43090A44094007070A"
theorem cover_1037906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 151) (hex := hex_1037906)
  decide +kernel
#print axioms cover_1037906

def state_1038057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1038057 : String := "4243440840084208414308440840080808444042080842430807084042430805430805424341440840084243080808080A43414408400842080808410A054309440A400A434142440840080909080A"
theorem cover_1038057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 79) (hex := hex_1038057)
  decide +kernel
#print axioms cover_1038057

def state_1038136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
def hex_1038136 : String := "4440414243440707440707434441074308074143440707074344070707074243440807440807434408094440074107080741424344404107080A400741070A444041074207070A4007410742070743444041434207444105080707430842080A41434207444041050841070807420744050543080A4041430A074308070A440A074243440840420807424305440808084440080A404244080707424441430840070A08410743084007420807440A0743440A400808440A40070A40414243444142430A070A4207430A07410A054441424407070A074142070606434441430A0A430A4407060A44410A0606424344420543050705074344430A0606064142434440410A42070A410742070A40410A420505410A42430A050A44074041070707430A4440410707070A4243444042054305074207430807400542434105050543050544070743444043084407060A0A440706"
theorem cover_1038136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 337) (hex := hex_1038136)
  decide +kernel
#print axioms cover_1038136


end Mub6.Numerical.CircleFullD0.Forest
