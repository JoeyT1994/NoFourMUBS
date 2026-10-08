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
def state_18655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 9)))
def hex_18655 : String := "404144094209094442090542404441094305074143090943424005060542400709400509440941094306094044054109050941094406420906"
theorem cover_18655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_18655)
  decide +kernel
#print axioms cover_18655

def state_18712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 9)))
def hex_18712 : String := "4041440909444207094243404407410942070909400A0943400A09094109440909"
theorem cover_18712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_18712)
  decide +kernel
#print axioms cover_18712

def state_18746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 4)))
def hex_18746 : String := "44074340420744074140070707420744064144064007060607"
theorem cover_18746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_18746)
  decide +kernel
#print axioms cover_18746

def state_18771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 4)))
def hex_18771 : String := "4443060743404405414240440543054142070505060505064044074142434007070743050808440641420843060808"
theorem cover_18771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_18771)
  decide +kernel
#print axioms cover_18771

def state_18818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
def hex_18818 : String := "4142440909440609424406434208060806"
theorem cover_18818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_18818)
  decide +kernel
#print axioms cover_18818

def state_18835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 4)))
def hex_18835 : String := "40414244074340410907090844084340410944080A0909084142080908"
theorem cover_18835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_18835)
  decide +kernel
#print axioms cover_18835

def state_18873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
def hex_18873 : String := "4205404142050842430805430844090541054205430805"
theorem cover_18873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_18873)
  decide +kernel
#print axioms cover_18873
end Mub6.Numerical.CircleFullPrototype.Forest
