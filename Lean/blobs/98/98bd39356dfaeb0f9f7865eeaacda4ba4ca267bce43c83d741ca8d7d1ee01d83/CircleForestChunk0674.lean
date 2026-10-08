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
def state_1462572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
def hex_1462572 : String := "4008434442414008434442084180400843440707070808400843444205090808414009070942080A4442080708"
theorem cover_1462572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 45) (hex := hex_1462572)
  decide +kernel
#print axioms cover_1462572

def state_1462617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
def hex_1462617 : String := "404344090808434442414008434405080505094208414008430A0840084344090808440908"
theorem cover_1462617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1462617)
  decide +kernel
#print axioms cover_1462617

def state_1462654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
def hex_1462654 : String := "08"
theorem cover_1462654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462654)
  decide +kernel
#print axioms cover_1462654

def state_1462655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 13)))
def hex_1462655 : String := "08"
theorem cover_1462655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462655)
  decide +kernel
#print axioms cover_1462655

def state_1462656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1462656 : String := "42084043440908084344414205400943440542050905054108420540084341080505440508"
theorem cover_1462656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_1462656)
  decide +kernel
#print axioms cover_1462656

def state_1462693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1462693 : String := "4008434142070A424440074341070707074440430A0843410A4244400A430A4107070A0A4142080A420844400843410A42080A08080A08"
theorem cover_1462693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 55) (hex := hex_1462693)
  decide +kernel
#print axioms cover_1462693

def state_1462748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1462748 : String := "44400844090808"
theorem cover_1462748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1462748)
  decide +kernel
#print axioms cover_1462748

def state_1462758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1462758 : String := "4243060906"
theorem cover_1462758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1462758)
  decide +kernel
#print axioms cover_1462758

def state_1462765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_1462765 : String := "44414006430644064206060641400A430A4244410A4006430644060A0A0A40064306424406410A0606"
theorem cover_1462765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_1462765)
  decide +kernel
#print axioms cover_1462765
end Mub6.Numerical.CircleFullD0.Forest
