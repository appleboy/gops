GO ?= go
GOFILES := $(shell find . -name "*.go" -type f)
PACKAGES ?= $(shell $(GO) list ./...)

build: $(GOFILES)
	$(GO) build -o bin/gops .

test:
	$(GO) test -v $(PACKAGES)

clean:
	rm -rf gorm.db bin
