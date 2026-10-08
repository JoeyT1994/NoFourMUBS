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
def state_1517989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
def hex_1517989 : String := "4142434440064142430506060605444006414243090909420906400A410A424344090544094009410A090A430644060A424306440640064142430609060606"
theorem cover_1517989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1517989)
  decide +kernel
#print axioms cover_1517989

def state_1518055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 15)))
def hex_1518055 : String := "444041424307070708084005410508"
theorem cover_1518055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1518055)
  decide +kernel
#print axioms cover_1518055

def state_1518071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 30)))
def hex_1518071 : String := "40414243440707440707074243440740090744074009070741074243070707"
theorem cover_1518071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1518071)
  decide +kernel
#print axioms cover_1518071

def state_1518104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
def hex_1518104 : String := "424344400A07054440410707070A07"
theorem cover_1518104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1518104)
  decide +kernel
#print axioms cover_1518104

def state_1518119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
def hex_1518119 : String := "4243444041424305070509410707054440414209070941070740410A424309090941424307070742434407054407410740070707430707"
theorem cover_1518119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1518119)
  decide +kernel
#print axioms cover_1518119

def state_1518174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
def hex_1518174 : String := "41424307440740070607424344074107074407410740070707"
theorem cover_1518174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1518174)
  decide +kernel
#print axioms cover_1518174

def state_1518199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 15)))
def hex_1518199 : String := "4307440707"
theorem cover_1518199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1518199)
  decide +kernel
#print axioms cover_1518199

def state_1518206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 15)))
def hex_1518206 : String := "08"
theorem cover_1518206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1518206)
  decide +kernel
#print axioms cover_1518206

def state_1518208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 30)))
def hex_1518208 : String := "4140424309090608400908"
theorem cover_1518208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1518208)
  decide +kernel
#print axioms cover_1518208
end Mub6.Numerical.CircleFullD0.Forest
