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
def state_1308970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 23)))
def hex_1308970 : String := "44414240060609064142404344420609424108064109064406420606434408420841084006050840094344094109424006060909424006064006430606"
theorem cover_1308970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1308970)
  decide +kernel
#print axioms cover_1308970

def state_1309031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_1309031 : String := "424406404341420606060643050644400606404341444206064240060608060643414442050642054008050506"
theorem cover_1309031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1309031)
  decide +kernel
#print axioms cover_1309031

def state_1309077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
def hex_1309077 : String := "400A0A"
theorem cover_1309077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1309077)
  decide +kernel
#print axioms cover_1309077

def state_1309081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
def hex_1309081 : String := "4341440A070841440942400543080507440608"
theorem cover_1309081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1309081)
  decide +kernel
#print axioms cover_1309081

def state_1309100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
def hex_1309100 : String := "4341440A4240070A070A41440942404344090809434441090A4142400707070A440941094240094309060909440A4240080A08"
theorem cover_1309100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1309100)
  decide +kernel
#print axioms cover_1309100

def state_1309151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1309151 : String := "434441090A0744094109440940080A"
theorem cover_1309151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1309151)
  decide +kernel
#print axioms cover_1309151

def state_1309167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1309167 : String := "4243444042050705404243074407070707440840420844090708430707"
theorem cover_1309167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1309167)
  decide +kernel
#print axioms cover_1309167

def state_1309198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_1309198 : String := "44054041420543054405070505"
theorem cover_1309198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1309198)
  decide +kernel
#print axioms cover_1309198

def state_1309212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1309212 : String := "40414205090505"
theorem cover_1309212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1309212)
  decide +kernel
#print axioms cover_1309212
end Mub6.Numerical.CircleFullD0.Forest
