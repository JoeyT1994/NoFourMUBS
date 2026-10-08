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
def state_1330872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 58 else (if j.val < 4 then 45 else 48)))
def hex_1330872 : String := "4443064042050606434042414406430605050606404205414443064008060805424144064306050506"
theorem cover_1330872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1330872)
  decide +kernel
#print axioms cover_1330872

def state_1330913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 59 else (if j.val < 4 then 45 else 48)))
def hex_1330913 : String := "41444306404241054406080506430740080744064306404241440908060906"
theorem cover_1330913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1330913)
  decide +kernel
#print axioms cover_1330913

def state_1330945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 49)))
def hex_1330945 : String := "43420A41070942410844400543080508410844400843080808"
theorem cover_1330945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1330945)
  decide +kernel
#print axioms cover_1330945

def state_1330970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 49)))
def hex_1330970 : String := "4307424144430740080707444340420507064042054108054241070541070643074042050807410744430740424108444306400506084108090707"
theorem cover_1330970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1330970)
  decide +kernel
#print axioms cover_1330970

def state_1331029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 25)))
def hex_1331029 : String := "424140080740430A0543074442054107050541074043070807"
theorem cover_1331029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1331029)
  decide +kernel
#print axioms cover_1331029

def state_1331056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 28 else (if j.val < 4 then 23 else 24)))
def hex_1331056 : String := "4143444008090809434440054205414443400A0909434005090905400542054109054440050905"
theorem cover_1331056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1331056)
  decide +kernel
#print axioms cover_1331056

def state_1331096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 24)))
def hex_1331096 : String := "43444008420A050808"
theorem cover_1331096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1331096)
  decide +kernel
#print axioms cover_1331096

def state_1331108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 48)))
def hex_1331108 : String := "4241080541084443090743400842080808"
theorem cover_1331108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1331108)
  decide +kernel
#print axioms cover_1331108
end Mub6.Numerical.CircleFullD0.Forest
