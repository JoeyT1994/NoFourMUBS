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
def state_6736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 17)))
def hex_6736 : String := "4441094042434408080909424308090841404208080840424443084108404244080808084308410840420508084443080943084108400708420808"
theorem cover_6736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_6736)
  decide +kernel
#print axioms cover_6736

def state_6795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 17)))
def hex_6795 : String := "4409414009094042434441099A41059A44090543440941099A0942434441069A064406064344090809"
theorem cover_6795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_6795)
  decide +kernel
#print axioms cover_6795

def state_6836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 17)))
def hex_6836 : String := "434409410840424408070642080844094109400909"
theorem cover_6836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_6836)
  decide +kernel
#print axioms cover_6836

def state_6857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_6857 : String := "4243440808440941064042064308440906064344050844094108400908"
theorem cover_6857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_6857)
  decide +kernel
#print axioms cover_6857

def state_6889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 8)))
def hex_6889 : String := "44420A400641430544050A050A"
theorem cover_6889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_6889)
  decide +kernel
#print axioms cover_6889

def state_6903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 16)))
def hex_6903 : String := "424041430A44074207080A4107074041430644094208060641434442070642400A07400641430607064407424041070707404109064107074306440608"
theorem cover_6903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_6903)
  decide +kernel
#print axioms cover_6903

def state_6965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 17)))
def hex_6965 : String := "400A0A"
theorem cover_6965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_6965)
  decide +kernel
#print axioms cover_6965

def state_6969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_6969 : String := "414344420A060A444205400541050605430608"
theorem cover_6969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_6969)
  decide +kernel
#print axioms cover_6969
end Mub6.Numerical.CircleFullPrototype.Forest
