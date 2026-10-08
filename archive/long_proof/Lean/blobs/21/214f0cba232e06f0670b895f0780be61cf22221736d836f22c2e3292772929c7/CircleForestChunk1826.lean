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
def state_2311384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 44)))
def hex_2311384 : String := "44420743410507414006050742434140440743420708070A070743414044420505420808440542050540070941404406064442050542080807"
theorem cover_2311384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2311384)
  decide +kernel
#print axioms cover_2311384

def state_2311441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 44)))
def hex_2311441 : String := "44420A05420A4341050A414044050A050A"
theorem cover_2311441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2311441)
  decide +kernel
#print axioms cover_2311441

def state_2311458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 44)))
def hex_2311458 : String := "400744070A"
theorem cover_2311458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2311458)
  decide +kernel
#print axioms cover_2311458

def state_2311464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 44)))
def hex_2311464 : String := "4140440542430541050943054105090540094409420606"
theorem cover_2311464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2311464)
  decide +kernel
#print axioms cover_2311464

def state_2311489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
def hex_2311489 : String := "4443424105090542410507410509434241404405430508054009440909410540094405094241400644054208054008440908414006054008440908"
theorem cover_2311489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2311489)
  decide +kernel
#print axioms cover_2311489

def state_2311548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
def hex_2311548 : String := "440543424105404405430542050505054241054044420505420A43410508080A410540440543050805"
theorem cover_2311548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2311548)
  decide +kernel
#print axioms cover_2311548

def state_2311589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
def hex_2311589 : String := "40440943090944430942070943420909424140090A0741400944090909"
theorem cover_2311589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2311589)
  decide +kernel
#print axioms cover_2311589
end Mub6.Numerical.CircleFullD0.Forest
