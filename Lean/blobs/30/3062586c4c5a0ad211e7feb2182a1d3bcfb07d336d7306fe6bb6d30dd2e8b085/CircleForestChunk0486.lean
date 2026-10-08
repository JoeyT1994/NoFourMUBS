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
def state_277994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 18)))
def hex_277994 : String := "4244404143090943424440410943060906090942444009410843424406060642080909094143060843064244404106060608060909"
theorem cover_277994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_277994)
  decide +kernel
#print axioms cover_277994

def state_278047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_278047 : String := "410A4306420A06"
theorem cover_278047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_278047)
  decide +kernel
#print axioms cover_278047

def state_278054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 19)))
def hex_278054 : String := "40090A"
theorem cover_278054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_278054)
  decide +kernel
#print axioms cover_278054

def state_278057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 9)))
def hex_278057 : String := "4440414208094243444041084342444009080809094108434208444009060808090809410842084344060644080809"
theorem cover_278057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_278057)
  decide +kernel
#print axioms cover_278057

def state_278104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 9)))
def hex_278104 : String := "43444009060909"
theorem cover_278104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_278104)
  decide +kernel
#print axioms cover_278104

def state_278117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 18)))
def hex_278117 : String := "424440414306420706070607440606"
theorem cover_278117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_278117)
  decide +kernel
#print axioms cover_278117

def state_278137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 36 else (if j.val < 4 then 114 else 36)))
def hex_278137 : String := "4244404143064244D907060741060507440609"
theorem cover_278137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_278137)
  decide +kernel
#print axioms cover_278137

def state_278156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 36 else (if j.val < 4 then 115 else 36)))
def hex_278156 : String := "42444041434244D909094244D90909434207074205094143424405060642050905400941090744400941060609"
theorem cover_278156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_278156)
  decide +kernel
#print axioms cover_278156

def state_278201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 93) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 36)))
def hex_278201 : String := "43074244050744414008050507"
theorem cover_278201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_278201)
  decide +kernel
#print axioms cover_278201

def state_278214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 36)))
def hex_278214 : String := "41430642440540410A050506430505"
theorem cover_278214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_278214)
  decide +kernel
#print axioms cover_278214

def state_278229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 37)))
def hex_278229 : String := "4041090741430744420A060707"
theorem cover_278229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_278229)
  decide +kernel
#print axioms cover_278229

def state_278242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 18)))
def hex_278242 : String := "44404109430642440807060609"
theorem cover_278242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_278242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_278242)
  decide +kernel
#print axioms cover_278242
end Mub6.Numerical.CircleFullPrototype.Forest
