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
def state_1315663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1315663 : String := "4243440607444006414205060508430644060A"
theorem cover_1315663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1315663)
  decide +kernel
#print axioms cover_1315663

def state_1315682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_1315682 : String := "410A0A"
theorem cover_1315682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1315682)
  decide +kernel
#print axioms cover_1315682

def state_1315685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_1315685 : String := "4441420844094008434109080842080908"
theorem cover_1315685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1315685)
  decide +kernel
#print axioms cover_1315685

def state_1315708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 12)))
def hex_1315708 : String := "44414207430544404105060540070542074307444006410706400607410707"
theorem cover_1315708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1315708)
  decide +kernel
#print axioms cover_1315708

def state_1315742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1315742 : String := "444043414207070741420844400843410707080808434107074142064440434105070606064244400706074440430708430706400807404307084307410607"
theorem cover_1315742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1315742)
  decide +kernel
#print axioms cover_1315742

def state_1315807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
def hex_1315807 : String := "434105424443064006410506430740070705414244404341050808430541050840084305080542444008434142080509080844094008430508"
theorem cover_1315807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1315807)
  decide +kernel
#print axioms cover_1315807

def state_1315865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 48)))
def hex_1315865 : String := "41054244404305410507050705"
theorem cover_1315865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1315865)
  decide +kernel
#print axioms cover_1315865

def state_1315879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1315879 : String := "05"
theorem cover_1315879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1315879)
  decide +kernel
#print axioms cover_1315879
end Mub6.Numerical.CircleFullD0.Forest
