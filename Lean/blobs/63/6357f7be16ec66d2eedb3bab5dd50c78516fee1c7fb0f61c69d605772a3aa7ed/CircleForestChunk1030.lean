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
def state_1547566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 82 else 86)))
def hex_1547566 : String := "4441434042444109078944414308400708088942084408084042074407060943404244078944078908400742070789"
theorem cover_1547566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1547566)
  decide +kernel
#print axioms cover_1547566

def state_1547613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 86)))
def hex_1547613 : String := "42094441090889"
theorem cover_1547613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1547613)
  decide +kernel
#print axioms cover_1547613

def state_1547620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 83 else 86)))
def hex_1547620 : String := "09"
theorem cover_1547620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547620)
  decide +kernel
#print axioms cover_1547620

def state_1547621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 87)))
def hex_1547621 : String := "410943404209890909"
theorem cover_1547621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1547621)
  decide +kernel
#print axioms cover_1547621

def state_1547630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1547630 : String := "4209440909"
theorem cover_1547630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1547630)
  decide +kernel
#print axioms cover_1547630

def state_1547635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1547635 : String := "4244090944414308094306084109434042084406050609"
theorem cover_1547635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1547635)
  decide +kernel
#print axioms cover_1547635

def state_1547658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 10)))
def hex_1547658 : String := "44410940420743414405090507094109404209434441094042070709090909"
theorem cover_1547658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1547658)
  decide +kernel
#print axioms cover_1547658

def state_1547691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 10)))
def hex_1547691 : String := "434405414005420544054305050505"
theorem cover_1547691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1547691)
  decide +kernel
#print axioms cover_1547691

def state_1547708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1547708 : String := "07"
theorem cover_1547708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547708)
  decide +kernel
#print axioms cover_1547708

def state_1547711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1547711 : String := "4244054341400542054405050505440743414009424407430905090507"
theorem cover_1547711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1547711)
  decide +kernel
#print axioms cover_1547711

def state_1547742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 42)))
def hex_1547742 : String := "07"
theorem cover_1547742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1547742)
  decide +kernel
#print axioms cover_1547742

def state_1547746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
def hex_1547746 : String := "420544054341400542050A0505"
theorem cover_1547746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1547746)
  decide +kernel
#print axioms cover_1547746

def state_1547760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 100 else (if j.val < 4 then 40 else 43)))
def hex_1547760 : String := "44054341400542054405050505"
theorem cover_1547760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1547760)
  decide +kernel
#print axioms cover_1547760

def state_1547774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 86)))
def hex_1547774 : String := "43414042054405054208080505"
theorem cover_1547774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1547774)
  decide +kernel
#print axioms cover_1547774
end Mub6.Numerical.CircleFullD0.Forest
