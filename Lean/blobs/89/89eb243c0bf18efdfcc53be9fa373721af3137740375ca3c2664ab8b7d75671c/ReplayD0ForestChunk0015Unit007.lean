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
def state_1331557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
def hex_1331557 : String := "404344414205400944090A050A0543444142054440430941420509054306414205060540430941420544090A0543064142054443064041420506050643064041420544060705060505414205400A430A4441420543074440050707050A0544414205434440054142054443060743404142050605064005410A05054005414205434440414205444306050505414205060540054142054306440607054440054142054344064005060A054005414205434440050640050744400509050505444005074005414205434440050A0544050505054142054340054441420543444005410705050505050505"
theorem cover_1331557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 233) (hex := hex_1331557)
  decide +kernel
#print axioms cover_1331557

def state_1331791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
def hex_1331791 : String := "4344090A444142400743090709074142400843444108050844410605064043080743440908444108070842054007430907"
theorem cover_1331791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1331791)
  decide +kernel
#print axioms cover_1331791

def state_1331841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 12)))
def hex_1331841 : String := "444142440940094306414244064306400906060609064142400A4307444107420A060740094306440907420A09"
theorem cover_1331841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1331841)
  decide +kernel
#print axioms cover_1331841

def state_1331887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
def hex_1331887 : String := "41424344400941424406430640070606064041424309444007410807400841080509094142434440090640414243080809420509414243064406060606444041424344094008410806440740070A4309440708420509414243060A06064041420808420543094440054109054005410805414243444041080606400806440A40080A434406400806440A40080A42430644060543064406404142050605064344064009064440090640410809414243060A0506424306444005064005064306440640090644400741070740414243440708074344070807074142434440070A4041084205434407400541080507410A420543440A400A0A0A440740070A434440070A40410842434407400741080707430907410A420A0A0A424344070505434407400741424306070606074344094009414243054405400905050644074041424309070507414243440A40410509050A0542434406400706074306074243440640050607430907"
theorem cover_1331887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 359) (hex := hex_1331887)
  decide +kernel
#print axioms cover_1331887


end Mub6.Numerical.CircleFullD0.Forest
