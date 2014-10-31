O_DIR      := Output
TEX_O      := --output-directory=$(O_DIR)
URMD       := $(wildcard *.pst.md)
PST_OPT    := --standalone --latex-engine=xelatex --no-tex-ligatures -f markdown
PST_TMPL   := Template/schreib-mal-wieder-template.tex
PST_NORMAL := Template/normal.tex
PST_DUPLEX := Template/duplex.tex


POSTKARTE          := $(patsubst %.pst.md,$(O_DIR)/%.pdf,$(URMD))
POSTKARTE_D        := $(patsubst %.pst.md,$(O_DIR)/%.duplex.pdf,$(URMD))
POSTKARTE_LANT     := $(patsubst %.pst.md,$(O_DIR)/%.lantern.pdf,$(URMD))
POSTKARTE_CATN     := $(patsubst %.pst.md,$(O_DIR)/%.cat-n-bat.pdf,$(URMD))
POSTKARTE_MOVM     := $(patsubst %.pst.md,$(O_DIR)/%.movember.pdf,$(URMD))
POSTKARTE_GLID     := $(patsubst %.pst.md,$(O_DIR)/%.glider.pdf,$(URMD))
POSTKARTE_UMBR     := $(patsubst %.pst.md,$(O_DIR)/%.umbrella.pdf,$(URMD))
POSTKARTE_HAND     := $(patsubst %.pst.md,$(O_DIR)/%.hand.pdf,$(URMD))
POSTKARTE_HERZ     := $(patsubst %.pst.md,$(O_DIR)/%.herz.pdf,$(URMD))
POSTKARTE_POWR     := $(patsubst %.pst.md,$(O_DIR)/%.power.pdf,$(URMD))
POSTKARTE_URKU     := $(patsubst %.pst.md,$(O_DIR)/%.urkugel.pdf,$(URMD))
POSTKARTE_URLA     := $(patsubst %.pst.md,$(O_DIR)/%.urlantern.pdf,$(URMD))
POSTKARTE_LANT_D   := $(patsubst %.pst.md,$(O_DIR)/%.lantern.duplex.pdf,$(URMD))
POSTKARTE_CATN_D   := $(patsubst %.pst.md,$(O_DIR)/%.cat-n-bat.duplex.pdf,$(URMD))
POSTKARTE_MOVM_D   := $(patsubst %.pst.md,$(O_DIR)/%.movember.duplex.pdf,$(URMD))
POSTKARTE_GLID_D   := $(patsubst %.pst.md,$(O_DIR)/%.glider.duplex.pdf,$(URMD))
POSTKARTE_UMBR_D   := $(patsubst %.pst.md,$(O_DIR)/%.umbrella.duplex.pdf,$(URMD))
POSTKARTE_HAND_D   := $(patsubst %.pst.md,$(O_DIR)/%.hand.duplex.pdf,$(URMD))
POSTKARTE_HERZ_D   := $(patsubst %.pst.md,$(O_DIR)/%.herz.duplex.pdf,$(URMD))
POSTKARTE_POWR_D   := $(patsubst %.pst.md,$(O_DIR)/%.power.duplex.pdf,$(URMD))
POSTKARTE_URKU_D   := $(patsubst %.pst.md,$(O_DIR)/%.urkugel.duplex.pdf,$(URMD))
POSTKARTE_URLA_D   := $(patsubst %.pst.md,$(O_DIR)/%.urlantern.duplex.pdf,$(URMD))

all : $(POSTKARTE) $(POSTKARTE_D)

postkarten-alle : \
	$(POSTKARTE_LANT) \
	$(POSTKARTE_CATN) \
	$(POSTKARTE_MOVM) \
	$(POSTKARTE_GLID) \
	$(POSTKARTE_UMBR) \
	$(POSTKARTE_HAND) \
	$(POSTKARTE_HERZ) \
	$(POSTKARTE_POWR) \
	$(POSTKARTE_URKU) \
	$(POSTKARTE_URLA) \
	$(POSTKARTE_LANT_D) \
	$(POSTKARTE_CATN_D) \
	$(POSTKARTE_MOVM_D) \
	$(POSTKARTE_GLID_D) \
	$(POSTKARTE_UMBR_D) \
	$(POSTKARTE_HAND_D) \
	$(POSTKARTE_HERZ_D) \
	$(POSTKARTE_POWR_D) \
	$(POSTKARTE_URKU_D) \
	$(POSTKARTE_URLA_D)
	
  
