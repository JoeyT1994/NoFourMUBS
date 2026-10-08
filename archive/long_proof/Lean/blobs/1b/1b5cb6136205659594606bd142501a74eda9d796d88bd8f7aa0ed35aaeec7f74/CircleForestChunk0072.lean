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
def state_17153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 9)))
def hex_17153 : String := "414442090542414409084440430509094043080A43080941084405084405424441400543050905414043050543424405080542440941090A0A400543050505"
theorem cover_17153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_17153)
  decide +kernel
#print axioms cover_17153

def state_17216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 9)))
def hex_17216 : String := "41440A0A440A4243440A0A0A0A"
theorem cover_17216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_17216)
  decide +kernel
#print axioms cover_17216

def state_17229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
def hex_17229 : String := "42440707440540054305440541424305070505"
theorem cover_17229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_17229)
  decide +kernel
#print axioms cover_17229

def state_17248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 4)))
def hex_17248 : String := "414244074340064142060A070644080A08"
theorem cover_17248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_17248)
  decide +kernel
#print axioms cover_17248

def state_17266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_17266 : String := "43444142064043440A06064344410605060642404309064344420605060640430544050643054405060606"
theorem cover_17266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_17266)
  decide +kernel
#print axioms cover_17266

def state_17314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_17314 : String := "434441064206400641064206060606"
theorem cover_17314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_17314)
  decide +kernel
#print axioms cover_17314

def state_17332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
def hex_17332 : String := "420641084240064308064006430806"
theorem cover_17332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_17332)
  decide +kernel
#print axioms cover_17332

def state_17348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 20)))
def hex_17348 : String := "4207414006434407060640064344070606"
theorem cover_17348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_17348)
  decide +kernel
#print axioms cover_17348

def state_17366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 58) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_17366 : String := "42400643444142400607084207404308064308070606404308064344410840080808444106400644070606"
theorem cover_17366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_17366)
  decide +kernel
#print axioms cover_17366
end Mub6.Numerical.CircleFullPrototype.Forest
