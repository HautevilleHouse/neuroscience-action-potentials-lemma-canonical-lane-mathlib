import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure NeuralFieldDynamicsPackage where
  firingRateField : Type u
  synapticConnectivity : Type v
  wavePropagation : Type w
  bifurcationAnalysis : Prop
  patternFormation : Prop
  meanFieldReduction : Prop

structure NeuralFieldDynamicsEvidence (N : NeuralFieldDynamicsPackage) where
  bifurcationAnalysisClosed : N.bifurcationAnalysis
  patternFormationClosed : N.patternFormation
  meanFieldReductionClosed : N.meanFieldReduction

def NeuralFieldDynamicsClosed (N : NeuralFieldDynamicsPackage) : Prop :=
  N.bifurcationAnalysis ∧ N.patternFormation ∧ N.meanFieldReduction

theorem neural_field_dynamics_closed_from_evidence (N : NeuralFieldDynamicsPackage)
    (E : NeuralFieldDynamicsEvidence N) : NeuralFieldDynamicsClosed N := by
  exact And.intro E.bifurcationAnalysisClosed
    (And.intro E.patternFormationClosed E.meanFieldReductionClosed)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse