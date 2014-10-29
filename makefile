O_DIR      := Output
TEX_O      := --output-directory=$(O_DIR)
URMD       := $(wildcard *.pst.md)
PST_OPT    := --standalone --latex-engine=xelatex --no-tex-ligatures -f markdown
PST_TMPL   := Template/schreib-mal-wieder-template.tex

POSTKARTE       := $(patsubst %.pst.md,$(O_DIR)/%.pdf,$(URMD))
POSTKARTE_LANT  := $(patsubst %.pst.md,$(O_DIR)/%.lantern.pdf,$(URMD))
POSTKARTE_CATN  := $(patsubst %.pst.md,$(O_DIR)/%.cat-n-bat.pdf,$(URMD))
POSTKARTE_MOVM  := $(patsubst %.pst.md,$(O_DIR)/%.movember.pdf,$(URMD))
POSTKARTE_GLID  := $(patsubst %.pst.md,$(O_DIR)/%.glider.pdf,$(URMD))
POSTKARTE_UMBR  := $(patsubst %.pst.md,$(O_DIR)/%.umbrella.pdf,$(URMD))
POSTKARTE_HAND  := $(patsubst %.pst.md,$(O_DIR)/%.hand.pdf,$(URMD))
POSTKARTE_HERZ  := $(patsubst %.pst.md,$(O_DIR)/%.herz.pdf,$(URMD))
POSTKARTE_POWR  := $(patsubst %.pst.md,$(O_DIR)/%.power.pdf,$(URMD))
POSTKARTE_URKU  := $(patsubst %.pst.md,$(O_DIR)/%.urkugel.pdf,$(URMD))
POSTKARTE_URLA  := $(patsubst %.pst.md,$(O_DIR)/%.urlantern.pdf,$(URMD))

all : $(POSTKARTE)

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
	$(POSTKARTE_URLA)
	
  
## POSTKARTE
$(O_DIR)/%.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	$< -o $@

## POSTKARTE_LANT
$(O_DIR)/%.lantern.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=lantern \
	$< -o $@

## POSTKARTE_CATN
$(O_DIR)/%.cat-n-bat.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=catandbat \
	$< -o $@

## POSTKARTE_MOVM
$(O_DIR)/%.movember.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=movember \
	$< -o $@

## POSTKARTE_GLID
$(O_DIR)/%.glider.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=glider \
	$< -o $@

## POSTKARTE_UMBR
$(O_DIR)/%.umbrella.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=umbrella \
	$< -o $@

## POSTKARTE_HAND
$(O_DIR)/%.hand.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=hand \
	$< -o $@

## POSTKARTE_HERZ
$(O_DIR)/%.herz.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=herz \
	$< -o $@

## POSTKARTE_POWR
$(O_DIR)/%.power.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=power \
	$< -o $@

## POSTKARTE_URKU
$(O_DIR)/%.urkugel.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=urkugel \
	$< -o $@

## POSTKARTE_URLA
$(O_DIR)/%.urlantern.pdf: %.pst.md
	@pandoc $(PST_OPT) \
	--template=$(PST_TMPL) \
	-VPstFigur=urlantern \
	$< -o $@

clean : ;
	@-rm \
	$(POSTKARTE)

clean-all : ;
	@-rm \
	$(POSTKARTE) \
	$(POSTKARTE_LANT) \
	$(POSTKARTE_CATN) \
	$(POSTKARTE_MOVM) \
	$(POSTKARTE_GLID) \
	$(POSTKARTE_UMBR) \
	$(POSTKARTE_HAND) \
	$(POSTKARTE_HERZ) \
	$(POSTKARTE_POWR) \
	$(POSTKARTE_URKU) \
	$(POSTKARTE_URLA)

rebuild-all : clean-all all
