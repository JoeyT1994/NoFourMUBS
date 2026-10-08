import FourierPilotCircleTree001703
import FourierPilotCircleTree001712
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001702
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 60, 54, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001703.state FourierPilotCircleTree001712.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001703.covered FourierPilotCircleTree001712.covered
#print axioms covered
end FourierPilotCircleTree001702
