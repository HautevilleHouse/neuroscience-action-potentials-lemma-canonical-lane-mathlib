import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure PlasticityMechanismsPackage where
  mechanismTypes : List String
  calciumDynamics : ℝ → ℝ
  signalingPathways : String → Prop
  structuralChange : String → String → Prop
  longTermDepression : Prop
  longTermPotentiation : Prop

structure PlasticityMechanismsEvidence (P : PlasticityMechanismsPackage) where
  mechanismsNonEmpty : P.mechanismTypes ≠ []
  ltpOrLtd : P.longTermPotentiation ∨ P.longTermDepression

def PlasticityMechanismsClosed (P : PlasticityMechanismsPackage) : Prop :=
  P.mechanismTypes ≠ [] ∧ (P.longTermPotentiation ∨ P.longTermDepression)

theorem plasticity_mechanisms_closed_from_evidence (P : PlasticityMechanismsPackage) (E : PlasticityMechanismsEvidence P) :
    PlasticityMechanismsClosed P :=
  And.intro E.mechanismsNonEmpty E.ltpOrLtd

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse