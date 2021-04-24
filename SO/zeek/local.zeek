##! Local site policy.
@load cve-2020-0601
@load frameworks/files/detect-MHR
@load frameworks/files/hash-all-files
@load frameworks/software/version-changes
@load frameworks/software/vulnerable
@load hassh
@load intel
@load ja3
@load misc/capture-loss
@load misc/loaded-scripts
@load misc/stats
@load policy/frameworks/notice/extend-email/hostnames
@load protocols/conn/known-hosts
@load protocols/conn/known-services
@load protocols/dns/detect-external-names
@load protocols/ftp/detect
@load protocols/ftp/software
@load protocols/http/detect-sqli
@load protocols/http/software
@load protocols/smtp/software
@load protocols/ssh/detect-bruteforcing
@load protocols/ssh/geo-data
@load protocols/ssh/interesting-hostnames
@load protocols/ssh/software
@load protocols/ssl/known-certs
@load protocols/ssl/log-hostcerts-only
@load protocols/ssl/validate-certs
@load securityonion/bpfconf
@load securityonion/communityid
@load securityonion/file-extraction
@load tuning/defaults
@load-sigs frameworks/signatures/detect-windows-shells
redef CaptureLoss::watch_interval = 5 mins;
redef LogAscii::json_timestamps = JSON::TS_ISO8601;
redef LogAscii::use_json = T;