alias keep-screen-on="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias keep-screen-off="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias shrtct-sshd-start="sshd -p 10000; echo 'sshd -p 10,000: done'"
alias shrtct-sshd-stop="pkill -9 sshd; echo 'pkill -9 sshd: Done'"
