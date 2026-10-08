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
def state_56141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_56141 : String := "4440074207074042080742434042414407080741440708074241444309074309400841440805054405050940074241440708070743094007420707"
theorem cover_56141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_56141)
  decide +kernel
#print axioms cover_56141

def state_56200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_56200 : String := "44074007420707"
theorem cover_56200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_56200)
  decide +kernel
#print axioms cover_56200

def state_56207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
def hex_56207 : String := "07"
theorem cover_56207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_56207)
  decide +kernel
#print axioms cover_56207

def state_56208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_56208 : String := "07"
theorem cover_56208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_56208)
  decide +kernel
#print axioms cover_56208

def state_56209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_56209 : String := "07"
theorem cover_56209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_56209)
  decide +kernel
#print axioms cover_56209

def state_56210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_56210 : String := "4143400842084443414008420844430A08080808084008084340084208444108070808"
theorem cover_56210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_56210)
  decide +kernel
#print axioms cover_56210

def state_56245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_56245 : String := "440741400842090907"
theorem cover_56245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_56245)
  decide +kernel
#print axioms cover_56245

def state_56254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_56254 : String := "43444142434407400743414244074007090707070707074142434044430A07064443410A0A4142080607084007440706430A0642434007440708070707"
theorem cover_56254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_56254)
  decide +kernel
#print axioms cover_56254

def state_56322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_56322 : String := "41420843080A420A43440A404108420843080A080A"
theorem cover_56322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_56322)
  decide +kernel
#print axioms cover_56322

def state_56344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
def hex_56344 : String := "4243404408410842094307090809434044084241064306060608404442080542090508"
theorem cover_56344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_56344)
  decide +kernel
#print axioms cover_56344
end Mub6.Numerical.CircleFullPrototype.Forest
