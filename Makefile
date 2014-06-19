

compile:
	@cd v1; go build

test: compile
	@cd v1; go test
