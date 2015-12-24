#!/bin/sh
# Profile loader. Used to shorten the command for loading the profile.

## Variables
gh_profile_link='https://raw.githubusercontent.com/cPLevey/supportbashprofile/master/cpsupport.profile';
tmp_profile_location='/tmp/cpsupport.profile';

## Perform Functions
# Download the profile to /tmp
curl -ks "$gh_profile_link" > "$tmp_profile_location";

# Source if not empty
if [ -s "$tmp_profile_location" ]; then
	source "$tmp_profile_location";
	echo "cpSupport Profile Sourced.";
fi

# Remove profile from /tmp
if [ -f "tmp_profile_location" ]; then 
	/bin/rm -f "$tmp_profile_location";
	echo "Removed $tmp_profile_location";
	echo "";
fi