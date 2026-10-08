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
def state_1528504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
def hex_1528504 : String := "42444106434006424406050A0608440A08"
theorem cover_1528504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1528504)
  decide +kernel
#print axioms cover_1528504

def state_1528522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 92 else (if j.val < 4 then 35 else 44)))
def hex_1528522 : String := "44414340060906434042444109430505410605440A0A42094441094308090940420944060609410943404209440A070909"
theorem cover_1528522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1528522)
  decide +kernel
#print axioms cover_1528522

def state_1528571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 93 else (if j.val < 4 then 35 else 44)))
def hex_1528571 : String := "444143070643400A42440A070740424406060A42440909440A0741074307400607"
theorem cover_1528571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1528571)
  decide +kernel
#print axioms cover_1528571

def state_1528606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 44)))
def hex_1528606 : String := "42440A0A0A"
theorem cover_1528606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1528606)
  decide +kernel
#print axioms cover_1528606

def state_1528611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 44)))
def hex_1528611 : String := "42444143400A4206064042440A050A4244084143400A064005090544080A43064005064143400A074042050A4244410705070743064005420505440A0A"
theorem cover_1528611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1528611)
  decide +kernel
#print axioms cover_1528611

def state_1528673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
def hex_1528673 : String := "42440505440A08"
theorem cover_1528673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1528673)
  decide +kernel
#print axioms cover_1528673

def state_1528681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 92 else (if j.val < 4 then 35 else 44)))
def hex_1528681 : String := "44414340420544050542444143080505054441430840050805414340050A05054005420544050505414340054205444143070505050505"
theorem cover_1528681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1528681)
  decide +kernel
#print axioms cover_1528681
end Mub6.Numerical.CircleFullD0.Forest
