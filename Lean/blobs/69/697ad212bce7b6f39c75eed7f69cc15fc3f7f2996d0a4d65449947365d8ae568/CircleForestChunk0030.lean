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
def state_944709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
def hex_944709 : String := "404205444105434005420505050542444105070544410543404205440705070505"
theorem cover_944709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_944709)
  decide +kernel
#print axioms cover_944709

def state_944742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
def hex_944742 : String := "43400642410644430640060A0606404205410506424105094105444340060A0505"
theorem cover_944742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_944742)
  decide +kernel
#print axioms cover_944742

def state_944779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
def hex_944779 : String := "41444342400A05400605420A40084408414342080608084306424006414443060906440A06400641064443060A06440A434240060506420A400641440A060A"
theorem cover_944779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_944779)
  decide +kernel
#print axioms cover_944779

def state_944842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
def hex_944842 : String := "4144430540420806424405410605440506064405430540064241060506"
theorem cover_944842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_944842)
  decide +kernel
#print axioms cover_944842

def state_944874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
def hex_944874 : String := "43054042440A4143420505420A400A44050705440541430540420808424405410705440505054244054143050705440505"
theorem cover_944874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_944874)
  decide +kernel
#print axioms cover_944874

def state_944924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 53)))
def hex_944924 : String := "4042414405060541060542414405050505"
theorem cover_944924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_944924)
  decide +kernel
#print axioms cover_944924
end Mub6.Numerical.CircleFullD0.Forest
