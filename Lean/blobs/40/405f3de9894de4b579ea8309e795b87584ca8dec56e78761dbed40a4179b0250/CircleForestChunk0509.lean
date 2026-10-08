import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_283674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 48)))
def hex_283674 : String := "42444041430942090A090A40070A444041430A420A4440D5060A4342090642094440060606410A0640410A430642074406060A"
theorem cover_283674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_283674)
  decide +kernel
#print axioms cover_283674

def state_283726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 48)))
def hex_283726 : String := "4440414342084440410809410805080843090841430A0505400808"
theorem cover_283726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_283726)
  decide +kernel
#print axioms cover_283726

def state_283756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 114) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 96)))
def hex_283756 : String := "43424440D5410A0540D50A4440D5410743060540D5410A43064208064244400805084440D505400808"
theorem cover_283756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_283756)
  decide +kernel
#print axioms cover_283756

def state_283797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 115) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 96)))
def hex_283797 : String := "43424440D505400743410A074108054440D50540D5430641424405060605424405400705440540D505"
theorem cover_283797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_283797)
  decide +kernel
#print axioms cover_283797

def state_283838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 96)))
def hex_283838 : String := "4143420A0A0505"
theorem cover_283838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_283838)
  decide +kernel
#print axioms cover_283838

def state_283845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 97)))
def hex_283845 : String := "404143420844404108430A080A08084342074440074306410806074207444007080741430A0843420A0608"
theorem cover_283845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_283845)
  decide +kernel
#print axioms cover_283845

def state_283888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 49)))
def hex_283888 : String := "41430A0843420740050A4207400808"
theorem cover_283888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_283888)
  decide +kernel
#print axioms cover_283888

def state_283903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 24)))
def hex_283903 : String := "44410A430A424044050805404405410A0505410A430A08"
theorem cover_283903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_283903)
  decide +kernel
#print axioms cover_283903
end Mub6.Numerical.CircleFullPrototype.Forest
