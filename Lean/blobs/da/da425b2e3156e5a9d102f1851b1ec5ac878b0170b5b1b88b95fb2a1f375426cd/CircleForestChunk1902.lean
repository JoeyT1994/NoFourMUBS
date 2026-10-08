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
def state_2329497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
def hex_2329497 : String := "4143070A4344424043440641064006070A07074240434144070744404243440A0505064209074042050A09410A440A050707440A420A0A"
theorem cover_2329497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_2329497)
  decide +kernel
#print axioms cover_2329497

def state_2329554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_2329554 : String := "43420944060A0A"
theorem cover_2329554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2329554)
  decide +kernel
#print axioms cover_2329554

def state_2329561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_2329561 : String := "4342444005434109050505444043410642050641060543410A424440050A0544060A410A42050840434142050A050543410A05054205440A05"
theorem cover_2329561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2329561)
  decide +kernel
#print axioms cover_2329561

def state_2329618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_2329618 : String := "4143420907094342440909444043410742440707070A074043410742050A09074209440A09"
theorem cover_2329618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2329618)
  decide +kernel
#print axioms cover_2329618

def state_2329655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
def hex_2329655 : String := "440A400A0A"
theorem cover_2329655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2329655)
  decide +kernel
#print axioms cover_2329655

def state_2329660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_2329660 : String := "43444006074041420A06424344064043410A4244080508410A08434107420A070A44060A4344060A0841074243440707070744060A"
theorem cover_2329660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_2329660)
  decide +kernel
#print axioms cover_2329660

def state_2329717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
def hex_2329717 : String := "434408414240054344080505080808"
theorem cover_2329717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2329717)
  decide +kernel
#print axioms cover_2329717
end Mub6.Numerical.CircleFullD0.Forest
