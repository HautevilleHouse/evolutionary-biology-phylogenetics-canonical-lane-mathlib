import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesNames : List String
  branchLengths : List Float
  rooted : Bool
  treeShape : Type u
  distanceMatrix : Type v
  neighborJoiningApplied : Prop
  maximumParsimonyApplied : Prop

structure PhylogeneticTreeEvidence (T : PhylogeneticTreePackage) where
  speciesNamesNonempty : T.speciesNames ≠ []
  branchLengthsPositive : ∀ b ∈ T.branchLengths, b > 0
  treeShapeDerived : Prop
  distanceMatrixDerived : Prop
  neighborJoiningAppliedClosed : T.neighborJoiningApplied
  maximumParsimonyAppliedClosed : T.maximumParsimonyApplied

def PhylogeneticTreeClosed (T : PhylogeneticTreePackage) : Prop :=
  T.speciesNames ≠ [] ∧ (∀ b ∈ T.branchLengths, b > 0) ∧
  T.neighborJoiningApplied ∧ T.maximumParsimonyApplied

theorem phylogenetic_tree_closed_from_evidence (T : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence T) : PhylogeneticTreeClosed T := by
  exact And.intro E.speciesNamesNonempty (And.intro E.branchLengthsPositive (And.intro E.neighborJoiningAppliedClosed E.maximumParsimonyAppliedClosed))

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse