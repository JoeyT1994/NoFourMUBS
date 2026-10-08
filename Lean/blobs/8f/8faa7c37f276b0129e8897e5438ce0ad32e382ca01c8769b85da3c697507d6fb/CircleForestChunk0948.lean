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
def state_1528000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 89)))
def hex_1528000 : String := "414307094340424441074340050705070707404209444109050709"
theorem cover_1528000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1528000)
  decide +kernel
#print axioms cover_1528000

def state_1528027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 35 else 44)))
def hex_1528027 : String := "404244410605084441064340054205050508420944410943404209440909090909"
theorem cover_1528027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1528027)
  decide +kernel
#print axioms cover_1528027

def state_1528062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
def hex_1528062 : String := "42440505444143400542050A050505"
theorem cover_1528062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1528062)
  decide +kernel
#print axioms cover_1528062

def state_1528078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 90 else (if j.val < 4 then 34 else 44)))
def hex_1528078 : String := "44414340420505424405054406064005420505054143400542054405050505"
theorem cover_1528078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1528078)
  decide +kernel
#print axioms cover_1528078

def state_1528110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 88)))
def hex_1528110 : String := "414340424441430505050544410A0541430A0505424406060640420544050542440805440841434005060505430605"
theorem cover_1528110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1528110)
  decide +kernel
#print axioms cover_1528110

def state_1528157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 89)))
def hex_1528157 : String := "41434042054405054244060544060640054205440505430505"
theorem cover_1528157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1528157)
  decide +kernel
#print axioms cover_1528157

def state_1528182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 35 else 44)))
def hex_1528182 : String := "404205054244050544414340054205440505050505"
theorem cover_1528182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1528182)
  decide +kernel
#print axioms cover_1528182

def state_1528203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 45)))
def hex_1528203 : String := "414340084244090707400809434005424405054441434005070505054005420505"
theorem cover_1528203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1528203)
  decide +kernel
#print axioms cover_1528203

def state_1528237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 22)))
def hex_1528237 : String := "4441090A41090A"
theorem cover_1528237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1528237)
  decide +kernel
#print axioms cover_1528237
end Mub6.Numerical.CircleFullD0.Forest
