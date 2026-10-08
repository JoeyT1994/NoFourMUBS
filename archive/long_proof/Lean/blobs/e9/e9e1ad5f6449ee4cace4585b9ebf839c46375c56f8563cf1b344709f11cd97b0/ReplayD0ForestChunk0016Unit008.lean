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
def state_1341845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1341845 : String := "444105424306050541424344074041440542070544420705420805410744074207434044074107420743400507050707074344054005410542444340050705434005444107420709414207054243404406410506060743400509050505054243444041420605060640444142084340054405080508414208430805084441420643060706414243060743404406080640440741050807420643060844400507404344410508080543440741070807434440054241430605060940424441050A410543080505424441434042060506054306064143404442410506054241434005440508050841050A444206410906424143060606414340440642060506050A40054442070542410543060505430A404405420805440642060A44414309050A4143400542440941090909050A44054005424344054105050505"
theorem cover_1341845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 313) (hex := hex_1341845)
  decide +kernel
#print axioms cover_1341845

def state_1342158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1342158 : String := "424306084344064206440640074143060A06444206094243440608440808434440410A06060A444041050509404142080508414243440641400544060606440508430A0542080A"
theorem cover_1342158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 71) (hex := hex_1342158)
  decide +kernel
#print axioms cover_1342158

def state_1342230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1342230 : String := "41424308444041430805430844420705054108430844084208054005410543080543444008414208444341050705050808444005410542080505424344080A444043440841080A4441424009080842404308090808414209400508420940430844080508430844080940430A41050909430844404243084408050A420843084408054005420805"
theorem cover_1342230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 135) (hex := hex_1342230)
  decide +kernel
#print axioms cover_1342230

def state_1342367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1342367 : String := "4308444143444008070807430844400807094143080609"
theorem cover_1342367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1342367)
  decide +kernel
#print axioms cover_1342367

def state_1342394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 6)))
def hex_1342394 : String := "44404308414442084008434144420806060841054442080505080843414442084043080A0A08084144420A4340410A4442080A080A40410A4442070A0A0A4208430A404106080A4442084340084441420543050A0508404441420843084005440708080844414207430A07420643064008064142080A0842084308084008430808"
theorem cover_1342394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342394 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 129) (hex := hex_1342394)
  decide +kernel
#print axioms cover_1342394

def state_1342525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 12)))
def hex_1342525 : String := "43414244400643064106444208060606064208074142444005434106444206050605060542444005434441420807070805400543060544400543070506"
theorem cover_1342525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1342525)
  decide +kernel
#print axioms cover_1342525

def state_1342587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 12)))
def hex_1342587 : String := "4142444043410A0741440A0644424043070A0A074208064305410A44050A40060A444006090642444043054407070540070707"
theorem cover_1342587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1342587)
  decide +kernel
#print axioms cover_1342587


end Mub6.Numerical.CircleFullD0.Forest
