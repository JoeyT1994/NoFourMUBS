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
def state_992372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
def hex_992372 : String := "404344420606064442410640434408064441424043064408060606084106424044080806060606424106404443064106424044430641060806060606060606"
theorem cover_992372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_992372)
  decide +kernel
#print axioms cover_992372

def state_992435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 22)))
def hex_992435 : String := "06"
theorem cover_992435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_992435)
  decide +kernel
#print axioms cover_992435

def state_992436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
def hex_992436 : String := "06"
theorem cover_992436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_992436)
  decide +kernel
#print axioms cover_992436

def state_992444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 20)))
def hex_992444 : String := "4006414344420640060742054041080608084344060606"
theorem cover_992444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_992444)
  decide +kernel
#print axioms cover_992444

def state_992468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 20)))
def hex_992468 : String := "414344420609424006410906094406420609434406420640064341440506050606"
theorem cover_992468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_992468)
  decide +kernel
#print axioms cover_992468

def state_992502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 20)))
def hex_992502 : String := "434442404109064143090707400941094305074240410943440909064108434442070908084041094309094109434409090944424006074009094208400908"
theorem cover_992502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_992502)
  decide +kernel
#print axioms cover_992502

def state_992567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 40)))
def hex_992567 : String := "4207400507"
theorem cover_992567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_992567)
  decide +kernel
#print axioms cover_992567

def state_992573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 41)))
def hex_992573 : String := "4006434144074207404341090606070707"
theorem cover_992573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_992573)
  decide +kernel
#print axioms cover_992573
end Mub6.Numerical.CircleFullD0.Forest
