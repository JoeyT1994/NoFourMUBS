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
def state_961455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 221)))
def hex_961455 : String := "43404106070840094108420808"
theorem cover_961455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_961455)
  decide +kernel
#print axioms cover_961455

def state_961469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 220)))
def hex_961469 : String := "434007414244050707424405050540414207070741424443400741C7420A05400A41C70A430740070844430740074107070742440A43070A440707"
theorem cover_961469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_961469)
  decide +kernel
#print axioms cover_961469

def state_961528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 221)))
def hex_961528 : String := "4307400741420807420707"
theorem cover_961528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_961528)
  decide +kernel
#print axioms cover_961528

def state_961539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 111)))
def hex_961539 : String := "43064006414208064208440706"
theorem cover_961539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_961539)
  decide +kernel
#print axioms cover_961539

def state_961552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 55)))
def hex_961552 : String := "44430640064142C707424407070706"
theorem cover_961552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_961552)
  decide +kernel
#print axioms cover_961552

def state_961570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 110)))
def hex_961570 : String := "404107074142440543054006050705"
theorem cover_961570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_961570)
  decide +kernel
#print axioms cover_961570

def state_961586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961586 : String := "4142440A07070A"
theorem cover_961586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_961586)
  decide +kernel
#print axioms cover_961586

def state_961594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 178) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961594 : String := "424443400A41420505050A43400741420807424405070740414209070A414209440A07420A0A4443400705400741420A070A43074007410707"
theorem cover_961594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_961594)
  decide +kernel
#print axioms cover_961594

def state_961651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 179) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961651 : String := "42440A434007050A440A07"
theorem cover_961651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_961651)
  decide +kernel
#print axioms cover_961651

def state_961662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 111)))
def hex_961662 : String := "4340064106074007414244434006084007080807424443074007414208070A0707"
theorem cover_961662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_961662)
  decide +kernel
#print axioms cover_961662

def state_961695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 55)))
def hex_961695 : String := "4443074007414207070707"
theorem cover_961695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_961695)
  decide +kernel
#print axioms cover_961695
end Mub6.Numerical.CircleFullD0.Forest
