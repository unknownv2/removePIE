CSNAME="iPhone Developer"

GCC_BIN=`xcrun --sdk iphoneos --find gcc`
GCC_UNIVERSAL=$(GCC_BASE) -arch armv7 -arch armv7s -arch arm64
SDK=`xcrun --sdk iphoneos --show-sdk-path`

CFLAGS = 
GCC_BASE = $(GCC_BIN) -Os $(CFLAGS) -Wimplicit -isysroot $(SDK) -F$(SDK)/System/Library/Frameworks -F$(SDK)/System/Library/PrivateFrameworks

all: removePIE

removePIE: removePIE.o 
	$(GCC_UNIVERSAL) -o $@ $^
	

%.o: %.c
	$(GCC_UNIVERSAL) -c -o $@ $< 
	codesign -f -s $(CSNAME) --entitlements removePIE.xcent $@

clean:
	rm -rf *.o *.dSYM removePIE

