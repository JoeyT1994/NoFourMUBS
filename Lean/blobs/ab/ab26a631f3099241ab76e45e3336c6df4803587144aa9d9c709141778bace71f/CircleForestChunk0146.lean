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
def state_56380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_56380 : String := "4340440A41420A43414044080708404408420707080A420A434140440A420A43410740440505050A0A40440A4205430505050A0A0A"
theorem cover_56380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 53) (hex := hex_56380)
  decide +kernel
#print axioms cover_56380

def state_56436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 26)))
def hex_56436 : String := "41420808424344084108420A080A4309444108074142080809"
theorem cover_56436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_56436)
  decide +kernel
#print axioms cover_56436

def state_56462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
def hex_56462 : String := "424341424006060642404408060840060641420A06420A400606430606"
theorem cover_56462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_56462)
  decide +kernel
#print axioms cover_56462

def state_56493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
def hex_56493 : String := "4142404443080A43410640060641064006064408430606404443084106090644080642404443090A4309414044420A0606440A054044420509050544050509"
theorem cover_56493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_56493)
  decide +kernel
#print axioms cover_56493

def state_56556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 27)))
def hex_56556 : String := "41420A40440A060A4240440A43410A40440A080A0A0A40440A434106424044090609064106420A060A"
theorem cover_56556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_56556)
  decide +kernel
#print axioms cover_56556

def state_56597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 27)))
def hex_56597 : String := "430941424006060642404409060909"
theorem cover_56597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_56597)
  decide +kernel
#print axioms cover_56597

def state_56612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_56612 : String := "44084108420A43084041060908"
theorem cover_56612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_56612)
  decide +kernel
#print axioms cover_56612
end Mub6.Numerical.CircleFullPrototype.Forest
