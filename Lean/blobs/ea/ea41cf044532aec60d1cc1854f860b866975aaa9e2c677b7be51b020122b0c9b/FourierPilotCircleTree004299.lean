import FourierPilotCircleTree004300
import FourierPilotCircleTree004301
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004299
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![20, 15, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004300.state FourierPilotCircleTree004301.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004300.covered FourierPilotCircleTree004301.covered
#print axioms covered
end FourierPilotCircleTree004299
