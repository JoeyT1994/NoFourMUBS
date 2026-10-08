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
def state_1504660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
def hex_1504660 : String := "41424443400505054340414244050607420544050741420607420507404108050544074307074244054340414205050505054443050543400707400505"
theorem cover_1504660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1504660)
  decide +kernel
#print axioms cover_1504660

def state_1504721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
def hex_1504721 : String := "4142440543060544070742054405430705"
theorem cover_1504721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1504721)
  decide +kernel
#print axioms cover_1504721

def state_1504740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1504740 : String := "424344400843410A42080A080A08430A44400842080A08"
theorem cover_1504740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1504740)
  decide +kernel
#print axioms cover_1504740

def state_1504767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1504767 : String := "410843420844400641084306080808"
theorem cover_1504767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1504767)
  decide +kernel
#print axioms cover_1504767

def state_1504783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1504783 : String := "434244400843410608080844400A430A410A42080A0A08"
theorem cover_1504783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1504783)
  decide +kernel
#print axioms cover_1504783

def state_1504808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 30)))
def hex_1504808 : String := "44400841434208444008434108080808084342074440410807884007880808"
theorem cover_1504808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1504808)
  decide +kernel
#print axioms cover_1504808

def state_1504841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1504841 : String := "414342444008430A08050A084342444006414306080608064208440608"
theorem cover_1504841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1504841)
  decide +kernel
#print axioms cover_1504841

def state_1504872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
def hex_1504872 : String := "42444043410A444208060A410808434144424008430A080A0A88414442080A0888400A430A0844400A430A0A05"
theorem cover_1504872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1504872)
  decide +kernel
#print axioms cover_1504872
end Mub6.Numerical.CircleFullD0.Forest
