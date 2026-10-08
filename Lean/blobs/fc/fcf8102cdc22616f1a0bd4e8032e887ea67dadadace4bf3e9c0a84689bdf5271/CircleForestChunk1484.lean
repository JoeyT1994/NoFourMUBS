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
def state_1656778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 209 else 82)))
def hex_1656778 : String := "4442414043440642A006064344094208080940060941400643440606060642414043084406080840430806084140060808"
theorem cover_1656778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1656778)
  decide +kernel
#print axioms cover_1656778

def state_1656827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1656827 : String := "430844420941090908"
theorem cover_1656827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1656827)
  decide +kernel
#print axioms cover_1656827

def state_1656836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 201) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1656836 : String := "404344420808084442414006090606084305440908"
theorem cover_1656836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1656836)
  decide +kernel
#print axioms cover_1656836

def state_1656857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 82)))
def hex_1656857 : String := "414043444241400608060608440606430844424140060840060806084043080608"
theorem cover_1656857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1656857)
  decide +kernel
#print axioms cover_1656857

def state_1656890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 83)))
def hex_1656890 : String := "08"
theorem cover_1656890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1656890)
  decide +kernel
#print axioms cover_1656890

def state_1656892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 82)))
def hex_1656892 : String := "424140434406424140060906060643440942090909400609414006434406424140060806060606"
theorem cover_1656892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1656892)
  decide +kernel
#print axioms cover_1656892

def state_1656931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 83)))
def hex_1656931 : String := "42414043444241404308060808080844064241400608060643084442070908404308060841400608400608"
theorem cover_1656931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1656931)
  decide +kernel
#print axioms cover_1656931

def state_1656974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1656974 : String := "430844420941090908"
theorem cover_1656974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656974 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1656974)
  decide +kernel
#print axioms cover_1656974

def state_1656983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1656983 : String := "4043444241404305440606050541400608060844424140060906064241404308060808064305440908"
theorem cover_1656983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1656983)
  decide +kernel
#print axioms cover_1656983
end Mub6.Numerical.CircleFullD0.Forest
