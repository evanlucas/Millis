NAME = Millis
SCHEME ?= Millis
BUILDTYPE ?= Debug
DDPATH ?= ./out
XCODEBUILD ?= xcodebuild
XCRUN ?= xcrun
USE_COLOR ?= true
INTER_PATH ?= $(DDPATH)/Build/Intermediates
PROFDATA_PATH ?= $(INTER_PATH)/CodeCoverage/$(NAME)/Coverage.profdata
EXE_PATH ?= $(INTER_PATH)/CodeCoverage/$(NAME)/Products/$(BUILDTYPE)/$(NAME).framework/$(NAME)

all: test cover

build:
	set -o pipefail && $(XCODEBUILD) -scheme $(SCHEME) -sdk macosx | xcpretty

test:
	set -o pipefail && $(XCODEBUILD) -scheme $(SCHEME) test -sdk macosx -enableCodeCoverage YES -derivedDataPath $(DDPATH) | xcpretty

cover:
	$(XCRUN) llvm-cov report -use-color=$(USE_COLOR) -instr-profile $(PROFDATA_PATH) $(EXE_PATH)

.PHONY: all
