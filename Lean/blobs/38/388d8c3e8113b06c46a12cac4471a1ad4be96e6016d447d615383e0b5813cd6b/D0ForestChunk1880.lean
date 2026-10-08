import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2324239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 173 else (if j.val < 4 then 124 else 177)))
def hex_2324239 : String := "4143404409084442050507400844424105084105080843094008440908"
theorem cover_2324239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2324239)
  decide +kernel
#print axioms cover_2324239

def state_2324269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
def hex_2324269 : String := "44420741060708"
theorem cover_2324269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2324269)
  decide +kernel
#print axioms cover_2324269

def state_2324277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 176)))
def hex_2324277 : String := "4241434006440742060606074143400644420605420606064340094409420909400644074207410607"
theorem cover_2324277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2324277)
  decide +kernel
#print axioms cover_2324277

def state_2324318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 177)))
def hex_2324318 : String := "42414340064442060608064308084143400644060806434008444208080808"
theorem cover_2324318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2324318)
  decide +kernel
#print axioms cover_2324318

def state_2324349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
def hex_2324349 : String := "43400944094209094007440742074143080807"
theorem cover_2324349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324349 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2324349)
  decide +kernel
#print axioms cover_2324349

def state_2324370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 124 else 88)))
def hex_2324370 : String := "4044090A44424143054009050909424143074008074309090A"
theorem cover_2324370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2324370)
  decide +kernel
#print axioms cover_2324370

def state_2324395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
def hex_2324395 : String := "40444206060844424143400644050606430940064409420606410A0A424143400644060606434008444208080808410A0A"
theorem cover_2324395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2324395)
  decide +kernel
#print axioms cover_2324395

def state_2324444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
def hex_2324444 : String := "43094009440942414309080909"
theorem cover_2324444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2324444)
  decide +kernel
#print axioms cover_2324444
end Mub6.Numerical.CircleFullD0.Forest
