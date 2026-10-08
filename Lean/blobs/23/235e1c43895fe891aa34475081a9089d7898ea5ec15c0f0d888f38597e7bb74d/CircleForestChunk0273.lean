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
def state_140971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 29)))
def hex_140971 : String := "41440642430505434041420543054406054243050943084406090640090644424306064308404106080642434008070943404142080808414206080740090A"
theorem cover_140971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140971 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_140971)
  decide +kernel
#print axioms cover_140971

def state_141034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 14)))
def hex_141034 : String := "44400808404144420808094408094144420808420A43080A4408420708"
theorem cover_141034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_141034)
  decide +kernel
#print axioms cover_141034

def state_141063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 14)))
def hex_141063 : String := "41444043410644060941060906400943414406090A09440A0A"
theorem cover_141063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_141063)
  decide +kernel
#print axioms cover_141063

def state_141088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 15)))
def hex_141088 : String := "4009420943414440094142054344400505050942094344400941420543050507090909444009414209434407070942094307090909"
theorem cover_141088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 53) (hex := hex_141088)
  decide +kernel
#print axioms cover_141088

def state_141141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
def hex_141141 : String := "4440420A43440506440506420A43440841400808080A40064209434144400607060609"
theorem cover_141141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_141141)
  decide +kernel
#print axioms cover_141141

def state_141176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
def hex_141176 : String := "414440094342094144400906090A09094440090A09"
theorem cover_141176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_141176)
  decide +kernel
#print axioms cover_141176

def state_141199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_141199 : String := "400844054142080808"
theorem cover_141199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_141199)
  decide +kernel
#print axioms cover_141199

def state_141209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_141209 : String := "4142430A444006410A06060606"
theorem cover_141209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_141209)
  decide +kernel
#print axioms cover_141209

def state_141225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 7)))
def hex_141225 : String := "0A"
theorem cover_141225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_141225)
  decide +kernel
#print axioms cover_141225
end Mub6.Numerical.CircleFullPrototype.Forest
