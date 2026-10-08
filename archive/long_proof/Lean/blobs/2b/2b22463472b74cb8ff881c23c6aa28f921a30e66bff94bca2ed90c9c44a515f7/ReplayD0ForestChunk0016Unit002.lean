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
def state_1336469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1336469 : String := "4243444005414205430509050544404142440805444340070A0A430509420544430540050505410A09094344404143444205400543050705440742054007074305444205070541434442434405054407400509430844074007084205434041444205430540050505054144080908404144420543400508070505094442440740070944070742094041090709434408054442054107054205410909400541430509054440414442430740070A0742434006090606444243400505404144074205070541440A42050705430740074107440507424305404144420506060909434007074041060741060941440A4209430906444243410905410A094341070741074405094209430909404106420943050609"
theorem cover_1336469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 273) (hex := hex_1336469)
  decide +kernel
#print axioms cover_1336469

def state_1336742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1336742 : String := "414243090A434443440A090909440A09424344410942430509094109050943444143440840420943080908440A0943080941094340420505090944410A440A0909"
theorem cover_1336742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 65) (hex := hex_1336742)
  decide +kernel
#print axioms cover_1336742

def state_1336811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1336811 : String := "41424344404108060640084144420843080808084440054105084008414344070808084344400541050A404142440508050841424443414042080542440608440543410508050A05434109084144050808440543410542080505424408080A440540054105424344050805054243440608084344400A06084408400842084344080808"
theorem cover_1336811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336811 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 131) (hex := hex_1336811)
  decide +kernel
#print axioms cover_1336811

def state_1336944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1336944 : String := "43440641440640420843084144070808420643060706440741074344060807"
theorem cover_1336944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1336944)
  decide +kernel
#print axioms cover_1336944

def state_1336977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1336977 : String := "414206400A0906"
theorem cover_1336977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336977)
  decide +kernel
#print axioms cover_1336977


end Mub6.Numerical.CircleFullD0.Forest
