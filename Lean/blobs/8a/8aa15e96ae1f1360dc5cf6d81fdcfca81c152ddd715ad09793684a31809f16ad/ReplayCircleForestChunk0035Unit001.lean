import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_288380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
def hex_288380 : String := "414240430A440606430A08404344424140430A4408060A40060A41404344420A050944424108434006080809094344420A41050A0A4408084043444206414005430544420A05054006430A0606444206410906064344420A410A0A0A4442410840060A41404344420A410840430508080A080840434442410A064140430A09430A4408084006430A44A906064442064140090840064344080605064344420A410A0A0A4408084206410A40060A4206410A06444241080641400908404344420609060643444208410840434408060808080842060943444241080A41430A08430A404442084108430A0808080A4408084240060540434441420640064344420641400607060644420541400643440506050506060644414205400643440506050506434441420543400A0A4044054205410A050505410A06440541420544050605"
theorem cover_288380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 321) (hex := hex_288380)
  decide +kernel
#print axioms cover_288380

def state_288701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
def hex_288701 : String := "44414205400708054142084044080808420540444341420540060505050605"
theorem cover_288701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_288701)
  decide +kernel
#print axioms cover_288701

def state_288732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
def hex_288732 : String := "43444109054142084344080808420543444041420543090505050A05440808"
theorem cover_288732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_288732)
  decide +kernel
#print axioms cover_288732

def state_288763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_288763 : String := "41420844404342084108444009080608080842444043060808064440434142064440060A060641084206064341080A08400608"
theorem cover_288763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_288763)
  decide +kernel
#print axioms cover_288763

def state_288814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_288814 : String := "404142430506434440050505444006420609054243060843444005410506054409054142430A44060A43440A0544420A4440090A40080842080842430844080643440A0508"
theorem cover_288814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 69) (hex := hex_288814)
  decide +kernel
#print axioms cover_288814

def state_288884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
def hex_288884 : String := "44404142434440420509090A44050A43444041090A050A444043410542050705050A424344050A440540410A050543444041420543050A05050A44404143420544050505430505054041430A0743440506054105054142430A44050A430A44050A424344050A44050A4344050A0540414243440A07440740424307414440420807070844074042080707070743440A07074243440A40074107074440070A0743440A07444041074306074107430A07074142430A440A07430A440A074243440A4108420A08440A0743440A08440A41074340070807"
theorem cover_288884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 213) (hex := hex_288884)
  decide +kernel
#print axioms cover_288884

def state_289099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_289099 : String := "414243440540050544400542414344054240054305070507430544054207050540094244414342400544430509090509090909434405050542434440410542430544080505410542434408054441424005050508410542400843054408060543050540054105424305444105070505444009414243440509440A09054243444142400543444241050A0542410543054005440A0905440A090542400A4344410A0841424308400644080808080A0A41094240094344410908060909440A0943440A050A094344404105430505410543054205050544400541050A05"
theorem cover_289099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 219) (hex := hex_289099)
  decide +kernel
#print axioms cover_289099


end Mub6.Numerical.CircleFullPrototype.Forest
