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
def state_58781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 16)))
def hex_58781 : String := "4340410842440743084041080607064108420505404109424409434009410707090A410A42070A"
theorem cover_58781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_58781)
  decide +kernel
#print axioms cover_58781

def state_58821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 46 else 17)))
def hex_58821 : String := "08"
theorem cover_58821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_58821)
  decide +kernel
#print axioms cover_58821

def state_58824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 36) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
def hex_58824 : String := "42444308090808"
theorem cover_58824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_58824)
  decide +kernel
#print axioms cover_58824

def state_58831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
def hex_58831 : String := "4244434041084244430809080841084244070808400941094244074307090943084041054244430805050841084244430840094106420608080808"
theorem cover_58831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_58831)
  decide +kernel
#print axioms cover_58831

def state_58890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 47 else 17)))
def hex_58890 : String := "41084244434041084207080740410A42070A07430840410842444307060808410842060808"
theorem cover_58890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_58890)
  decide +kernel
#print axioms cover_58890

def state_58928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 16)))
def hex_58928 : String := "43404142440543054006050505054041424443050943404142440507060505400941090544430509430640064109054205054142050505"
theorem cover_58928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_58928)
  decide +kernel
#print axioms cover_58928

def state_58984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 46 else 17)))
def hex_58984 : String := "404142444306400641424405080505430640060806420A0641424405080805"
theorem cover_58984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_58984)
  decide +kernel
#print axioms cover_58984
end Mub6.Numerical.CircleFullPrototype.Forest
