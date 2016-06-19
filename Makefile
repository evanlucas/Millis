build:
	swift build

test:
	swift test

cover:
	swift build -Xswiftc -profile-generate -Xswiftc -profile-coverage-mapping
	swift test
	xcrun llvm-profdata merge -o testprof.profdata default.profraw
	xcrun llvm-cov report -instr-profile testprof.profdata .build/debug/MillisTests.xctest/Contents/MacOS/MillisTests

clean:
	rm -rf .build/ default.profraw testprof.profdata
