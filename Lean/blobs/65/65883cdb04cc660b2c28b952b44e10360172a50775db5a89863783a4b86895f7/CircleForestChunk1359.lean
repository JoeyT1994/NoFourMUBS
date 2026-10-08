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
def state_1626927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
def hex_1626927 : String := "424443410840080808434108400A420A0741080A44430706430708"
theorem cover_1626927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1626927)
  decide +kernel
#print axioms cover_1626927

def state_1626954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
def hex_1626954 : String := "424443410840420807420807084341400808404244084305080742050741084008084443070843074108400708"
theorem cover_1626954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1626954)
  decide +kernel
#print axioms cover_1626954

def state_1627000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
def hex_1627000 : String := "4244434140064244060A06060643410A0A0A06"
theorem cover_1627000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1627000)
  decide +kernel
#print axioms cover_1627000

def state_1627021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 108 else (if j.val < 4 then 98 else 70)))
def hex_1627021 : String := "4341404244430708430541080507424409050740424406050642050541404208064208084006420906"
theorem cover_1627021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1627021)
  decide +kernel
#print axioms cover_1627021

def state_1627062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 108 else (if j.val < 4 then 98 else 71)))
def hex_1627062 : String := "4341404244430505050705054140420A0A4244080544080A400A420505"
theorem cover_1627062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1627062)
  decide +kernel
#print axioms cover_1627062

def state_1627091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 109 else (if j.val < 4 then 98 else 35)))
def hex_1627091 : String := "4443070643074140064406424305080606"
theorem cover_1627091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1627091)
  decide +kernel
#print axioms cover_1627091

def state_1627108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 35)))
def hex_1627108 : String := "414042080842080840420A064244434108060643414008080A0A06"
theorem cover_1627108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1627108)
  decide +kernel
#print axioms cover_1627108

def state_1627135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 17)))
def hex_1627135 : String := "44064341070606"
theorem cover_1627135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1627135)
  decide +kernel
#print axioms cover_1627135
end Mub6.Numerical.CircleFullD0.Forest
