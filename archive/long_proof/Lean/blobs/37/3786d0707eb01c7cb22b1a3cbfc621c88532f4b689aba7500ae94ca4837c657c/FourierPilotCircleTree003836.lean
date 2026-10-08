import FourierPilotCircleTree003837
import FourierPilotCircleTree003838
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003836
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 27, 31, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003837.state FourierPilotCircleTree003838.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003837.covered FourierPilotCircleTree003838.covered
#print axioms covered
end FourierPilotCircleTree003836
