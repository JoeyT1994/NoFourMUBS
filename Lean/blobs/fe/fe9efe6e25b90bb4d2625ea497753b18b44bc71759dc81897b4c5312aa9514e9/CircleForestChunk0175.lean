import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_979417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_979417 : String := "434440424307074307070709444042444143094206050A09440A410707424441430A4042090542094405090A094441430705070707"
theorem cover_979417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_979417)
  decide +kernel
#print axioms cover_979417

def state_979470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_979470 : String := "434440430A0707400907440707"
theorem cover_979470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_979470)
  decide +kernel
#print axioms cover_979470

def state_979484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_979484 : String := "4344400A4107074041090941074207430907444041424407070A42070707400907"
theorem cover_979484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_979484)
  decide +kernel
#print axioms cover_979484

def state_979517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_979517 : String := "4344400A41070A40414309090A414342094440090709074342440A09440A40094109080A440A400A07"
theorem cover_979517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_979517)
  decide +kernel
#print axioms cover_979517

def state_979562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_979562 : String := "41424307440807430844070708"
theorem cover_979562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_979562)
  decide +kernel
#print axioms cover_979562

def state_979578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_979578 : String := "440807"
theorem cover_979578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_979578)
  decide +kernel
#print axioms cover_979578

def state_979582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_979582 : String := "40414308424405410708080841430A42440A40414307440A07430844424308050542430A40410A080A0A0A0A4308424440080A40084308410A0808"
theorem cover_979582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_979582)
  decide +kernel
#print axioms cover_979582

def state_979642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_979642 : String := "41074307444243084008080807"
theorem cover_979642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_979642)
  decide +kernel
#print axioms cover_979642

def state_979656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_979656 : String := "4307444240410743074442430740070A07070A0A07"
theorem cover_979656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_979656)
  decide +kernel
#print axioms cover_979656

def state_979678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
def hex_979678 : String := "440A07"
theorem cover_979678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_979678)
  decide +kernel
#print axioms cover_979678
end Mub6.Numerical.CircleFullD0.Forest
