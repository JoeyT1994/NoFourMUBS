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
def state_1329647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1329647 : String := "4240434407414205090505434441420506054142054406400906054407414205434407400507070540430907430644064142434406400706070707"
theorem cover_1329647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1329647)
  decide +kernel
#print axioms cover_1329647

def state_1329707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
def hex_1329707 : String := "44064142060606"
theorem cover_1329707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1329707)
  decide +kernel
#print axioms cover_1329707

def state_1329715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1329715 : String := "4142060606"
theorem cover_1329715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1329715)
  decide +kernel
#print axioms cover_1329715

def state_1329723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 11)))
def hex_1329723 : String := "444042060606404241444306400A0643404241070606064042090A0944064306404241440609050606414406430540420A05050606"
theorem cover_1329723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1329723)
  decide +kernel
#print axioms cover_1329723

def state_1329776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 11)))
def hex_1329776 : String := "444042410A4306070A064042410A43440A400A090A410A434406400A060A0A"
theorem cover_1329776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1329776)
  decide +kernel
#print axioms cover_1329776

def state_1329807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1329807 : String := "4306440640410A420A0606"
theorem cover_1329807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1329807)
  decide +kernel
#print axioms cover_1329807

def state_1329818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1329818 : String := "42430644064041424344054005060543064406400706060606"
theorem cover_1329818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1329818)
  decide +kernel
#print axioms cover_1329818

def state_1329843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1329843 : String := "4243444005410605404142440506060A410642440506064405400541420506054306440640414306440542054005060606"
theorem cover_1329843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1329843)
  decide +kernel
#print axioms cover_1329843
end Mub6.Numerical.CircleFullD0.Forest
