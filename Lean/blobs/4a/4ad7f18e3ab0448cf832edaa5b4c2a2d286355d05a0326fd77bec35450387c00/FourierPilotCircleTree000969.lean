import FourierPilotCircleTree000970
import FourierPilotCircleTree000975
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000969
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 49, 55, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000970.state FourierPilotCircleTree000975.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000970.covered FourierPilotCircleTree000975.covered
#print axioms covered
end FourierPilotCircleTree000969
