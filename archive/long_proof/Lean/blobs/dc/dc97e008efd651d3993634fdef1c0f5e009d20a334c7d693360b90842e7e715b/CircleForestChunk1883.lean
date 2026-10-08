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
def state_2324940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 251 else 177)))
def hex_2324940 : String := "4044424108084108080844420A4143404405080540080A4340440A080A0A420808"
theorem cover_2324940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2324940)
  decide +kernel
#print axioms cover_2324940

def state_2324973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
def hex_2324973 : String := "44420A4105434044050A0540440A0A0A420A4143054044050A054340440A0A0A0A"
theorem cover_2324973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2324973)
  decide +kernel
#print axioms cover_2324973

def state_2325007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
def hex_2325007 : String := "404442414309070609424143064044094208080A0641430940094406060644420606420606"
theorem cover_2325007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2325007)
  decide +kernel
#print axioms cover_2325007

def state_2325046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 176)))
def hex_2325046 : String := "42074143400944074207090707"
theorem cover_2325046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2325046)
  decide +kernel
#print axioms cover_2325046

def state_2325060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 172 else (if j.val < 4 then 125 else 177)))
def hex_2325060 : String := "4143404407080A0707"
theorem cover_2325060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2325060)
  decide +kernel
#print axioms cover_2325060

def state_2325069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 177)))
def hex_2325069 : String := "41434044090844420A41430940090A06420A4143400806080640444207410807084442074143404409080A0A4309074208084340090640074407420508"
theorem cover_2325069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2325069)
  decide +kernel
#print axioms cover_2325069

def state_2325130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
def hex_2325130 : String := "44420A414340440A0A060A06420A414340440A0A060A06"
theorem cover_2325130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2325130)
  decide +kernel
#print axioms cover_2325130

def state_2325155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 124 else 88)))
def hex_2325155 : String := "40444241054305400905054241074307404409070707440507"
theorem cover_2325155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2325155)
  decide +kernel
#print axioms cover_2325155

def state_2325184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 228) else (if j.val < 3 then 174 else (if j.val < 4 then 125 else 176)))
def hex_2325184 : String := "43054044050605"
theorem cover_2325184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2325184)
  decide +kernel
#print axioms cover_2325184
end Mub6.Numerical.CircleFullD0.Forest
