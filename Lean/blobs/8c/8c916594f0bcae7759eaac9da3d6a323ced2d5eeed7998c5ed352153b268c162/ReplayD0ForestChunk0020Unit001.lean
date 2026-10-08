import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1485820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
def hex_1485820 : String := "424106400806414043420644410540050605060640434208444140084342060A064008434244414008430906400843420844410A0508080844410A400A430A42440707070A420844410808080808434206444106404342444106404309060606444140430A060640434209070743090606420606060606"
theorem cover_1485820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 119) (hex := hex_1485820)
  decide +kernel
#print axioms cover_1485820

def state_1485939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 13)))
def hex_1485939 : String := "444241060541404407060640440708440A064206410608"
theorem cover_1485939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1485939)
  decide +kernel
#print axioms cover_1485939

def state_1485962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
def hex_1485962 : String := "43444241060A414043444206080606064043440A420641064043080606440A06430A06420606440A06"
theorem cover_1485962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1485962)
  decide +kernel
#print axioms cover_1485962

def state_1486003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1486003 : String := "42054043444142054043440542054140434405420509054344054205414007070505050543440542054140434405420541070505434405420541070505054405050541424008430505404342410808414440434208410844400605080843424144050805414440430A08434244050A0742440507070A44054008430A08420841444008430705084405080844404342054144050805054305050808434241440506054144404342414405060541444043424405070707434209070740430942060A0644054043424109050A42054107054309420507424144050605414440070706440540080643420941094405094206410644050640434206440906060644400505404342410805414440430A080908440540080942084108084309420506424106054144404342054106050506064405400806420540434142054405400843410805050505434142054405050505440541420540084205410605054344414205404344054205414043080508050A0A05414206404342094109440506420641064405060942054043050505440A410605"
theorem cover_1486003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 401) (hex := hex_1486003)
  decide +kernel
#print axioms cover_1486003

def state_1486404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1486404 : String := "4344414243080A0842050841094205430840444108050908440A414206404309060642054043440A090A0A"
theorem cover_1486404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1486404)
  decide +kernel
#print axioms cover_1486404

def state_1486447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1486447 : String := "4043414209444043094209444105400A0905090542444043094107080906444043410942094440430A410A4244400A09090A09094142094440430A42080A0909424440434107440707080909444043414244400A09090A4244404342070608430942074109440507400709444006430A410A42440509060A414208444008430A08084208444043410806084341424405080A4244050844050A410842054405084008430A084309410942094440434109420544050941420544050905090940430A080909404309410642060A09414206444043420644410640060606060606424440080606444043414208444008434206444106400806060606420844400843414208444008090642084440434108050505400809080808434106420644404309060606060609"
theorem cover_1486447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 295) (hex := hex_1486447)
  decide +kernel
#print axioms cover_1486447

def state_1486742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1486742 : String := "4440440A414206434044420507060606420543404405050A050A4041060606"
theorem cover_1486742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1486742)
  decide +kernel
#print axioms cover_1486742


end Mub6.Numerical.CircleFullD0.Forest
