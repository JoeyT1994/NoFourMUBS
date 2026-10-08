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
def state_1589618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1589618 : String := "42434440410842050805404142050805054440414244070508420544080805404142050842054305050543440808440808"
theorem cover_1589618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1589618)
  decide +kernel
#print axioms cover_1589618

def state_1589668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 26)))
def hex_1589668 : String := "434405054440414205440505050505"
theorem cover_1589668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1589668)
  decide +kernel
#print axioms cover_1589668

def state_1589683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 26)))
def hex_1589683 : String := "43444041424305050842050A0540414205080505444041424408080842440505444308084305050840414243050508420543050505"
theorem cover_1589683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1589683)
  decide +kernel
#print axioms cover_1589683

def state_1589736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 27)))
def hex_1589736 : String := "4142434009054009054340440806084006084243050543404405050540444106050605"
theorem cover_1589736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_1589736)
  decide +kernel
#print axioms cover_1589736

def state_1589773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1589773 : String := "4244404341420708420A44400A08080A430707404341060606430505444043080608400608"
theorem cover_1589773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1589773)
  decide +kernel
#print axioms cover_1589773

def state_1589811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 26)))
def hex_1589811 : String := "444043414205444043050A050505410A0A43050540430541060505"
theorem cover_1589811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1589811)
  decide +kernel
#print axioms cover_1589811
end Mub6.Numerical.CircleFullD0.Forest
