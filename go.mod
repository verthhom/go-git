module github.com/go-git/go-git/v5

go 1.22

require (
	github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5
	github.com/emirpasic/gods v1.18.1
	github.com/gliderlabs/ssh v0.3.7
	github.com/go-git/gcfg v1.5.1-0.20230307220236-3a3c6141e376
	github.com/go-git/go-billy/v5 v5.5.0
	github.com/go-git/go-git-fixtures/v4 v4.3.2-0.20231010084843-55a94097c399
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99
	github.com/kevinburke/ssh_config v1.2.0
	github.com/pjbgf/sha1cd v0.3.0
	github.com/sergi/go-diff v1.3.2-0.20230802143309-a5c7d04e1d70
	github.com/skeema/knownhosts v1.2.1
	github.com/xanzy/ssh-agent v0.3.3
	golang.org/x/crypto v0.24.0
	golang.org/x/net v0.26.0
	golang.org/x/text v0.16.0
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c
)

require (
	github.com/anmitsu/go-shlex v0.0.0-20200514113438-38f4b401e2be // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	golang.org/x/sys v0.21.0 // indirect
	gopkg.in/warnings.v0 v0.1.2 // indirect
)

// Personal fork - bumped minimum Go version to 1.22 for range-over-int support
// and general improvements in the toolchain.
// Bumped golang.org/x/crypto and golang.org/x/net to pick up security patches.
// 2024-04-: bumped crypto to v0.22.0, net to v0.24.0, sys to v0.19.0 (latest patch releases).
// 2024-05-: bumped crypto to v0.23.0, net to v0.25.0, text to v0.15.0, sys to v0.20.0.
// 2024-06-: bumped crypto to v0.24.0, net to v0.26.0, text to v0.16.0, sys to v0.21.0.
//
// NOTE: golang.org/x/text is listed as a direct dependency here even though upstream
// treats it as indirect. I use it directly in a few local experiments for Unicode
// normalization of author names, so keeping it explicit makes the intent clear.
//
// TODO: rogpeppe/go-internal is only needed transitively via go-git-fixtures; keep
// an eye on whether it can be dropped once fixtures are updated or replaced with
// lighter-weight test data. Pinning a note here so I don't forget next time I
// audit indirect deps.
//
// NOTE: github.com/emirpasic/gods is used for the underlying tree/list data structures
// in the object storage layer. Worth watching for a v2 release - the current v1 API
// lacks generics support which leads to a fair amount of type-asserting in the codebase.
// Tracked upstream issue: https://github.com/emirpasic/gods/issues/47