## POSTKARTE
$(O_DIR)/%.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	$< -o $@

## POSTKARTE_D
$(O_DIR)/%.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	$< -o $@

## POSTKARTE_LANT
$(O_DIR)/%.lantern.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=lantern \
	$< -o $@

## POSTKARTE_LANT_D
$(O_DIR)/%.lantern.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=lantern \
	$< -o $@

## POSTKARTE_CATN
$(O_DIR)/%.cat-n-bat.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=catandbat \
	$< -o $@

## POSTKARTE_CATN_D
$(O_DIR)/%.cat-n-bat.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=catandbat \
	$< -o $@

## POSTKARTE_MOVM
$(O_DIR)/%.movember.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=movember \
	$< -o $@

## POSTKARTE_MOVM_D
$(O_DIR)/%.movember.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=movember \
	$< -o $@

## POSTKARTE_GLID
$(O_DIR)/%.glider.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=glider \
	$< -o $@

## POSTKARTE_GLID_D
$(O_DIR)/%.glider.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=glider \
	$< -o $@

## POSTKARTE_UMBR
$(O_DIR)/%.umbrella.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=umbrella \
	$< -o $@

## POSTKARTE_UMBR_D
$(O_DIR)/%.umbrella.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=umbrella \
	$< -o $@

## POSTKARTE_HAND
$(O_DIR)/%.hand.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=hand \
	$< -o $@

## POSTKARTE_HAND_D
$(O_DIR)/%.hand.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=hand \
	$< -o $@

## POSTKARTE_HERZ
$(O_DIR)/%.herz.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=herz \
	$< -o $@

## POSTKARTE_HERZ_D
$(O_DIR)/%.herz.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=herz \
	$< -o $@

## POSTKARTE_POWR
$(O_DIR)/%.power.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=power \
	$< -o $@

## POSTKARTE_POWR_D
$(O_DIR)/%.power.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=power \
	$< -o $@

## POSTKARTE_URKU
$(O_DIR)/%.urkugel.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=urkugel \
	$< -o $@

## POSTKARTE_URKU_D
$(O_DIR)/%.urkugel.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=urkugel \
	$< -o $@

## POSTKARTE_URLA
$(O_DIR)/%.urlantern.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_NORMAL) \
	-VPstFigur=urlantern \
	$< -o $@

## POSTKARTE_URLA_D
$(O_DIR)/%.urlantern.duplex.pdf: %.pst.md
	@pandoc $(PST_OPT) --template=$(PST_TMPL) -B$(PST_DUPLEX) \
	-VPstFigur=urlantern \
	$< -o $@

clean : ;
	@-rm \
	$(POSTKARTE) \
	$(POSTKARTE_D)

clean-all : ;
	@-rm \
	$(POSTKARTE) \
	$(POSTKARTE_D) \
	$(POSTKARTE_LANT) \
	$(POSTKARTE_CATN) \
	$(POSTKARTE_MOVM) \
	$(POSTKARTE_GLID) \
	$(POSTKARTE_UMBR) \
	$(POSTKARTE_HAND) \
	$(POSTKARTE_HERZ) \
	$(POSTKARTE_POWR) \
	$(POSTKARTE_URKU) \
	$(POSTKARTE_URLA) \
	$(POSTKARTE_LANT_D) \
	$(POSTKARTE_CATN_D) \
	$(POSTKARTE_MOVM_D) \
	$(POSTKARTE_GLID_D) \
	$(POSTKARTE_UMBR_D) \
	$(POSTKARTE_HAND_D) \
	$(POSTKARTE_HERZ_D) \
	$(POSTKARTE_POWR_D) \
	$(POSTKARTE_URKU_D) \
	$(POSTKARTE_URLA_D)

rebuild-all : clean-all all
