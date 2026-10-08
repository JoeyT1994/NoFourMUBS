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
def state_2296044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
def hex_2296044 : String := "43420744410A07410A0942070A"
theorem cover_2296044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2296044)
  decide +kernel
#print axioms cover_2296044

def state_2296058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 106 else 91)))
def hex_2296058 : String := "42444108074140430842070A084007094441404308090809414043080A084009430609"
theorem cover_2296058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2296058)
  decide +kernel
#print axioms cover_2296058

def state_2296093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 107 else 91)))
def hex_2296093 : String := "424441400743070707414007434207440841080742070A074441400A43424408090A0A40070941400A4342440A0A0A0A400A4342090942070A"
theorem cover_2296093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2296093)
  decide +kernel
#print axioms cover_2296093

def state_2296150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
def hex_2296150 : String := "4007434207094207440709"
theorem cover_2296150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2296150)
  decide +kernel
#print axioms cover_2296150

def state_2296161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
def hex_2296161 : String := "430907"
theorem cover_2296161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2296161)
  decide +kernel
#print axioms cover_2296161

def state_2296166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
def hex_2296166 : String := "08"
theorem cover_2296166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2296166)
  decide +kernel
#print axioms cover_2296166

def state_2296168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 45)))
def hex_2296168 : String := "444041080708404143064207444108074108070606"
theorem cover_2296168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2296168)
  decide +kernel
#print axioms cover_2296168

def state_2296190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 90)))
def hex_2296190 : String := "4041430842440841080944054108400905430909410543054206440506"
theorem cover_2296190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2296190)
  decide +kernel
#print axioms cover_2296190

def state_2296222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 106 else 91)))
def hex_2296222 : String := "08"
theorem cover_2296222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2296222)
  decide +kernel
#print axioms cover_2296222

def state_2296224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 70 else (if j.val < 4 then 107 else 91)))
def hex_2296224 : String := "4441084007084140430842440741080744410840070841084043070508084043060706"
theorem cover_2296224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2296224)
  decide +kernel
#print axioms cover_2296224

def state_2296260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 182)))
def hex_2296260 : String := "4140430842440841084009084441050941080A08404309094308C4"
theorem cover_2296260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2296260)
  decide +kernel
#print axioms cover_2296260
end Mub6.Numerical.CircleFullD0.Forest
