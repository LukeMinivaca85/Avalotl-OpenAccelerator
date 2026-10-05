.PHONY: help init status hbm gt2n openroad

help:
	@echo "Avalotl OpenAccelerator"
	@echo ""
	@echo "make init      - initialize all dependencies"
	@echo "make status    - show dependency revisions"
	@echo "make hbm       - show OpenHBM tree"
	@echo "make gt2n      - show GT2N tree"
	@echo "make openroad  - verify OpenROAD source"

init:
	git submodule update --init --recursive

status:
	git submodule status --recursive

hbm:
	@echo "OpenHBM:"
	@ls external/OpenHBM

gt2n:
	@echo "GT2N:"
	@ls external/GT2N

openroad:
	@echo "OpenROAD:"
	@ls external/OpenROAD
