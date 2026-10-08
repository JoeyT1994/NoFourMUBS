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
def state_1046581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
def hex_1046581 : String := "42084044434106424044434106420906410842080643410642050608440606064108420840444208060806434108420806084443060808"
theorem cover_1046581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1046581)
  decide +kernel
#print axioms cover_1046581

def state_1046637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_1046637 : String := "4044434142074044070807070843410842074044430707080808440908"
theorem cover_1046637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1046637)
  decide +kernel
#print axioms cover_1046637

def state_1046669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
def hex_1046669 : String := "42414044094342414044090508094140440906060942084108090909414044430909430642410609060640440943090909"
theorem cover_1046669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1046669)
  decide +kernel
#print axioms cover_1046669

def state_1046718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 24)))
def hex_1046718 : String := "42414044090808074140444209094243410809084306410609440942080640440942090909"
theorem cover_1046718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1046718)
  decide +kernel
#print axioms cover_1046718

def state_1046758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
def hex_1046758 : String := "404443420841084044434209060808440606080808"
theorem cover_1046758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1046758)
  decide +kernel
#print axioms cover_1046758

def state_1046781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 50)))
def hex_1046781 : String := "43424140440708070741404409434241080941404409080609080940440943090709420741084044070707"
theorem cover_1046781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1046781)
  decide +kernel
#print axioms cover_1046781
end Mub6.Numerical.CircleFullD0.Forest
