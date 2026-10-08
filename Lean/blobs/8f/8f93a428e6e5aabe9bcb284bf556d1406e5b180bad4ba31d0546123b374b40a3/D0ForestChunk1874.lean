import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2322767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
def hex_2322767 : String := "444207094241430908074143090809"
theorem cover_2322767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2322767)
  decide +kernel
#print axioms cover_2322767

def state_2322783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 176)))
def hex_2322783 : String := "42414340070A070741430940094405420A0509"
theorem cover_2322783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2322783)
  decide +kernel
#print axioms cover_2322783

def state_2322802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 177)))
def hex_2322802 : String := "4241434044090A0A0A43090741434044090944420505420A0940444209090844420A410509420A41080843094009440909"
theorem cover_2322802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322802 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2322802)
  decide +kernel
#print axioms cover_2322802

def state_2322851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 115) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
def hex_2322851 : String := "43094007440709"
theorem cover_2322851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2322851)
  decide +kernel
#print axioms cover_2322851

def state_2322859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 89)))
def hex_2322859 : String := "41434044420841080808440A0A40080A4340090640050A"
theorem cover_2322859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2322859)
  decide +kernel
#print axioms cover_2322859

def state_2322883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 89)))
def hex_2322883 : String := "434044424108080908444241430640080A06414307400844420605060642080840084442414340080A080A4143400844420808080843080808"
theorem cover_2322883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2322883)
  decide +kernel
#print axioms cover_2322883

def state_2322940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 115) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 89)))
def hex_2322940 : String := "43400906400844424108060908"
theorem cover_2322940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2322940)
  decide +kernel
#print axioms cover_2322940

def state_2322954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 88)))
def hex_2322954 : String := "420A41434044420605420606064044420A410543060A420A41430A0A0A0A43064044060606"
theorem cover_2322954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2322954)
  decide +kernel
#print axioms cover_2322954

def state_2322991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 89)))
def hex_2322991 : String := "420A4143404442060606064044420A41430A0A0A420A4107060A06"
theorem cover_2322991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2322991)
  decide +kernel
#print axioms cover_2322991
end Mub6.Numerical.CircleFullD0.Forest
