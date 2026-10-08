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
def state_2244620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
def hex_2244620 : String := "440942400743444142070607414207060744410607414206060740064344410509410642400644060706440606"
theorem cover_2244620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2244620)
  decide +kernel
#print axioms cover_2244620

def state_2244667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
def hex_2244667 : String := "434405400805444042084105430544050805400808"
theorem cover_2244667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2244667)
  decide +kernel
#print axioms cover_2244667

def state_2244689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 11)))
def hex_2244689 : String := "44404241050705050A"
theorem cover_2244689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2244689)
  decide +kernel
#print axioms cover_2244689

def state_2244699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 22)))
def hex_2244699 : String := "404207434144054007050741440940074207430541050507424308410807430541054405400905"
theorem cover_2244699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2244699)
  decide +kernel
#print axioms cover_2244699

def state_2244738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 23)))
def hex_2244738 : String := "4042074344414007080741080744414007080741400708074208434441050A084441084042074308070808"
theorem cover_2244738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2244738)
  decide +kernel
#print axioms cover_2244738

def state_2244782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
def hex_2244782 : String := "430544054042414305064344054008054440060509410543050642410543050805"
theorem cover_2244782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2244782)
  decide +kernel
#print axioms cover_2244782

def state_2244816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 11)))
def hex_2244816 : String := "44054042440541430540420805050A0505"
theorem cover_2244816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2244816)
  decide +kernel
#print axioms cover_2244816

def state_2244834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 22)))
def hex_2244834 : String := "40424305414405400605090505"
theorem cover_2244834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2244834)
  decide +kernel
#print axioms cover_2244834
end Mub6.Numerical.CircleFullD0.Forest
