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
def state_1655614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 63 else (if j.val < 4 then 52 else 41)))
def hex_1655614 : String := "414043090543444241050808084405054043440608064308444241400505060608"
theorem cover_1655614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1655614)
  decide +kernel
#print axioms cover_1655614

def state_1655647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 53 else 20)))
def hex_1655647 : String := "44054241054005434442090542410540060741050605410506"
theorem cover_1655647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1655647)
  decide +kernel
#print axioms cover_1655647

def state_1655675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
def hex_1655675 : String := "4140430A0A0A404344090A0909"
theorem cover_1655675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1655675)
  decide +kernel
#print axioms cover_1655675

def state_1655688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 63 else (if j.val < 4 then 52 else 40)))
def hex_1655688 : String := "414043440A0A4405050A40434442094140430A05090942410A4043080908414043084405060840430806084409420941400509064344090809"
theorem cover_1655688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1655688)
  decide +kernel
#print axioms cover_1655688

def state_1655745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 41)))
def hex_1655745 : String := "4241404308440A0808404308444209410A0808084140430844420A41050808084043080808"
theorem cover_1655745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1655745)
  decide +kernel
#print axioms cover_1655745

def state_1655782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 53 else 20)))
def hex_1655782 : String := "4442090942414007074043440742070807074140434405050507404344420906084405054344070707"
theorem cover_1655782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1655782)
  decide +kernel
#print axioms cover_1655782

def state_1655827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 21)))
def hex_1655827 : String := "44424106404306440A0606414009084043084405080808"
theorem cover_1655827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1655827)
  decide +kernel
#print axioms cover_1655827
end Mub6.Numerical.CircleFullD0.Forest
