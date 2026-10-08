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
def state_1632676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 19)))
def hex_1632676 : String := "4144060505"
theorem cover_1632676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1632676)
  decide +kernel
#print axioms cover_1632676

def state_1632682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 19)))
def hex_1632682 : String := "44404206434106444007050541444009060644404209094206430641064442050705400906064042060906"
theorem cover_1632682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_1632682)
  decide +kernel
#print axioms cover_1632682

def state_1632725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 19)))
def hex_1632725 : String := "44404243054105054305414440420A090540090505054042050505"
theorem cover_1632725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1632725)
  decide +kernel
#print axioms cover_1632725

def state_1632752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1632752 : String := "420644430541060506"
theorem cover_1632752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1632752)
  decide +kernel
#print axioms cover_1632752

def state_1632763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 9)))
def hex_1632763 : String := "444143420644400806404106070607434207444043410707070740434107070707074143060743420644404341050507050507"
theorem cover_1632763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1632763)
  decide +kernel
#print axioms cover_1632763

def state_1632816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
def hex_1632816 : String := "434440420808420841080940424108434408400806084108434408400842080808424106430607414344080608434442080842064008064408084408400808"
theorem cover_1632816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1632816)
  decide +kernel
#print axioms cover_1632816
end Mub6.Numerical.CircleFullD0.Forest
