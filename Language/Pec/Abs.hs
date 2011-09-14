module Language.Pec.Abs where

-- Haskell module generated by the BNF converter


newtype Frac = Frac String deriving (Eq,Ord,Show)
newtype Uident = Uident String deriving (Eq,Ord,Show)
newtype Lident = Lident String deriving (Eq,Ord,Show)
newtype USym = USym String deriving (Eq,Ord,Show)
newtype Number = Number String deriving (Eq,Ord,Show)
newtype Count = Count String deriving (Eq,Ord,Show)
data Module =
   Module Modid ExportDecl [TopDecl]
  deriving (Eq,Ord,Show)

data ExportDecl =
   ExpAllD
 | ExpListD [Export]
  deriving (Eq,Ord,Show)

data Export =
   TypeEx Con Spec
 | VarEx Var
  deriving (Eq,Ord,Show)

data Spec =
   Neither
 | Decon
 | Both
  deriving (Eq,Ord,Show)

data TopDecl =
   ImportD Modid AsSpec
 | ExternD ExtNm Var Type
 | TypeD Con [TyVar] TyDecl
 | AscribeD Var Type
 | VarD Var Exp
 | ProcD Var [Exp] Exp
  deriving (Eq,Ord,Show)

data AsSpec =
   AsAS Con
 | EmptyAS
  deriving (Eq,Ord,Show)

data ExtNm =
   SomeNm String
 | NoneNm
  deriving (Eq,Ord,Show)

data Exp =
   BlockE [Exp]
 | LetS Exp Exp
 | LetE Exp Exp Exp
 | StoreE Exp Exp
 | CaseE Exp [CaseAlt]
 | BranchE [BranchAlt]
 | BinOpE Exp USym Exp
 | AppE Exp Exp
 | UnOpE UnOp Exp
 | IdxE Exp Exp
 | FldE Exp Field
 | ArrayE [Exp]
 | RecordE [FieldD]
 | TupleE [Exp]
 | AscribeE Exp Type
 | CountE Count
 | VarE Var
 | LitE Lit
  deriving (Eq,Ord,Show)

data UnOp =
   Load
  deriving (Eq,Ord,Show)

data CaseAlt =
   CaseAlt CasePat Exp
  deriving (Eq,Ord,Show)

data CasePat =
   ConP Con Var
 | LitP Lit
 | VarP Var
  deriving (Eq,Ord,Show)

data BranchAlt =
   BranchAlt BranchPat Exp
  deriving (Eq,Ord,Show)

data BranchPat =
   BoolBP Exp
 | DefaultBP
  deriving (Eq,Ord,Show)

data Type =
   TyFun Type Type
 | TyArray Type Type
 | TyConstr Con [Type]
 | TyTuple [Type]
 | TyCount Count
 | TyVarT TyVar
 | TyConstr0 Con
  deriving (Eq,Ord,Show)

data TyDecl =
   TyRecord [FieldT]
 | TyTagged [ConC]
 | TySyn Type
  deriving (Eq,Ord,Show)

data ConC =
   ConC Con [Type]
  deriving (Eq,Ord,Show)

data FieldT =
   FieldT Field Type
  deriving (Eq,Ord,Show)

data Lit =
   CharL Char
 | StringL String
 | IntL Number
 | FracL Frac
 | EnumL Con
  deriving (Eq,Ord,Show)

data FieldD =
   FieldD Field Exp
  deriving (Eq,Ord,Show)

data Var =
   Var Lident
  deriving (Eq,Ord,Show)

data Con =
   Con Uident
  deriving (Eq,Ord,Show)

data Modid =
   Modid Uident
  deriving (Eq,Ord,Show)

data Field =
   Field Lident
  deriving (Eq,Ord,Show)

data TyVar =
   VarTV Lident
 | CntTV Lident
  deriving (Eq,Ord,Show)
