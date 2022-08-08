#!/bin/bash

authconfig --enablereqlower --enablerequpper --enablereqdigit --enablereqother --passminlen=12 --passmaxrepeat=3 --update

sed -i '/pam_pwquality.so/ s/$/ enforce_for_root/' /etc/pam.d/system-auth
