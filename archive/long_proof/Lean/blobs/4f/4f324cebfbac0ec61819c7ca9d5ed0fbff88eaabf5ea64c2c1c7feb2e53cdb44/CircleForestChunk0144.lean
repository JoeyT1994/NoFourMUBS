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
def state_972011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 55)))
def hex_972011 : String := "4142434440050A0505430A440505424344404109090905054344094041090709444041420508090905"
theorem cover_972011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_972011)
  decide +kernel
#print axioms cover_972011

def state_972053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 38 else 27)))
def hex_972053 : String := "4409400609"
theorem cover_972053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_972053)
  decide +kernel
#print axioms cover_972053

def state_972058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 39 else 27)))
def hex_972058 : String := "44404142080809094041424344060644400808054306444006080642430744400709070741424309444009090A430944090A42430944094041420509090909"
theorem cover_972058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_972058)
  decide +kernel
#print axioms cover_972058

def state_972121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 27)))
def hex_972121 : String := "4142430A44070A430944090A424309440940410A42430906090A430944094041090909"
theorem cover_972121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_972121)
  decide +kernel
#print axioms cover_972121

def state_972156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 9 else 27)))
def hex_972156 : String := "4309404143064244404106080906064309424409404106070909410909"
theorem cover_972156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_972156)
  decide +kernel
#print axioms cover_972156

def state_972185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 13)))
def hex_972185 : String := "4305404106440506414409064405430542404106050505"
theorem cover_972185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_972185)
  decide +kernel
#print axioms cover_972185

def state_972209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
def hex_972209 : String := "09"
theorem cover_972209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_972209)
  decide +kernel
#print axioms cover_972209

def state_972212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 13)))
def hex_972212 : String := "05"
theorem cover_972212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_972212)
  decide +kernel
#print axioms cover_972212

def state_972214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
def hex_972214 : String := "41444243050A0542430740074142434440070907440A074307440A074243070A0707440907"
theorem cover_972214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_972214)
  decide +kernel
#print axioms cover_972214

def state_972253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 26)))
def hex_972253 : String := "09"
theorem cover_972253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_972253)
  decide +kernel
#print axioms cover_972253

def state_972256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 18 else 27)))
def hex_972256 : String := "09"
theorem cover_972256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_972256)
  decide +kernel
#print axioms cover_972256

def state_972261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 56 else (if j.val < 4 then 38 else 27)))
def hex_972261 : String := "4409400709"
theorem cover_972261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_972261)
  decide +kernel
#print axioms cover_972261

def state_972267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 54)))
def hex_972267 : String := "40414208080909"
theorem cover_972267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_972267)
  decide +kernel
#print axioms cover_972267
end Mub6.Numerical.CircleFullD0.Forest
