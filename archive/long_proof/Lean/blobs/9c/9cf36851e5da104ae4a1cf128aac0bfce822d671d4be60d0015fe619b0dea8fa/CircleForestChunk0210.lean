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
def state_71789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
def hex_71789 : String := "43404142444340414208080505404142444305400A0508440A4308400A080A41080508440A4309400908424405050A41420844050805B8"
theorem cover_71789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_71789)
  decide +kernel
#print axioms cover_71789

def state_71844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_71844 : String := "4244430540410905054305400605440A43054041424405050A0505"
theorem cover_71844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_71844)
  decide +kernel
#print axioms cover_71844

def state_71871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_71871 : String := "4142444305414009050508444305410605430541404208060505420505"
theorem cover_71871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_71871)
  decide +kernel
#print axioms cover_71871

def state_71900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_71900 : String := "43404108070840414442430840060843404108070840414442430840070843094009090707410844420543054007050707074108440507"
theorem cover_71900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_71900)
  decide +kernel
#print axioms cover_71900

def state_71956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_71956 : String := "43400A41060540414244430A400A0643400A41060A40414244430A400A064309400909060A41064244054305400A0506060A4106420506"
theorem cover_71956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_71956)
  decide +kernel
#print axioms cover_71956
end Mub6.Numerical.CircleFullPrototype.Forest
