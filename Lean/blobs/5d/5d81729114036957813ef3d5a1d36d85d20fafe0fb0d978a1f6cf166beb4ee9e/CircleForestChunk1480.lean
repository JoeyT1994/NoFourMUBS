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
def state_1655850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 21)))
def hex_1655850 : String := "4442410540434405050507410540054344050805424140440508064044430805080841084044050808"
theorem cover_1655850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_1655850)
  decide +kernel
#print axioms cover_1655850

def state_1655891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1655891 : String := "4308440708"
theorem cover_1655891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1655891)
  decide +kernel
#print axioms cover_1655891

def state_1655900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
def hex_1655900 : String := "4140430844420641400506404308440505080806404308444241404306440706064043084407080641404308444207080808080808"
theorem cover_1655900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1655900)
  decide +kernel
#print axioms cover_1655900

def state_1655953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 42)))
def hex_1655953 : String := "41404308444241400508404308050808080808"
theorem cover_1655953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1655953)
  decide +kernel
#print axioms cover_1655953

def state_1655972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 43)))
def hex_1655972 : String := "08"
theorem cover_1655972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1655972)
  decide +kernel
#print axioms cover_1655972

def state_1655976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1655976 : String := "4043444207054241074043060706414005074043080508074344070707"
theorem cover_1655976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1655976)
  decide +kernel
#print axioms cover_1655976

def state_1656005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1656005 : String := "40434442074140434405070507404344070807074241404308070740430807074140430844050708084407074344070807"
theorem cover_1656005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1656005)
  decide +kernel
#print axioms cover_1656005

def state_1656055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 42)))
def hex_1656055 : String := "40434405424105080805434442074105080807"
theorem cover_1656055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1656055)
  decide +kernel
#print axioms cover_1656055
end Mub6.Numerical.CircleFullD0.Forest
