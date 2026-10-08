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
def state_1006297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 42)))
def hex_1006297 : String := "434140444209094209094442430707094243090809404405424305070544054207054140440943090944430907084044064342064109050607"
theorem cover_1006297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1006297)
  decide +kernel
#print axioms cover_1006297

def state_1006355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 43)))
def hex_1006355 : String := "434140440808084044420643414006070506420A4341400A080A0A4407084108400608"
theorem cover_1006355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1006355)
  decide +kernel
#print axioms cover_1006355

def state_1006392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 43)))
def hex_1006392 : String := "4044424309080942430908094442084309084208430608"
theorem cover_1006392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_1006392)
  decide +kernel
#print axioms cover_1006392

def state_1006416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 43)))
def hex_1006416 : String := "44424305414044060A44070805054243414044050A444208054208050541400A080A430541400944090905"
theorem cover_1006416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1006416)
  decide +kernel
#print axioms cover_1006416

def state_1006459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 43)))
def hex_1006459 : String := "4442434140050705074305410505424341404408080805410840440708074305414044430508080805"
theorem cover_1006459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1006459)
  decide +kernel
#print axioms cover_1006459
end Mub6.Numerical.CircleFullD0.Forest
