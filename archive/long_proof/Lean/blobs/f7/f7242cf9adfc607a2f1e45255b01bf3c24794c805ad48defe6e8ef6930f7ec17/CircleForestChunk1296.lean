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
def state_1611613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
def hex_1611613 : String := "42414344050605434440054241050505400642410643444005070606060605"
theorem cover_1611613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1611613)
  decide +kernel
#print axioms cover_1611613

def state_1611644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
def hex_1611644 : String := "42414344400507084440050740060843444042070507404241070741084307060744404241050705074042410609064207410707410843440508440506"
theorem cover_1611644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1611644)
  decide +kernel
#print axioms cover_1611644

def state_1611705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 63 else 49)))
def hex_1611705 : String := "44400542410505054006424143444005420705060643444006424107070540064209060606"
theorem cover_1611705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1611705)
  decide +kernel
#print axioms cover_1611705

def state_1611744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 98)))
def hex_1611744 : String := "40424143440540050505080542414307440740420705070941054344050909"
theorem cover_1611744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1611744)
  decide +kernel
#print axioms cover_1611744

def state_1611776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
def hex_1611776 : String := "424143444042410508054209410505404241060606420941060944400542090540064209060941434405060543444005420905400642090606"
theorem cover_1611776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1611776)
  decide +kernel
#print axioms cover_1611776
end Mub6.Numerical.CircleFullD0.Forest
