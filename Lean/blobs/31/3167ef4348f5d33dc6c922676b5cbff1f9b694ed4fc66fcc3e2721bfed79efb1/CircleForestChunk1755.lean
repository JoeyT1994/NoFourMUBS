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
def state_2294322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
def hex_2294322 : String := "42444107404342444107434042080707400A0741074307400A07074244410A400A430A0A410A0A0A4307424441074043070707070741074043070A0707"
theorem cover_2294322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2294322)
  decide +kernel
#print axioms cover_2294322

def state_2294385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
def hex_2294385 : String := "41400642430706074042430A06064243444107404243440A07060A424307070741074042430707070744410640064342440606060641064006094307440606"
theorem cover_2294385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2294385)
  decide +kernel
#print axioms cover_2294385

def state_2294448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 47)))
def hex_2294448 : String := "41400907400A4243070907"
theorem cover_2294448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2294448)
  decide +kernel
#print axioms cover_2294448

def state_2294459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
def hex_2294459 : String := "44410640060707"
theorem cover_2294459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2294459)
  decide +kernel
#print axioms cover_2294459

def state_2294468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_2294468 : String := "424340094105054009410807434009054009410509"
theorem cover_2294468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_2294468)
  decide +kernel
#print axioms cover_2294468

def state_2294491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_2294491 : String := "44404142074344060644094140090606060606"
theorem cover_2294491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_2294491)
  decide +kernel
#print axioms cover_2294491

def state_2294512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_2294512 : String := "414207434409414007420643064409060744094140074207440943414009060641400709070707"
theorem cover_2294512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_2294512)
  decide +kernel
#print axioms cover_2294512

def state_2294551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_2294551 : String := "414243064406064344060644404108060640414206440806060606"
theorem cover_2294551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2294551)
  decide +kernel
#print axioms cover_2294551
end Mub6.Numerical.CircleFullD0.Forest
