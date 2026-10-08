import FourierPilotCircleTree003806
import FourierPilotCircleTree003807
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003805
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 13, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003806.state FourierPilotCircleTree003807.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003806.covered FourierPilotCircleTree003807.covered
#print axioms covered
end FourierPilotCircleTree003805
