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
def state_1005042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 45)))
def hex_1005042 : String := "41084044434142084044430607070642400A0840440A0A4443410642400A060641080A43060841080A434108420840070808444341064208060808"
theorem cover_1005042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1005042)
  decide +kernel
#print axioms cover_1005042

def state_1005101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
def hex_1005101 : String := "4106404443424106404443060A0706064241400706400A44434208060843060841064044430607060643064241064007060606"
theorem cover_1005101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1005101)
  decide +kernel
#print axioms cover_1005101

def state_1005152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_1005152 : String := "444306424106404443070743060806064306420806"
theorem cover_1005152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1005152)
  decide +kernel
#print axioms cover_1005152

def state_1005173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_1005173 : String := "404443064241064044050606060606"
theorem cover_1005173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1005173)
  decide +kernel
#print axioms cover_1005173

def state_1005192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 44)))
def hex_1005192 : String := "410843404441080A080808"
theorem cover_1005192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1005192)
  decide +kernel
#print axioms cover_1005192

def state_1005204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 44)))
def hex_1005204 : String := "43404442084108434044420806080608080808"
theorem cover_1005204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1005204)
  decide +kernel
#print axioms cover_1005204

def state_1005227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 74 else (if j.val < 4 then 54 else 88)))
def hex_1005227 : String := "41434044434208410805080A4408080843400A44070A0A"
theorem cover_1005227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1005227)
  decide +kernel
#print axioms cover_1005227

def state_1005250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 75 else (if j.val < 4 then 54 else 88)))
def hex_1005250 : String := "414340444243050A0542434108050843050A444243410605084305410505420806400A0843400544054243050A05400A440A0A"
theorem cover_1005250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1005250)
  decide +kernel
#print axioms cover_1005250
end Mub6.Numerical.CircleFullD0.Forest
