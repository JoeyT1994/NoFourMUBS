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
def state_2293158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2293158 : String := "4342444140064342440A0A0A06400543420544410A050505410A054441064006430A06410A054244060506"
theorem cover_2293158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2293158)
  decide +kernel
#print axioms cover_2293158

def state_2293205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
def hex_2293205 : String := "40434208440841084009084244410640064308064106400509440609430842440809440909"
theorem cover_2293205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2293205)
  decide +kernel
#print axioms cover_2293205

def state_2293245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 108 else 92)))
def hex_2293245 : String := "444140430842054407050840054308074140050805"
theorem cover_2293245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2293245)
  decide +kernel
#print axioms cover_2293245

def state_2293266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 108 else 92)))
def hex_2293266 : String := "44414043080A084043424407054441080505054308424441080505444108400508414005080541404342050A0543084208094005430805"
theorem cover_2293266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2293266)
  decide +kernel
#print axioms cover_2293266

def state_2293321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 109 else 92)))
def hex_2293321 : String := "424441400543424407054441080505050505444140064342444106400543080541060544060606400543420544414005434205060505050541400543050505"
theorem cover_2293321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2293321)
  decide +kernel
#print axioms cover_2293321

def state_2293385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 92)))
def hex_2293385 : String := "420844084108404306420844080906"
theorem cover_2293385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2293385)
  decide +kernel
#print axioms cover_2293385
end Mub6.Numerical.CircleFullD0.Forest
