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
def state_1566758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1566758 : String := "4144404306420A0606404307420A0543050A440640430642060606"
theorem cover_1566758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_1566758)
  decide +kernel
#print axioms cover_1566758

def state_1566787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 23)))
def hex_1566787 : String := "41444042070707074440424341070A414440424307050707074440054205064005074307410744400A0607424306410706074042070707"
theorem cover_1566787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1566787)
  decide +kernel
#print axioms cover_1566787

def state_1566843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 23)))
def hex_1566843 : String := "444042434109444008090909434107444008070741064440060908420943070940420843070609"
theorem cover_1566843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1566843)
  decide +kernel
#print axioms cover_1566843

def state_1566885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 46)))
def hex_1566885 : String := "4341444005094005090505"
theorem cover_1566885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1566885)
  decide +kernel
#print axioms cover_1566885

def state_1566896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 46)))
def hex_1566896 : String := "4341444042430808430708424307090740080744404205430A0542054341070541440505054042054307054205074144404308050940080905"
theorem cover_1566896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1566896)
  decide +kernel
#print axioms cover_1566896

def state_1566953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 46)))
def hex_1566953 : String := "420943414440070707444042430605060640070609"
theorem cover_1566953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1566953)
  decide +kernel
#print axioms cover_1566953

def state_1566974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 47)))
def hex_1566974 : String := "4042434109050543410744400807074108054209430709"
theorem cover_1566974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1566974)
  decide +kernel
#print axioms cover_1566974

def state_1566998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 23)))
def hex_1566998 : String := "410744404207070707"
theorem cover_1566998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1566998)
  decide +kernel
#print axioms cover_1566998
end Mub6.Numerical.CircleFullD0.Forest
