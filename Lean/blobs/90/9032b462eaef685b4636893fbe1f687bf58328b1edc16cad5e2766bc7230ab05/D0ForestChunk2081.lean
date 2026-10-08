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
def state_2579932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 190 else (if j.val < 4 then 195 else 74)))
def hex_2579932 : String := "40054106440608"
theorem cover_2579932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2579932)
  decide +kernel
#print axioms cover_2579932

def state_2579939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 191 else (if j.val < 4 then 97 else 74)))
def hex_2579939 : String := "4340054106440642430A050505"
theorem cover_2579939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2579939)
  decide +kernel
#print axioms cover_2579939

def state_2579953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 190 else (if j.val < 4 then 97 else 75)))
def hex_2579953 : String := "434041094409094144080844420843400A0808084005410808"
theorem cover_2579953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2579953)
  decide +kernel
#print axioms cover_2579953

def state_2579978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 191 else (if j.val < 4 then 97 else 75)))
def hex_2579978 : String := "4340410505414442434005060505424340050805054442430A0505424340050805054005410505"
theorem cover_2579978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2579978)
  decide +kernel
#print axioms cover_2579978

def state_2580020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
def hex_2580020 : String := "40414407430642060A0A41440743424006050A42404144070606414407430542050A0A400A0A0A"
theorem cover_2580020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_2580020)
  decide +kernel
#print axioms cover_2580020

def state_2580060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2580060 : String := "41444243400707090742094340050A050A"
theorem cover_2580060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2580060)
  decide +kernel
#print axioms cover_2580060

def state_2580079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 72)))
def hex_2580079 : String := "424340070740414407090A4144064208060A4307400707"
theorem cover_2580079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2580079)
  decide +kernel
#print axioms cover_2580079

def state_2580103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 188 else (if j.val < 4 then 97 else 73)))
def hex_2580103 : String := "43404144430709090A414443420807420807080A404109094108440A08"
theorem cover_2580103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2580103)
  decide +kernel
#print axioms cover_2580103

def state_2580132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 189 else (if j.val < 4 then 97 else 73)))
def hex_2580132 : String := "43404144070A0A41440742430A400A080A0A404144420505090A414442430706064208430A060A"
theorem cover_2580132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2580132)
  decide +kernel
#print axioms cover_2580132

def state_2580171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 79) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2580171 : String := "0A"
theorem cover_2580171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2580171)
  decide +kernel
#print axioms cover_2580171
end Mub6.Numerical.CircleFullD0.Forest
